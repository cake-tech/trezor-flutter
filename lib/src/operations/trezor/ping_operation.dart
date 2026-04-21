import 'dart:typed_data';

import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/trezor/protocol2/constants.dart';
import 'package:trezor_flutter/src/trezor/thp/state.dart';
import 'package:trezor_flutter/src/utils/CRC32.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';

class TrezorPingOperation extends TrezorOperation<Uint8List> {
  @override
  final ThpState state;

  TrezorPingOperation(this.state);

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) async {
    writer.writeUint8(THPControlByte.ping.byte);

    // Channel (0xFFFF for broadcast/allocation request)
    writer.writeUint16(0xFFFF);

    // Length (big-endian)
    writer.writeUint16(crcLength);

    // Calculate and append CRC32
    final crc = CRC32.compute(writer.toBytes());
    writer.writeUint32(crc);

    return [
      Uint8List.fromList([...writer.toBytes(), ...List.filled(244 - writer.toBytes().length, 0)])
    ];
  }

  @override
  Future<Uint8List> read(ByteDataReader reader) async => reader.read(reader.remainingLength);
}
