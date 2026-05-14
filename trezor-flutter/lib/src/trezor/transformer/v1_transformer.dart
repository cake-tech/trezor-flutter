import 'dart:typed_data';

import 'package:trezor_flutter/src/api/api.dart';
import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/trezor/protobuf/messages-common.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';

class V1Transformer extends TrezorTransformer {
  const V1Transformer();

  @override
  Future<Uint8List> onTransform(List<Uint8List> transform) async {
    final bytes = transform.reduce((a, b) => a..addAll(b));
    final reader = ByteDataReader()..add(bytes)..read(3);
    final messageType = reader.readUint16();
    final dataLength = reader.readUint32();

    final payload = reader.read(dataLength);
    if (messageType == TrezorMessageType.failure.raw) {
      final fail = Failure.fromBuffer(payload);
      throw TrezorFailureException(fail);
    }


    return bytes;
  }
}
