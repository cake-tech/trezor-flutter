import 'dart:typed_data';

import 'package:trezor_flutter/src/trezor/protobuf/messages-bitcoin.pb.dart';

export '../trezor/protobuf/messages-bitcoin.pb.dart';

class TrezorPrevTx {
  final PrevTx meta;
  final List<PrevInput> inputs;
  final List<PrevOutput> outputs;
  final Uint8List extraData;

  TrezorPrevTx({
    required this.meta,
    required this.inputs,
    required this.outputs,
    Uint8List? extraData,
  }) : extraData = extraData ?? Uint8List(0);
}

class TrezorSignedTx {
  final Uint8List serializedTx;
  final List<Uint8List> signatures;

  const TrezorSignedTx({required this.serializedTx, required this.signatures});
}
