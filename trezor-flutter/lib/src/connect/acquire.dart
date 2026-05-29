import 'package:trezor_flutter/src/connect/handshake.dart';
import 'package:trezor_flutter/src/connect/pairing.dart';
import 'package:trezor_flutter/src/operations/trezor/thp_create_channel_operation.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

Future<void> createThpChannel(TrezorConnection connection, ThpState state) async {
  state.channel = 0xFFFF;

  await connection.sendOperation(TrezorThpCreateChannelOperation(state));
}

Future<bool> getThpChannel(
  TrezorConnection connection,
  ThpState state, {
  required String hostName,
  required String appName,
  required Future<String> Function() onCodeCode,
}) async {
  if (state.phase == ThpPhase.handshake) {
    await createThpChannel(connection, state);
    await thpHandshake(connection, state);
    if (state.phase == ThpPhase.pairing) {
      await thpPairing(connection, state,
        hostName: hostName,
        appName: appName,
        onCodeCode: onCodeCode,
      );
    }

    if (state.phase != ThpPhase.paired) return false;

    return true;
  }

  return state.phase == ThpPhase.paired;
}
