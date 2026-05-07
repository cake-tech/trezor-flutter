import 'dart:convert';
import 'dart:typed_data';

import 'package:trezor_flutter/src/connect/trezor_thp_call.dart';
import 'package:trezor_flutter/src/connect/trezor_v1_call.dart';
import 'package:trezor_flutter/src/trezor/protobuf/coins/messages-monero.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/utils/bip32_path.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

Future<String> moneroTest(TrezorConnection connection, ThpState state, [bool isV1 = false]) async {
  final message = MoneroGetAddress(
      addressN: BIPPath.fromString("m/44'/128'/0'").toPathArray(),
      showDisplay: true,
      chunkify: true);

  Uint8List msgRsp;
  if (isV1) {
    final rsp =
        await v1Call(connection, message.writeToBuffer(), TrezorMessageType.moneroGetAddress);

    msgRsp = rsp;
  } else {
    final res = await thpCall(
        connection, state, message.writeToBuffer(), TrezorMessageType.moneroGetAddress);

    msgRsp = res.$2;
  }

  final addr = MoneroAddress.fromBuffer(msgRsp);

  print(utf8.decode(addr.address));
  return utf8.decode(addr.address);
}
