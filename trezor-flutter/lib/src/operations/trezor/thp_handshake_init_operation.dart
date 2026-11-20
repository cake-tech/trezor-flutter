import 'dart:typed_data';

import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/trezor/protocol/constants/constants_v2.dart';
import 'package:trezor_flutter/src/trezor/protocol/v2/state.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';
import 'package:trezor_flutter/src/utils/curve25519.dart';

class ThpHandshakeInitResponse {
  final Uint8List trezorEphemeralPubkey;
  final Uint8List trezorEncryptedStaticPubkey;
  final Uint8List tag;

  const ThpHandshakeInitResponse({
    required this.trezorEphemeralPubkey,
    required this.trezorEncryptedStaticPubkey,
    required this.tag,
  });
}

class TrezorThpHandshakeInitOperation extends TrezorTHPOperation<ThpHandshakeInitResponse> {
  @override
  final ThpState state;

  final KeyPair hostEphemeralKeyPair;
  final bool tryToUnlock;

  TrezorThpHandshakeInitOperation(this.state,
      {required this.hostEphemeralKeyPair, this.tryToUnlock = false});

  @override
  Future<Uint8List> write(ByteDataWriter writer) async {
    final payloadWriter = ByteDataWriter()
      ..write(hostEphemeralKeyPair.publicKey)
      ..write([tryToUnlock ? 1 : 0]);
    final payload = payloadWriter.toBytes();

    writer
      ..write(addAckBit(THPControlByte.handshakeInitReq.byte, state.piggybackAckEnabled ? 1 : 0))
      ..writeUint16(state.channel)
      ..writeUint16(payload.length + crcLength)
      ..write(payload);

    writeCrc32(writer);

    return writer.toBytes();
  }

  @override
  Future<ThpHandshakeInitResponse> read(ByteDataReader reader) async {
    final headers = readHeaders(reader);

    if (headers.controlByte == THPControlByte.error) {
      throw TrezorChannelException(readError(reader));
    }

    final trezorEphemeralPubkey = reader.read(32);
    final trezorEncryptedStaticPubkey = reader.read(48);
    final tag = reader.read(tagLength);

    return ThpHandshakeInitResponse(
      trezorEphemeralPubkey: trezorEphemeralPubkey,
      trezorEncryptedStaticPubkey: trezorEncryptedStaticPubkey,
      tag: tag,
    );
  }
}
