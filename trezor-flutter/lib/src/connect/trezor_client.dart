import 'dart:typed_data';

import 'package:trezor_flutter/src/connect/acquire.dart';
import 'package:trezor_flutter/src/connect/trezor_thp_call.dart';
import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/operations/trezor/v1_operation.dart';
import 'package:trezor_flutter/src/trezor/protobuf/messages-common.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/messages-management.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/trezor/transformer/v1_transformer.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

abstract class TrezorClient {
  static TrezorClient getClientForConnection(TrezorConnection connection, ThpState state,
      String appName, String hostName, Future<String> Function() onPinCode) {
    if (connection.device.deviceInfo.usesThp) {
      return TrezorClientV2(connection, state,
          onPinCode: onPinCode, appName: appName, hostName: hostName);
    }

    return TrezorClientV1(connection);
  }

  TrezorClient(this.connection);

  final TrezorConnection connection;

  /// Create a new Channel for THP or Initialize a new Session for V1
  Future<void> createChannel();

  /// Make a call to the Trezor Device
  Future<(int, Uint8List)> call(Uint8List message, TrezorMessageType messageType);
}

class TrezorClientV1 extends TrezorClient {
  List<int>? sessionId;

  TrezorClientV1(super.connection);

  @override
  Future<(int, Uint8List)> call(Uint8List message, TrezorMessageType messageType) async {
    final response = await connection.sendOperation(
        TrezorV1Operation(data: message, messageType: messageType.raw),
        transformer: const V1Transformer());

    switch (response.messageType) {
      case TrezorMessageType.failure:
        final fail = Failure.fromBuffer(response.payload);
        throw TrezorFailureException(fail);

      case TrezorMessageType.buttonRequest:
        return call(ButtonAck().writeToBuffer(), TrezorMessageType.buttonAck);

      case TrezorMessageType.passphraseRequest:
        print("Sending Empty passphrase");
        return call(PassphraseAck(passphrase: "").writeToBuffer(), TrezorMessageType.passphraseAck);

      default:
        return (response.messageTypeRaw, response.payload);
    }
  }

  @override
  Future<void> createChannel() async {
    if (sessionId != null) return;

    final initialize = await connection.sendOperation(
      TrezorV1Operation(
        data: Initialize().writeToBuffer(),
        messageType: TrezorMessageType.initialize.raw,
      ),
      transformer: const V1Transformer(),
    );

    final feature = Features.fromBuffer(initialize.payload);
    sessionId = feature.sessionId;
  }
}

class TrezorClientV2 extends TrezorClient {
  final ThpState state;
  final String appName;
  final String hostName;
  Future<String> Function() onPinCode;
  List<int>? sessionId;

  TrezorClientV2(
    super.connection,
    this.state, {
    required this.onPinCode,
    required this.appName,
    required this.hostName,
  });

  @override
  Future<(int, Uint8List)> call(Uint8List message, TrezorMessageType messageType) async {
    final response = await thpCall(connection, state, message, messageType);

    return (response.$1.raw, response.$2);
  }

  @override
  Future<void> createChannel() => getThpChannel(
        connection,
        state,
        appName: appName,
        hostName: hostName,
        onCodeCode: onPinCode,
      );
}
