import 'dart:typed_data';

import 'package:trezor_flutter/src/api/api.dart';
import 'package:trezor_flutter/src/trezor/protocol/constants/constants_v2.dart';
import 'package:trezor_flutter/src/trezor/crypto/crypto.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';

class CrcValidator extends TrezorTransformer {
  const CrcValidator();

  @override
  Future<Uint8List> onTransform(List<Uint8List> transform) async {
    final bytes = transform.reduce((a, b) => a..addAll(b));
    final reader = ByteDataReader()..add(bytes);

    final controlByteRaw = reader.readUint8();
    final channel = reader.readUint16();
    final length = reader.readUint16();
    final payload = reader.read(length - crcLength);
    final expectedCrc = reader.readUint32();

    final writer = ByteDataWriter()
      ..writeUint8(controlByteRaw)
      ..writeUint16(channel)
      ..writeUint16(length)
      ..write(payload);

    final calculatedCrc = CRC32.compute(writer.toBytes());
    if (calculatedCrc != expectedCrc) throw Exception("Crc Missmatch");

    return bytes;
  }
}
