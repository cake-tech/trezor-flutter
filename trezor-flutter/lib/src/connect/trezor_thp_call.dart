import 'dart:typed_data';

import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/operations/trezor/thp_ack_operation.dart';
import 'package:trezor_flutter/src/operations/trezor/thp_encrypted_operation.dart';
import 'package:trezor_flutter/src/trezor/protobuf/messages-common.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/trezor/protocol/v2/state.dart';
import 'package:trezor_flutter/src/trezor_connection.dart';

Future<(TrezorMessageType, Uint8List)> thpCall(
  TrezorConnection connection,
  ThpState state,
  Uint8List message,
  TrezorMessageType messageType,
) async {
  final response = await connection.sendOperation(
    TrezorThpEncryptedOperation(
      state,
      data: message,
      messageType: messageType,
    ),
  );

  await connection.sendOperation(TrezorThpAckOperation(state));
  if (response.messageType == TrezorMessageType.failure) {
    final fail = Failure.fromBuffer(response.payload);
    throw TrezorFailureException(fail);
  }

  if (response.messageType == TrezorMessageType.buttonRequest) {
    state.cancelablePromise = true;

    return thpCall(connection, state, ButtonAck().writeToBuffer(), TrezorMessageType.buttonAck);
  }

  return (response.messageType, response.payload);
}
