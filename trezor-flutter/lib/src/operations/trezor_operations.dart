import 'dart:typed_data';

import 'package:trezor_flutter/src/trezor/protocol/constants/constants_v2.dart';
import 'package:trezor_flutter/src/trezor/protocol/v2/state.dart';
import 'package:trezor_flutter/src/trezor/crypto/crypto.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';

abstract class TrezorOperation<T> {
  int get protocolVersion => 2;

  Future<Uint8List> write(ByteDataWriter writer);

  Future<T> read(ByteDataReader reader);

  ThpHeaders readHeaders(ByteDataReader reader) {
    final controlByteRaw = reader.readUint8();
    final channel = reader.readUint16();
    final length = reader.readUint16();

    return ThpHeaders(controlByteRaw: controlByteRaw, channel: channel, length: length);
  }

  int readError(ByteDataReader reader) => reader.readUint8();
}

abstract class TrezorTHPOperation<T> extends TrezorOperation<T> {
  ThpState get state;

  void writeCrc32(ByteDataWriter writer) {
    final crc = CRC32.compute(writer.toBytes());
    writer.writeUint32(crc);
  }

  Uint8List addAckBit(int magic, int ackBit) {
    final data = ByteData(1)..setUint8(0, magic | (ackBit << 3));
    return data.buffer.asUint8List();
  }

  Uint8List addSequenceBit(int magic, int seqBit) {
    final data = ByteData(1)..setUint8(0, magic | (seqBit << 4));
    return data.buffer.asUint8List();
  }

  @override
  ThpHeaders readHeaders(ByteDataReader reader) {
    final controlByteRaw = reader.readUint8();
    final channel = reader.readUint16();
    final length = reader.readUint16();

    return ThpHeaders(controlByteRaw: controlByteRaw, channel: channel, length: length);
  }
}

class ThpHeaders {
  final int controlByteRaw;
  final int channel;
  final int length;

  const ThpHeaders({required this.controlByteRaw, required this.channel, required this.length});

  THPControlByte? get controlByte => THPControlByte.decode(controlByteRaw);

  Uint8List asUint8List() {
    final writer = ByteDataWriter()
      ..writeUint8(controlByteRaw)
      ..writeUint16(channel)
      ..writeUint16(length);

    return writer.toBytes();
  }
}
