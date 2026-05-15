import 'dart:typed_data';

import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/trezor/protocol/constants/constants_v2.dart';
import 'package:trezor_flutter/src/trezor/crypto/crypto.dart';
import 'package:trezor_flutter/src/trezor/protocol/v2/state.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';
import 'package:trezor_flutter/src/utils/paring.dart';

class TrezorThpHandshakeCompletionOperation extends TrezorTHPOperation<int> {
  @override
  final ThpState state;

  final Uint8List hostPubkey;
  final Uint8List encryptedPayload;

  TrezorThpHandshakeCompletionOperation(this.state,
      {required this.hostPubkey, required this.encryptedPayload});

  @override
  Future<Uint8List> write(ByteDataWriter writer) async {
    final payloadWriter = ByteDataWriter()
      ..write(hostPubkey)
      ..write(encryptedPayload);
    final payload = payloadWriter.toBytes();

    writer
      ..write(addSequenceBit(THPControlByte.handshakeCompReq.byte, state.sendBit))
      ..writeUint16(state.channel)
      ..writeUint16(payload.length + crcLength)
      ..write(payload);

    writeCrc32(writer);

    return writer.toBytes();
  }

  @override
  Future<int> read(ByteDataReader reader) async {
    final headers = readHeaders(reader);

    if (headers.controlByte == THPControlByte.error) {
      final error = readError(reader);
      throw Exception(error);
    }

    final cipherText = reader.read(headers.length - 4);
    final data = AesGcm(state.handshakeCredentials!.trezorKey!, getIvFromNonce(0))
        .decrypt(cipherText, Uint8List(0));

    return data.first;
  }
}
