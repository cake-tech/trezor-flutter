import 'dart:typed_data';

import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/trezor/protocol2/constants.dart';
import 'package:trezor_flutter/src/trezor/thp/state.dart';
import 'package:trezor_flutter/src/utils/CRC32.dart';
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

class TrezorThpHandshakeInitOperation extends TrezorOperation<ThpHandshakeInitResponse> {
  @override
  final ThpState state;

  final KeyPair hostEphemeralKeyPair;
  final bool tryToUnlock;

  TrezorThpHandshakeInitOperation(this.state,
      {required this.hostEphemeralKeyPair, this.tryToUnlock = false});

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) async {
    final payloadWriter = ByteDataWriter()
      ..write(hostEphemeralKeyPair.publicKey)
      ..write([tryToUnlock ? 1 : 0]);
    final payload = payloadWriter.toBytes();

    writer
        .write(addAckBit(THPControlByte.handshakeInitReq.byte, state.piggybackAckEnabled ? 1 : 0));

    // Channel (0xFFFF for broadcast/allocation request)
    writer.writeUint16(state.channel);

    // Length (big-endian)
    writer.writeUint16(payload.length + crcLength);

    writer.write(payload);

    // Calculate and append CRC32
    final crc = CRC32.compute(writer.toBytes());
    writer.writeUint32(crc);

    return [writer.toBytes()];
  }

  @override
  Future<ThpHandshakeInitResponse> read(ByteDataReader reader) async {
    final headers = readHeaders(reader);

    if (headers.controlByte == THPControlByte.error) {
      final error = readError(reader);
      throw Exception(error);
    }

    final trezorEphemeralPubkey = reader.read(32);
    final trezorEncryptedStaticPubkey = reader.read(48);
    final tag = reader.read(tagLength);

    final crc = reader.readUint32();

    final message = ByteDataWriter()
      ..writeUint8(headers.controlByteRaw)
      ..writeUint16(headers.channel)
      ..writeUint16(headers.length)
      ..write(trezorEphemeralPubkey)
      ..write(trezorEncryptedStaticPubkey)
      ..write(tag);

    final expectedCrc = CRC32.compute(message.toBytes());

    if (crc != expectedCrc) throw Exception("Crc Missmatch");

    return ThpHandshakeInitResponse(
      trezorEphemeralPubkey: trezorEphemeralPubkey,
      trezorEncryptedStaticPubkey: trezorEncryptedStaticPubkey,
      tag: tag,
    );
  }
}
