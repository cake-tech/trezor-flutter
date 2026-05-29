import 'dart:typed_data';

import 'package:trezor_flutter/src/connect/trezor_thp_call.dart';
import 'package:trezor_flutter/src/trezor/protobuf/messages-thp.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/utils/hex_utils.dart';
import 'package:trezor_flutter/src/utils/paring.dart';
import 'package:trezor_flutter/src/utils/random_bytes.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

typedef OnCodeEnter = Future<String> Function();

Future<void> thpPairing(TrezorConnection connection, ThpState state,
    {required String hostName, required String appName, required OnCodeEnter onCodeCode}) async {
  await thpCall(
    connection,
    state,
    ThpPairingRequest(hostName: hostName, appName: appName).writeToBuffer(),
    TrezorMessageType.thpPairingRequest,
  );

  final selectMethod = await thpCall(
    connection,
    state,
    ThpSelectMethod(selectedPairingMethod: ThpPairingMethod.CodeEntry).writeToBuffer(),
    TrezorMessageType.thpSelectMethod,
  );

  if (selectMethod.$1 == TrezorMessageType.thpEndResponse) {
    state.isPaired = true;
    state.phase = ThpPhase.paired;

    return;
  }

  if (selectMethod.$1 == TrezorMessageType.thpCodeEntryCommitment) {
    final message = ThpCodeEntryCommitment.fromBuffer(selectMethod.$2);

    // store handshakeCommitment and validate later in `processCodeEntry`
    final codeEntryChallenge = randomBytes(32);
    state.updateHandshakeCredentials(ThpHandshakeCredentials(
      handshakeCommitment: Uint8List.fromList(message.commitment),
      codeEntryChallenge: codeEntryChallenge,
    ));

    // State HP3a
    final codeEntryCpace = await thpCall(
      connection,
      state,
      ThpCodeEntryChallenge(challenge: codeEntryChallenge).writeToBuffer(),
      TrezorMessageType.thpCodeEntryChallenge,
    );

    final codeEntryCpaceMessage = ThpCodeEntryCpaceTrezor.fromBuffer(codeEntryCpace.$2);

    state.updateHandshakeCredentials(ThpHandshakeCredentials(
      trezorCpacePublicKey: Uint8List.fromList(codeEntryCpaceMessage.cpaceTrezorPublicKey),
    ));

    final code = await onCodeCode();

    // State HP4 -> HP5
    await processCodeEntry(connection, state, code);

    final credentials = await getThpCredentials(connection, state);

    state.setPairingCredentials([credentials]);
    state.isPaired = true;
  }

  await thpPairingEnd(connection, state);
  await thpCreateSession(connection, state);
}

Future<void> processCodeEntry(TrezorConnection connection, ThpState state, String code) async {
  if (state.handshakeCredentials == null) throw Exception('Device_ThpStateMissing');

  final hostKeys = getCpaceHostKeys(code, state.handshakeCredentials!.handshakeHash!);
  final tag =
      getSharedSecret(state.handshakeCredentials!.trezorCpacePublicKey!, hostKeys.privateKey);

  final codeEntrySecret = await thpCall(
      connection,
      state,
      ThpCodeEntryCpaceHostTag(tag: tag, cpaceHostPublicKey: hostKeys.publicKey).writeToBuffer(),
      TrezorMessageType.thpCodeEntryCpaceHostTag,
  );

  final codeEntrySecretResponse = ThpCodeEntrySecret.fromBuffer(codeEntrySecret.$2);

  validateCodeEntryTag(
    state.handshakeCredentials!,
    code,
    Uint8List.fromList(codeEntrySecretResponse.secret),
  );
}

Future<ThpCredentials> getThpCredentials(TrezorConnection connection, ThpState state,
    [bool autoconnect = false]) async {
  if (state.handshakeCredentials == null) throw Exception('Device_ThpStateMissing');

  final pairingCredential = state.pairingCredentials.firstOrNull;
  final credentials = await thpCall(
    connection,
    state,
    ThpCredentialRequest(
      autoconnect: autoconnect,
      hostStaticPublicKey: state.handshakeCredentials!.hostStaticPublicKey!,
      credential:
          pairingCredential?.credential != null ? hex.decode(pairingCredential!.credential) : null,
    ).writeToBuffer(),
    TrezorMessageType.thpCredentialRequest,
  );

  final credentialsResponse = ThpCredentialResponse.fromBuffer(credentials.$2);
  return ThpCredentials(
      trezorStaticPublicKey: hex.encode(credentialsResponse.trezorStaticPublicKey),
      credential: hex.encode(credentialsResponse.credential),
      hostStaticKey: hex.encode(state.handshakeCredentials!.staticKey!),
      autoconnect: autoconnect,
  );
}

Future<void> thpPairingEnd(TrezorConnection connection, ThpState state) async {
  await thpCall(
    connection,
    state,
    ThpEndRequest().writeToBuffer(),
    TrezorMessageType.thpEndRequest,
  );
  state.phase = ThpPhase.paired;
}

/// Create a new THP session on the device.
///
/// This sends ThpCreateNewSession and waits for Success.
/// Must be called after handshake is complete but before sending other messages.
Future<void> thpCreateSession(TrezorConnection connection, ThpState state) async {
  state.createNewSessionId();

  await thpCall(
    connection,
    state,
    ThpCreateNewSession(passphrase: "", onDevice: false, deriveCardano: false).writeToBuffer(),
    TrezorMessageType.thpCreateNewSession,
  );
}
