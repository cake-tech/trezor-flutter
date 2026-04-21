import 'dart:convert';

import 'package:flutter/foundation.dart';
import "package:pointycastle/export.dart";
import 'package:trezor_flutter/src/utils/hex_utils.dart';
import 'package:trezor_flutter/src/utils/random_bytes.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

import '../trezor/protobuf/messages-thp.pb.dart';

Uint8List getProtocolName() =>
    Uint8List.fromList([...utf8.encode("Noise_XX_25519_AESGCM_SHA256"), ...Uint8List(4)]);

// SHA-256(protocol_name || device_properties).
Uint8List getHandshakeHash(Uint8List deviceProperties) =>
    hashOfTwo(getProtocolName(), deviceProperties);

Uint8List hashOfTwo(Uint8List chunk1, Uint8List chunk2) {
  final d = SHA256Digest()
    ..update(chunk1, 0, chunk1.length)
    ..update(chunk2, 0, chunk2.length);

  final hash = Uint8List(d.digestSize);
  d.doFinal(hash, 0);
  return hash;
}

Uint8List hmacSha256(Uint8List hmacKey, Uint8List data) {
  final hmac = HMac(SHA256Digest(), 64)..init(KeyParameter(hmacKey));
  return hmac.process(data);
}

List<Uint8List> hkdf(Uint8List chainingKey, Uint8List input) {
  final tempKey = hmacSha256(chainingKey, input);
  final output1 = hmacSha256(tempKey, Uint8List.fromList([0x01]));

  final ctxOutput2 = HMac(SHA256Digest(), 64)
    ..init(KeyParameter(tempKey))
    ..update(output1, 0, output1.length)
    ..update(Uint8List.fromList([0x02]), 0, 1);

  final output2 = Uint8List(ctxOutput2.macSize);
  ctxOutput2.doFinal(output2, 0);

  return [output1, output2];
}

Uint8List getIvFromNonce(int nonce) {
  final nonceBytes = Uint8List(8);
  for (var i = 0; i < 8; i++) {
    nonceBytes[7 - i] = nonce & 0xff;
    nonce = nonce >> 8;
  }
  return Uint8List.fromList([0, 0, 0, 0, ...nonceBytes]);
}

BigInt bigEndianBytesToBigInt(Uint8List bytes) {
  var bigInt = BigInt.zero;
  for (final byte in bytes) {
    bigInt = bigInt << 8;
    bigInt |= BigInt.from(byte);
  }
  return bigInt;
}

KeyPair getCpaceHostKeys(String code, Uint8List handshakeHash) {
  // If the user enters code, take the following actions:
  // 2. Compute *pregenerator* as the first 32 bytes of SHA-512(*prefix* || *code* - 6 bytes || *padding || h*), where *prefix* is the byte-string  0x08 || 0x43 || 0x50 || 0x61 || 0x63 || 0x65 || 0x32 || 0x35 || 0x35 || 0x06 and *padding* is the byte-string 0x50 || 0x00 ^ 80 || 0x20.
  // 3. Set *generator =* ELLIGATOR2(*pregenerator*).
  // 4. Generate a random 32-byte *cpace_host_private_key.*
  // 5. Set *cpace_host_public_key* = X25519(*cpace_host_private_key*, *generator*).
  // 6. Send the message CodeEntryCpaceHost(*cpace_host_public_key*) to the host.

  final codeBytes = ascii.encode(code);
  final shaCtx = SHA512Digest()
    ..update(
        Uint8List.fromList([0x08, 0x43, 0x50, 0x61, 0x63, 0x65, 0x32, 0x35, 0x35, 0x06]), 0, 10)
    ..update(codeBytes, 0, codeBytes.length)
    ..update(Uint8List.fromList([0x6f, ...Uint8List(111), 0x20]), 0, 113)
    ..update(handshakeHash, 0, handshakeHash.length)
    ..update(Uint8List.fromList([0x00]), 0, 1);

  final sha = Uint8List(shaCtx.digestSize);
  shaCtx.doFinal(sha, 0);

  final generator = elligator2(sha.sublist(0, 32));

  final privateKey = randomBytes(32);
  final publicKey = curve25519(privateKey, generator);

  return KeyPair(publicKey: publicKey, privateKey: privateKey);
}

// 1. Set *shared_secret* = X25519(*cpace_host_private_key*, *cpace_trezor_public_key*).
// 2. Set *tag* = SHA-256(*shared_secret*).
Uint8List getSharedSecret(Uint8List publicKey, Uint8List privateKey) =>
    SHA256Digest().process(curve25519(privateKey, publicKey));

void validateCodeEntryTag(ThpHandshakeCredentials credentials, String value, Uint8List secretBytes) {
  // 1. Assert that handshake commitment = SHA-256(secret)
  final sha = SHA256Digest().process(secretBytes);

  if (!listEquals(sha, credentials.handshakeCommitment!)) {
    throw Exception(
        'HP5: commitment mismatch ${hex.encode(credentials.handshakeCommitment!)} != ${hex.encode(sha)}');
  }

  // 2. Assert that value = SHA-256(ThpPairingMethod.CodeEntry || h || secret || challenge) % 1000000
  final shaCtx = SHA256Digest()
    ..update(Uint8List.fromList([ThpPairingMethod.CodeEntry.value]), 0, 1)
    ..update(credentials.handshakeHash!, 0, credentials.handshakeHash!.length)
    ..update(secretBytes, 0, secretBytes.length)
    ..update(credentials.codeEntryChallenge!, 0, credentials.codeEntryChallenge!.length);

  final calculatedValueSha = Uint8List(shaCtx.digestSize);
  shaCtx.doFinal(calculatedValueSha, 0);

  final calculatedValue = bigEndianBytesToBigInt(calculatedValueSha) % BigInt.from(1000000);
  if (calculatedValue != BigInt.parse(value)) {
    throw Exception('HP5: code mismatch $value != ${calculatedValue.toString()}');
  }
}
