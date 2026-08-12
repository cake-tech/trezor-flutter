import 'dart:typed_data';

import 'package:trezor_flutter/src/connect/coins/bitcoin/sign_transaction.dart';
import 'package:trezor_flutter/src/connect/trezor_client.dart';
import 'package:trezor_flutter/src/models/trezor_tx.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/utils/bip32_path.dart';

class TrezorBitcoin {
  final TrezorClient _client;

  const TrezorBitcoin(this._client);

  /// [path] minimum length is 1.
  /// [showDisplay] determines if address will be displayed on device. Default is set to false
  /// [chunkify] determines if address will be displayed in chunks of 4 characters. Default is set to false
  /// [scriptType] "SPENDADDRESS" | "SPENDMULTISIG" | "SPENDWITNESS" | "SPENDP2SHWITNESS" | "SPENDTAPROOT" used to distinguish between various address formats (non-segwit, segwit, etc.).
  /// [ignoreXpubMagic] ignore SLIP-0132 XPUB magic, use xpub/tpub prefix for all account types.
  Future<String> getAddress({
    required String derivationPath,
    bool showDisplay = true,
    bool chunkify = false,
    String? scriptType,
    bool? ignoreXpubMagic,
  }) async {
    // MultisigRedeemScriptType? multisig,

    final addressN = BIPPath.fromString(derivationPath).toPathArray();
    final inputScriptType =
        _getInputScriptType(scriptType) ?? _getInputScriptTypeFromPath(addressN);

    final res = await _client.call(
      GetAddress(
        addressN: addressN,
        coinName: "Bitcoin",
        scriptType: inputScriptType,
        showDisplay: showDisplay,
        chunkify: chunkify,
        ignoreXpubMagic: ignoreXpubMagic,
      ).writeToBuffer(),
      TrezorMessageType.getAddress,
    );
    final result = Address.fromBuffer(res.$2);

    return result.address;
  }

  /// [path] minimum length is 1.
  /// [showDisplay] determines if address will be displayed on device. Default is set to false
  /// [chunkify] determines if address will be displayed in chunks of 4 characters. Default is set to false
  /// [scriptType] "SPENDADDRESS" | "SPENDMULTISIG" | "SPENDWITNESS" | "SPENDP2SHWITNESS" | "SPENDTAPROOT" used to distinguish between various address formats (non-segwit, segwit, etc.).
  /// [ignoreXpubMagic] ignore SLIP-0132 XPUB magic, use xpub/tpub prefix for all account types.
  Future<(String, int)> getPublicKey({
    required String derivationPath,
    bool showDisplay = false,
    bool chunkify = false,
    String? scriptType,
    bool? ignoreXpubMagic,
    String? ecdsaCurveName,
  }) async {
    final addressN = BIPPath.fromString(derivationPath).toPathArray();
    final inputScriptType =
        _getInputScriptType(scriptType) ?? _getInputScriptTypeFromPath(addressN);

    final res = await _client.call(
      GetPublicKey(
        addressN: addressN,
        coinName: "Bitcoin",
        scriptType: inputScriptType,
        showDisplay: showDisplay,
        ignoreXpubMagic: ignoreXpubMagic,
        ecdsaCurveName: ecdsaCurveName,
      ).writeToBuffer(),
      TrezorMessageType.getPublicKey,
    );
    final result = PublicKey.fromBuffer(res.$2);

    return (result.xpub, result.rootFingerprint);
  }

  Future<Uint8List> signMessage({
    required String derivationPath,
    required Uint8List message,
    bool noScriptType = false,
    bool chunkify = false,
    String? scriptType,
  }) async {
    final addressN = BIPPath.fromString(derivationPath).toPathArray();
    final inputScriptType =
        _getInputScriptType(scriptType) ?? _getInputScriptTypeFromPath(addressN);

    final res = await _client.call(
      SignMessage(
        addressN: addressN,
        message: message,
        coinName: "Bitcoin",
        scriptType: inputScriptType,
        noScriptType: noScriptType,
        chunkify: chunkify,
      ).writeToBuffer(),
      TrezorMessageType.signMessage,
    );
    final result = MessageSignature.fromBuffer(res.$2);

    return Uint8List.fromList(result.signature);
  }

  Future<TrezorSignedTx> signTransaction({
    required List<TxInput> inputs,
    required List<TxOutput> outputs,
    Map<String, TrezorPrevTx> prevTxs = const {},
    int version = 2,
    int lockTime = 0,
  }) =>
      bitcoinSignTransaction(
        _client,
        coinName: "Bitcoin",
        inputs: inputs,
        outputs: outputs,
        prevTxs: prevTxs,
        version: version,
        lockTime: lockTime,
      );

  InputScriptType? _getInputScriptType(String? inputScriptType) => switch (inputScriptType) {
        "SPENDADDRESS" => InputScriptType.SPENDADDRESS, // Legacy P2PKH
        "SPENDMULTISIG" => InputScriptType.SPENDMULTISIG,
        "SPENDP2SHWITNESS" => InputScriptType.SPENDP2SHWITNESS, // Nested SegWit
        "SPENDWITNESS" => InputScriptType.SPENDWITNESS, // Native SegWit
        "SPENDTAPROOT" => InputScriptType.SPENDTAPROOT, // Taproot
        _ => null,
      };

  InputScriptType _getInputScriptTypeFromPath(List<int> derivationPath) {
    if (derivationPath.isEmpty) return InputScriptType.SPENDWITNESS;

    final purpose = derivationPath.first - BIPPath.hardened;

    return switch (purpose) {
      44 => InputScriptType.SPENDADDRESS, // Legacy P2PKH
      49 => InputScriptType.SPENDP2SHWITNESS, // Nested SegWit
      84 => InputScriptType.SPENDWITNESS, // Native SegWit
      86 => InputScriptType.SPENDTAPROOT, // Taproot
      _ => InputScriptType.SPENDWITNESS
    };
  }
}
