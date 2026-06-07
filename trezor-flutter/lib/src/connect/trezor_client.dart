import 'dart:typed_data';

import 'package:flutter/foundation.dart';

import 'package:trezor_flutter/src/connect/acquire.dart';
import 'package:trezor_flutter/src/connect/pairing.dart';
import 'package:trezor_flutter/src/connect/trezor_thp_call.dart';
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

  /// Create a new Channel for THP or Initialize a new Session for V1.
  ///
  /// Pass [passphrase] to bind the wallet session in one step; otherwise call
  /// [createSession] after inspecting [passphraseAlwaysOnDevice].
  Future<void> createChannel({TrezorPassphrase? passphrase});

  /// Bind a wallet session for [passphrase]; [resumeSessionId] is V1-only
  Future<TrezorSessionInfo> createSession(TrezorPassphrase passphrase,
      {List<int>? resumeSessionId});

  /// Make a call to the Trezor Device
  Future<(int, Uint8List)> call(Uint8List message, TrezorMessageType messageType);

  /// Whether the device forces passphrase entry on its own screen
  bool get passphraseAlwaysOnDevice;
}

class TrezorClientV1 extends TrezorClient {
  List<int>? sessionId;
  final PassphraseIntentSlot _sessionIntent = PassphraseIntentSlot();
  Features? _features;

  @override
  bool get passphraseAlwaysOnDevice => _features?.passphraseAlwaysOnDevice ?? false;

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
        final ack = _sessionIntent.ackMessage();
        final result = await call(ack.writeToBuffer(), TrezorMessageType.passphraseAck);
        _sessionIntent.markUsed();
        return result;

      default:
        return (response.messageTypeRaw, response.payload);
    }
  }

  @override
  Future<void> createChannel({TrezorPassphrase? passphrase}) async {
    if (passphrase != null) _sessionIntent.store(passphrase);
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
    _features = feature;
  }

  @override
  Future<TrezorSessionInfo> createSession(TrezorPassphrase passphrase,
      {List<int>? resumeSessionId}) async {
    _sessionIntent.store(passphrase);

    final initialize = await connection.sendOperation(
      TrezorV1Operation(
        data: Initialize(sessionId: resumeSessionId).writeToBuffer(),
        messageType: TrezorMessageType.initialize.raw,
      ),
      transformer: const V1Transformer(),
    );

    final features = Features.fromBuffer(initialize.payload);
    sessionId = features.sessionId;
    _features = features;

    return TrezorSessionInfo(
      enteredOnDevice:
          passphrase is TrezorPassphraseOnDevice || features.passphraseAlwaysOnDevice,
      resumed: listEquals(features.sessionId, resumeSessionId),
      sessionId: features.sessionId,
    );
  }
}

class TrezorClientV2 extends TrezorClient {
  final ThpState state;
  final String appName;
  final String hostName;
  Future<String> Function() onPinCode;
  List<int>? sessionId;
  Features? _features;

  @override
  bool get passphraseAlwaysOnDevice => _features?.passphraseAlwaysOnDevice ?? false;

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

    switch (response.$1) {
      case TrezorMessageType.failure:
        final fail = Failure.fromBuffer(response.$2);
        throw TrezorFailureException(fail);

      case TrezorMessageType.buttonRequest:
        return call(ButtonAck().writeToBuffer(), TrezorMessageType.buttonAck);

      default:
        return (response.$1.raw, response.$2);
    }
  }

  @override
  Future<void> createChannel({TrezorPassphrase? passphrase}) async {
    await getThpChannel(
      connection,
      state,
      appName: appName,
      hostName: hostName,
      onCodeCode: onPinCode,
    );

    final features = await call(GetFeatures().writeToBuffer(), TrezorMessageType.getFeatures);
    _features = Features.fromBuffer(features.$2);

    if (passphrase != null) await createSession(passphrase);
  }

  @override
  Future<TrezorSessionInfo> createSession(TrezorPassphrase passphrase,
      {List<int>? resumeSessionId}) {
    final intent = passphraseAlwaysOnDevice ? const TrezorPassphrase.onDevice() : passphrase;
    return thpCreateSession(connection, state, intent);
  }

  Future<ThpCredentials> getAutoPairingCredentials() => getThpCredentials(connection, state, true);
}

/// Result of [TrezorClient.createSession].
class TrezorSessionInfo {
  const TrezorSessionInfo({
    required this.enteredOnDevice,
    required this.resumed,
    this.sessionId,
  });

  final bool enteredOnDevice;

  /// V1 only: the device kept the session - no passphrase prompt will occur
  final bool resumed;

  final List<int>? sessionId;
}
