import 'dart:typed_data';

import 'package:trezor_flutter/src/trezor/protocol/constants/constants_v2.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';

Uint8List getChunkHeader(Uint8List data) {
  if (data.length < thpHeaderSize) throw Exception("Malformed protocol format");

  return Uint8List.fromList(
      [THPControlByte.continuationPacket.byte, ...data.sublist(1, thpHeaderSize)]);
}


Uint8List getHeaders(Uint8List data) {
  final chunkHeader = getChunkHeader(data);

  return Uint8List.fromList([...data.sublist(0, thpHeaderSize), ...chunkHeader]);
}

// encode `protocol-thp` message
Uint8List encode(Uint8List data, options) {
  if (!options.header || options.header.byteLength != thpHeaderSize) {
    throw Exception("Malformed protocol format");
  }

  final length = ByteDataWriter(bufferLength: messageLenSize);
  length.writeUint16(data.length);

  return Uint8List.fromList([options.header, ...length.toBytes(), ...data]);
}
