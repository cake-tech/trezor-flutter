import 'dart:typed_data';

import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/trezor/protocol/constants/constants_v1.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';

class TrezorResponse {
  final int messageTypeRaw;
  final Uint8List payload;

  const TrezorResponse({required this.messageTypeRaw, required this.payload});

  TrezorMessageType get messageType => TrezorMessageType.fromRaw(messageTypeRaw);
}

class TrezorV1Operation extends TrezorOperation<TrezorResponse> {
  final int messageType;
  final Uint8List data;

  TrezorV1Operation({required this.messageType, required this.data});

  @override
  int get protocolVersion => 1;

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) async {
    writer
      ..writeUint8(v1MessageMagicHeaderByte)
      ..writeUint8(v1MessageHeaderByte)
      ..writeUint8(v1MessageHeaderByte)
      ..writeUint16(messageType)
      ..writeUint32(data.length)
      ..write(data);

    return [writer.toBytes()];
  }

  @override
  Future<TrezorResponse> read(ByteDataReader reader) async {
    reader.read(3);
    final messageType = reader.readUint16();
    final dataLength = reader.readUint32();
    final payload = reader.read(dataLength);

    return TrezorResponse(messageTypeRaw: messageType, payload: payload);
  }
}
