import 'package:flutter/foundation.dart';
import 'package:trezor_flutter/src/operations/trezor/thp_handshake_init_operation.dart';
import 'package:trezor_flutter/src/trezor/crypto/aesgcm.dart';
import 'package:trezor_flutter/src/trezor/protobuf/messages-thp.pb.dart';
import 'package:trezor_flutter/src/trezor/protocol/v2/state.dart';
import 'package:trezor_flutter/src/utils/hex_utils.dart';
import 'package:trezor_flutter/src/utils/curve25519.dart';
import 'package:trezor_flutter/src/utils/paring.dart';
import 'package:trezor_flutter/src/utils/random_bytes.dart';

List<ThpCredentials> findKnownPairingCredentials(
  List<ThpCredentials> knownCredentials,
  Uint8List trezorMaskedStaticPubkey,
  Uint8List trezorEphemeralPubkey,
) =>
    knownCredentials.where((c) {
      final trezorStaticPubkey = Uint8List.fromList(hex.decode(c.trezorStaticPublicKey));
      // X25519(SHA-256(trezor_static_pubkey || trezor_ephemeral_pubkey), trezor_static_pubkey).
      final h = hashOfTwo(trezorStaticPubkey, trezorEphemeralPubkey);

      return listEquals(trezorMaskedStaticPubkey, curve25519(h, trezorStaticPubkey));
    }).toList();

HandshakeCredentials handleHandshakeInit({
  required ThpHandshakeInitResponse handshakeInitResponse,
  required ThpState thpState,
  required List<ThpCredentials> knownCredentials,
  required KeyPair hostEphemeralKeys,
  required int tryToUnlock,
}) {
  if (thpState.handshakeCredentials == null) {
    throw Exception('ThpStateMissing');
  }

  final iv0 = getIvFromNonce(thpState.sendNonce); // should be 0
  final iv1 = getIvFromNonce(thpState.recvNonce); // should be 1

  // 1. Set h = SHA-256(protocol_name || device_properties).
  // h = hash_of_two(PROTOCOL_NAME, deviceProperties); // moved to getHandshakeHash
  var h = thpState.handshakeCredentials!.handshakeHash!;
  // 2. Set h = SHA-256(h || host_ephemeral_pubkey).
  h = hashOfTwo(h, hostEphemeralKeys.publicKey);
  // 3. Set h = SHA-256(h || try_to_unlock).
  h = hashOfTwo(h, Uint8List.fromList([tryToUnlock]));
  // 4. Set h = SHA-256(h || trezor_ephemeral_pubkey).
  h = hashOfTwo(h, handshakeInitResponse.trezorEphemeralPubkey);
  // 5. Set ck, k = HKDF(protocol_name, X25519(host_ephemeral_privkey, trezor_ephemeral_pubkey)).
  var point = curve25519(hostEphemeralKeys.privateKey, handshakeInitResponse.trezorEphemeralPubkey);
  var [ck, k] = hkdf(getProtocolName(), point);

  // 6. Set trezor_masked_static_pubkey, success = AES-GCM-DECRYPT(key=k, IV=0^96 (bits, 12 bytes), ad=h, plaintext=encrypted_trezor_static_pubkey). Assert that success is True.
  var aes = AesGcm(k, iv0)..auth(h);
  final trezorStaticPubkey = handshakeInitResponse.trezorEncryptedStaticPubkey.sublist(0, 32);
  final trezorStaticPubkeyTag =
      handshakeInitResponse.trezorEncryptedStaticPubkey.sublist(32, 32 + 16);
  final trezorMaskedStaticPubkey = aes.decrypt(trezorStaticPubkey, trezorStaticPubkeyTag);
  // 7. Set h = SHA-256(h || encrypted_trezor_static_pubkey)
  h = hashOfTwo(h, handshakeInitResponse.trezorEncryptedStaticPubkey);
  // 8. Set ck, k = HKDF(ck, X25519(host_ephemeral_privkey, trezor_masked_static_pubkey))
  point = curve25519(hostEphemeralKeys.privateKey, trezorMaskedStaticPubkey);
  [ck, k] = hkdf(ck, point);

  // 9. Set tag_of_empty_string, success = AES-GCM-DECRYPT(key=k, IV=0^96 (bits, 12 bytes), ad=h, plaintext=empty_string). Assert that success is True.
  aes = AesGcm(k, iv0)
    ..auth(h)
    ..decrypt(Uint8List(0), handshakeInitResponse.tag);
  // 10. Set h = SHA-256(h || tag)
  h = hashOfTwo(h, handshakeInitResponse.tag);

  // 11. Search credentials for a pairs
  final allCredentials = findKnownPairingCredentials(
    knownCredentials,
    trezorMaskedStaticPubkey,
    handshakeInitResponse.trezorEphemeralPubkey,
  );
  // and use first from the list (could be undefined)
  final credentials = allCredentials.isNotEmpty ? allCredentials[0] : null;

  // 11.1 If found set (temp_host_static_privkey, temp_host_static_pubkey) = (host_static_privkey, host_static_pubkey).
  // 11.2 If not found set (temp_host_static_privkey, temp_host_static_pubkey) = (X25519(0, B), 0).
  // NOTE: This logic is deprecated and zero keypair should never be used, source:
  // https://satoshilabs.slack.com/archives/C078GRAK58U/p1740132971826629?thread_ts=1739181741.870599&cid=C078GRAK58Us

  final staticKey = credentials?.hostStaticKey != null
      ? Uint8List.fromList(hex.decode(credentials!.hostStaticKey))
      : randomBytes(32);
  final hostStaticKeys = getCurve25519KeyPair(staticKey);
  // 12. Set encrypted_host_static_pubkey = AES-GCM-ENCRYPT(key=k, IV=0^95 || 1, ad=h, plaintext=temp_host_static_pubkey).
  aes = AesGcm(k, iv1)..auth(h);
  final hostEncryptedStaticPubkey = Uint8List.fromList([
    ...aes.encrypt(hostStaticKeys.publicKey),
    ...aes.finish(),
  ]);
  // 13. Set h = SHA-256(h || encrypted_host_static_pubkey).
  h = hashOfTwo(h, hostEncryptedStaticPubkey);
  // 14. Set ck, k = HKDF(ck, X25519(temp_host_static_privkey, trezor_ephemeral_pubkey)).
  point = curve25519(hostStaticKeys.privateKey, handshakeInitResponse.trezorEphemeralPubkey);
  [ck, k] = hkdf(ck, point);
  // 15. Set payload_binary = PROTOBUF-ENCODE(type=HandshakeCompletionReqNoisePayload, host_pairing_credential).
  final data = ThpHandshakeCompletionReqNoisePayload(
    hostPairingCredential: credentials?.credential != null
        ? Uint8List.fromList(hex.decode(credentials!.credential))
        : null,
  );
  final message = data.writeToBuffer();
  // 16. Set *encrypted_payload* = AES-GCM-ENCRYPT(*key*=*k*, *IV*=*0^96*, *ad*=*h*, *plaintext*=*payload_binary*).
  aes = AesGcm(k, iv0)..auth(h);
  final encryptedPayload = Uint8List.fromList([...aes.encrypt(message), ...aes.finish()]);
  h = hashOfTwo(h, encryptedPayload);

  // HH2 and HH3
  // 1. Set key_request, key_response = HKDF(ck, empty_string).
  final [hostKey, trezorKey] = hkdf(ck, Uint8List(0));

  return HandshakeCredentials(
    trezorMaskedStaticPubkey: trezorMaskedStaticPubkey,
    trezorEncryptedStaticPubkey: handshakeInitResponse.trezorEncryptedStaticPubkey,
    hostEncryptedStaticPubkey: hostEncryptedStaticPubkey,
    hostKey: hostKey,
    trezorKey: trezorKey,
    handshakeHash: h,
    credentials: credentials,
    allCredentials: allCredentials,
    encryptedPayload: encryptedPayload,
    staticKey: staticKey,
    hostStaticKeys: hostStaticKeys,
  );
}

class HandshakeCredentials {
  final Uint8List trezorMaskedStaticPubkey;
  final Uint8List trezorEncryptedStaticPubkey;
  final Uint8List hostEncryptedStaticPubkey;
  final Uint8List hostKey;
  final Uint8List trezorKey;
  final Uint8List handshakeHash;
  final ThpCredentials? credentials;
  final List<ThpCredentials> allCredentials;
  final Uint8List encryptedPayload;
  final Uint8List staticKey;
  final KeyPair hostStaticKeys;

  const HandshakeCredentials({
    required this.trezorMaskedStaticPubkey,
    required this.trezorEncryptedStaticPubkey,
    required this.hostEncryptedStaticPubkey,
    required this.hostKey,
    required this.trezorKey,
    required this.handshakeHash,
    required this.credentials,
    required this.allCredentials,
    required this.encryptedPayload,
    required this.staticKey,
    required this.hostStaticKeys,
  });
}
