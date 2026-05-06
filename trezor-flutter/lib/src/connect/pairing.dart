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
  final pairingRequest = ThpPairingRequest(hostName: hostName, appName: appName);

  final res = await thpCall(
      connection, state, pairingRequest.writeToBuffer(), TrezorMessageType.thpPairingRequest);
  print("Here: ${res.$1}");

  final selectMethodRequest = ThpSelectMethod(selectedPairingMethod: ThpPairingMethod.CodeEntry);
  final selectMethod = await thpCall(
      connection, state, selectMethodRequest.writeToBuffer(), TrezorMessageType.thpSelectMethod);
  print("messageType2: ${selectMethod.$1}");

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
        codeEntryChallenge: codeEntryChallenge));

    // State HP3a
    final thpCodeEntryChallenge = ThpCodeEntryChallenge(challenge: codeEntryChallenge);
    final codeEntryCpace = await thpCall(connection, state, thpCodeEntryChallenge.writeToBuffer(),
        TrezorMessageType.thpCodeEntryChallenge);

    final codeEntryCpaceMessage = ThpCodeEntryCpaceTrezor.fromBuffer(codeEntryCpace.$2);

    state.updateHandshakeCredentials(ThpHandshakeCredentials(
      trezorCpacePublicKey: Uint8List.fromList(codeEntryCpaceMessage.cpaceTrezorPublicKey),
    ));

    final code = await onCodeCode();
    // State HP4 -> HP5

    await processCodeEntry(connection, state, code);
    // await waitForPairingTag(device);

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
  final message = ThpCredentialRequest(
    autoconnect: autoconnect,
    hostStaticPublicKey: state.handshakeCredentials!.hostStaticPublicKey!,
    credential:
        pairingCredential?.credential != null ? hex.decode(pairingCredential!.credential) : null,
  );
  final credentials = await thpCall(
      connection, state, message.writeToBuffer(), TrezorMessageType.thpCredentialRequest);

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
      connection, state, ThpEndRequest().writeToBuffer(), TrezorMessageType.thpEndRequest);
  state.phase = ThpPhase.paired;
}


/// Create a new THP session on the device.
///
/// This sends ThpCreateNewSession and waits for Success.
/// Must be called after handshake is complete but before sending other messages.
Future<void> thpCreateSession(TrezorConnection connection, ThpState state) async {
  state.createNewSessionId();

  final message = ThpCreateNewSession(passphrase: "", onDevice: false, deriveCardano: false);

  await thpCall(connection, state, message.writeToBuffer(), TrezorMessageType.thpCreateNewSession);
}
