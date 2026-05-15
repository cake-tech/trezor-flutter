import 'dart:typed_data';

import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/trezor/protocol/constants/constants_v2.dart';
import 'package:trezor_flutter/src/trezor/protocol/v2/state.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';

class TrezorThpAckOperation extends TrezorTHPOperation<void> {

  @override
  final ThpState state;

  TrezorThpAckOperation(this.state);

  // example: 2012340004d9fcce58
  // [magic | channel | len  | crc     ]
  // [20    | 1234    | 0004 | d9fcce58]
  @override
  Future<Uint8List> write(ByteDataWriter writer) async {
    writer
      ..write(addAckBit(THPControlByte.ackMessage.byte, state.recvAckBit))
      ..writeUint16(state.channel)
      ..writeUint16(crcLength);

    writeCrc32(writer);

    return writer.toBytes();
  }

  @override
  Future<void> read(ByteDataReader reader) async {}
}
