import 'dart:convert';

import 'package:trezor_flutter/src/connect/trezor_thp_call.dart';
import 'package:trezor_flutter/src/trezor/protobuf/coins/messages-monero.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/utils/bip32_path.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

Future<String> moneroTest(TrezorConnection connection, ThpState state) async {
  final message = MoneroGetAddress(
      addressN: BIPPath.fromString("m/44'/128'/0'").toPathArray(), showDisplay: true, chunkify: true);

  final res =
      await thpCall(connection, state, message.writeToBuffer(), TrezorMessageType.moneroGetAddress);

  final addr = MoneroAddress.fromBuffer(res.$2);

  print(utf8.decode(addr.address));
  return utf8.decode(addr.address);
}
