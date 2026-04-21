import 'dart:typed_data';

import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/trezor/protocol2/constants.dart';
import 'package:trezor_flutter/src/trezor/thp/state.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';

class TrezorPingOperation extends TrezorOperation<Uint8List> {
  @override
  final ThpState state;

  TrezorPingOperation(this.state);

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) async {
    writer
      ..writeUint8(THPControlByte.ping.byte)
      ..writeUint16(0xFFFF)
      ..writeUint16(crcLength);

    writeCrc32(writer);

    return [writer.toBytes()];
  }

  @override
  Future<Uint8List> read(ByteDataReader reader) async => reader.read(reader.remainingLength);
}
