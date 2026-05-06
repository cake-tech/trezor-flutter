import 'dart:typed_data';

import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/trezor/protocol/constants/constants_v1.dart';
import 'package:trezor_flutter/src/trezor/protocol/constants/constants_v2.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';

class TrezorV1Operation extends TrezorOperation<Uint8List> {

  final int messageType;
  final Uint8List data;

  TrezorV1Operation(this.messageType, this.data);

  @override
  int get protocolVersion => 1;

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) async {
    writer
      ..writeUint8(v1MessageMagicHeaderByte)
      ..writeUint8(v1MessageHeaderByte)
      ..writeUint16(crcLength);

    return [writer.toBytes()];
  }

  @override
  Future<Uint8List> read(ByteDataReader reader) async => reader.read(reader.remainingLength);
}
