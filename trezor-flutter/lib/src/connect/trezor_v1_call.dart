import 'dart:typed_data';

import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/operations/trezor/v1_operation.dart';
import 'package:trezor_flutter/src/trezor/protobuf/messages-common.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/messages-management.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/trezor/v1_transformer.dart';
import 'package:trezor_flutter/src/trezor_connection.dart';

Future<Uint8List> v1Call(TrezorConnection connection, Uint8List message,
    TrezorMessageType messageType, [List<int>? sessionId]) async {

  if (sessionId == null) {
    final initialize = await connection.sendOperation(
        TrezorV1Operation(
            data: Initialize().writeToBuffer(), messageType: TrezorMessageType.initialize.raw),
        transformer: const V1Transformer());

    final feature = Features.fromBuffer(initialize.payload);
    sessionId = feature.sessionId;
  }

  final response = await connection.sendOperation(
      TrezorV1Operation(data: message, messageType: messageType.raw),
      transformer: const V1Transformer());

  if (response.messageType == TrezorMessageType.failure) {
    final fail = Failure.fromBuffer(response.payload);
    throw TrezorFailureException(fail);
  }

  if (response.messageType == TrezorMessageType.buttonRequest) {
    return v1Call(connection, ButtonAck().writeToBuffer(), TrezorMessageType.buttonAck, sessionId);
  }

  return response.payload;
}
