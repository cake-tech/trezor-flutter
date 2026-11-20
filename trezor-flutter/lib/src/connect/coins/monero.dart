import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:trezor_flutter/src/connect/coins/monero/extensions.dart';
import 'package:trezor_flutter/src/connect/coins/monero/sign_transaction.dart';
import 'package:trezor_flutter/src/connect/coins/monero/sync_keyimages.dart';
import 'package:trezor_flutter/src/connect/trezor_client.dart';
import 'package:trezor_flutter/src/trezor/protobuf/coins/messages-monero.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/utils/bip32_path.dart';
import 'package:trezor_flutter/src/utils/hex_utils.dart';

class MoneroKeyImageTxData {
  final String outKey;
  final String txPubKey;
  final List<String> additionalTxPubKeys;
  final int internalOutputIndex;
  final int subAddrMajor;
  final int subAddrMinor;

  const MoneroKeyImageTxData({
    required this.outKey,
    required this.txPubKey,
    required this.additionalTxPubKeys,
    required this.internalOutputIndex,
    required this.subAddrMajor,
    required this.subAddrMinor,
  });
}

final _log = Logger('trezor_flutter.monero');

class TrezorMonero {
  final String accountDerivationPath;
  final TrezorClient _client;

  const TrezorMonero(this._client, {this.accountDerivationPath = "m/44'/128'/0'"});

  List<int> get _addressN => BIPPath.fromString(accountDerivationPath).toPathArray();

  Future<String> getAddress({bool showDisplay = true, bool chunkify = true}) async {
    _log.fine('getAddress: path=$accountDerivationPath showDisplay=$showDisplay');
    final res = await _client.call(
      MoneroGetAddress(
        addressN: _addressN,
        showDisplay: showDisplay,
        chunkify: chunkify,
      ).writeToBuffer(),
      TrezorMessageType.moneroGetAddress,
    );
    final result = MoneroAddress.fromBuffer(res.$2);
    final address = utf8.decode(result.address);
    _log.fine('getAddress: received $address');

    return address;
  }

  Future<(String, String)> getWatchCredentials() async {
    _log.fine('getWatchCredentials: path=$accountDerivationPath');
    final res = await _client.call(
      MoneroGetWatchKey(addressN: _addressN).writeToBuffer(),
      TrezorMessageType.moneroGetWatchKey,
    );
    final result = MoneroWatchKey.fromBuffer(res.$2);
    _log.fine('getWatchCredentials: received watch key');

    return (hex.encode(result.watchKey), utf8.decode(result.address));
  }

  Future<MoneroKeyImageResponse> syncKeyImages(List<MoneroKeyImageTxData> tdis) =>
      moneroSyncKeyImages(_client, tdis: tdis, addressN: _addressN);

  Future<String> signTransaction(Map<String, dynamic> tx) {
    final tsxData = moneroTransactionDataFromMap(tx["tsx_data"] as Map<String, dynamic>);
    final inputs =
        (tx["inputs"] as List).map((e) => moneroTransactionSourceEntryFromMap(e)).toList();
    _log.fine('signTransaction: path=$accountDerivationPath '
        'inputs=${inputs.length} outputs=${tsxData.outputs.length}');

    return moneroSignTransaction(
      _client,
      version: 0,
      addressN: _addressN,
      tsxData: tsxData,
      inputs: inputs,
    );
  }
}
