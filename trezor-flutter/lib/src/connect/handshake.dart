import 'package:trezor_flutter/src/connect/pairing.dart';
import 'package:trezor_flutter/src/operations/trezor/thp_ack_operation.dart';
import 'package:trezor_flutter/src/operations/trezor/thp_handshake_completion_operation.dart';
import 'package:trezor_flutter/src/operations/trezor/thp_handshake_init_operation.dart';
import 'package:trezor_flutter/src/utils/curve25519.dart';
import 'package:trezor_flutter/src/utils/random_bytes.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

Future<void> thpHandshake(TrezorConnection connection, ThpState state) async {
  final hostEphemeralKeyPair = getCurve25519KeyPair(randomBytes(32));

  final handshakeInitResponse = await connection.sendOperation(
    TrezorThpHandshakeInitOperation(state, hostEphemeralKeyPair: hostEphemeralKeyPair),
  );

  state.updateSyncBit(true);
  await connection.sendOperation(TrezorThpAckOperation(state));

  final cred = handleHandshakeInit(
    handshakeInitResponse: handshakeInitResponse,
    thpState: state,
    knownCredentials: [], // ToDo: Autoconnect credentials
    hostEphemeralKeys: hostEphemeralKeyPair,
    tryToUnlock: 0,
  );

  state.updateHandshakeCredentials(ThpHandshakeCredentials(
    trezorEncryptedStaticPubkey: cred.trezorEncryptedStaticPubkey,
    hostEncryptedStaticPubkey: cred.hostEncryptedStaticPubkey,
    handshakeHash: cred.handshakeHash,
    trezorKey: cred.trezorKey,
    hostKey: cred.hostKey,
    staticKey: cred.staticKey,
    hostStaticPublicKey: cred.hostStaticKeys.publicKey,
  ));

  state.setPairingCredentials(cred.allCredentials);

  await Future.delayed(const Duration(milliseconds: 100));

  final requiresParing = await connection.sendOperation(
    TrezorThpHandshakeCompletionOperation(
      state,
      hostPubkey: cred.hostEncryptedStaticPubkey,
      encryptedPayload: cred.encryptedPayload,
    ),
  );
  state.updateSyncBit(true);

  state.isPaired = requiresParing != 0;
  state.phase = ThpPhase.pairing;

  if (state.isAutoconnectPaired || requiresParing == 2) {
    // State HC1 -> HC2 pairing complete
    // finish pairing. device is ready to communicate without further interaction
    await thpPairingEnd(connection, state);
  }

  state.updateAckBit(false);
  await connection.sendOperation(TrezorThpAckOperation(state));
}
