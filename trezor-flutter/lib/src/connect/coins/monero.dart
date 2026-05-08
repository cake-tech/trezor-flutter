import 'dart:convert';
import 'dart:typed_data';

import 'package:trezor_flutter/src/trezor/protobuf/coins/messages-monero.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/utils/bip32_path.dart';
import 'package:trezor_flutter/src/utils/hex_utils.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

class MoneroKeyImageTxData {
  final String outKey;
  final String txPubKey;
  final String additionalTxPubKeys;
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

class MoneroKeyImageResponse{
  final List<MoneroExportedKeyImage> keyImages;
  final String signature;

  const MoneroKeyImageResponse(this.keyImages, this.signature);
}

class MoneroExportedKeyImage {
  final String iv;
  final String keyImage;

  const MoneroExportedKeyImage(this.iv, this.keyImage);
}

class TrezorMonero {
  final String accountDerivationPath;
  final TrezorConnection connection;
  final ThpState state;

  const TrezorMonero(this.connection, this.state, {this.accountDerivationPath = "m/44'/128'/0'"});

  List<int> get _addressN => BIPPath.fromString(accountDerivationPath).toPathArray();

  Future<String> getAddress({bool showDisplay = true, bool chunkify = true}) async {
    final message =
        MoneroGetAddress(addressN: _addressN, showDisplay: showDisplay, chunkify: chunkify);

    final res = await _call(message.writeToBuffer(), TrezorMessageType.moneroGetAddress);
    final result = MoneroAddress.fromBuffer(res);

    return utf8.decode(result.address);
  }

  Future<(String, String)> getWatchCredentials() async {
    final message = MoneroGetWatchKey(addressN: _addressN);

    final res = await _call(message.writeToBuffer(), TrezorMessageType.moneroGetWatchKey);
    final result = MoneroWatchKey.fromBuffer(res);

    return (hex.encode(result.watchKey), utf8.decode(result.address));
  }

  Future<MoneroKeyImageResponse> syncKeyImages(
      TrezorConnection connection, ThpState state, List<MoneroKeyImageTxData> txIds) async {
    throw UnimplementedError();
  }

  Future<Uint8List> _call(Uint8List message, TrezorMessageType messageType) async {
    if (connection.device.deviceInfo.usesThp) {
      return (await thpCall(connection, state, message, TrezorMessageType.moneroGetWatchKey)).$2;
    }

    return v1Call(connection, message, TrezorMessageType.moneroGetWatchKey);
  }
}
