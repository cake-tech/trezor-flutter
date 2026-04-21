import 'dart:typed_data';

import 'package:trezor_flutter/src/trezor/protocol2/constants.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';

Uint8List getChunkHeader(Uint8List data) {
  if (data.length < headerSize) throw Exception("Malformed protocol format");

  return Uint8List.fromList(
      [THPControlByte.continuationPacket.byte, ...data.sublist(1, headerSize)]);
}


Uint8List getHeaders(Uint8List data) {
  final chunkHeader = getChunkHeader(data);

  return Uint8List.fromList([...data.sublist(0, headerSize), ...chunkHeader]);
}

// encode `protocol-thp` message
Uint8List encode(Uint8List data, options) {
  if (!options.header || options.header.byteLength != headerSize) {
    throw Exception("Malformed protocol format");
  }

  final length = ByteDataWriter(bufferLength: messageLenSize);
  length.writeUint16(data.length);

  return Uint8List.fromList([options.header, ...length.toBytes(), ...data]);
}
