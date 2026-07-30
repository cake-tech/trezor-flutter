import 'package:flutter/foundation.dart';
import 'package:pointycastle/api.dart';
import 'package:pointycastle/digests/keccak.dart';
import 'package:trezor_flutter/src/trezor/protobuf/coins/messages-monero.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';
import 'package:trezor_flutter/src/utils/hex_utils.dart';
import 'package:trezor_flutter/src/utils/varint.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

Future<String> moneroSignTransaction(
  TrezorClient client, {
  required int version,
  required Iterable<int> addressN,
  required MoneroTransactionInitRequest_MoneroTransactionData tsxData,
  required List<MoneroTransactionSourceEntry> inputs,
}) async {
  final state = _ProtocolState();

  final initResponseRaw = await client.call(
    MoneroTransactionInitRequest(version: version, addressN: addressN, tsxData: tsxData)
        .writeToBuffer(),
    TrezorMessageType.moneroTransactionInitRequest,
  );
  final initResponse = MoneroTransactionInitAck.fromBuffer(initResponseRaw.$2);

  state.hmacs = initResponse.hmacs;

  for (var i = 0; i < inputs.length; i++) {
    final setInputResponseRaw = await client.call(
      MoneroTransactionSetInputRequest(srcEntr: inputs[i]).writeToBuffer(),
      TrezorMessageType.moneroTransactionSetInputRequest,
    );
    final setInputResponse = MoneroTransactionSetInputAck.fromBuffer(setInputResponseRaw.$2);

    // Store for later steps
    state.vinis.add(_ProtocolStateVinis.fromPB(setInputResponse, i, inputs[i]));
  }

  // apply Monero input ordering
  state.vinis.sort((a, b) {
    final x = a.vini, y = b.vini;
    final xo = x.length - 32, yo = y.length - 32;
    for (var i = 0; i < 32; i++) {
      final c = y[yo + i] - x[xo + i];
      if (c != 0) return c;
    }
    return 0;
  });

  for (final viniData in state.vinis) {
    await client.call(
      MoneroTransactionInputViniRequest(
        srcEntr: viniData.srcEntr,
        vini: viniData.vini,
        viniHmac: viniData.hmac,
        pseudoOut: viniData.pseudoOut,
        pseudoOutHmac: viniData.pseudoOutHmac,
        origIdx: viniData.origIdx,
      ).writeToBuffer(),
      TrezorMessageType.moneroTransactionInputViniRequest,
    );
  }

  await client.call(
    MoneroTransactionAllInputsSetRequest().writeToBuffer(),
    TrezorMessageType.moneroTransactionAllInputsSetRequest,
  );

  for (var i = 0; i < tsxData.outputs.length; i++) {
    final setOutputResponseRaw = await client.call(
      MoneroTransactionSetOutputRequest(dstEntr: tsxData.outputs[i], dstEntrHmac: state.hmacs[i])
          .writeToBuffer(),
      TrezorMessageType.moneroTransactionSetOutputRequest,
    );

    final setOutputResponse = MoneroTransactionSetOutputAck.fromBuffer(setOutputResponseRaw.$2);

    final outPkMask = setOutputResponse.outPk.sublist(32, 64);
    state.outPks.add(outPkMask);
    // state.outPks.add(setOutputResponse.outPk);
    state.ecdhInfos.add(setOutputResponse.ecdhInfo);
    state.txOuts.add(setOutputResponse.txOut);
    state.rsigParts.add(setOutputResponse.rsigData.rsig);
  }

  final allOutSetResponseRaw = await client.call(
    MoneroTransactionAllOutSetRequest().writeToBuffer(),
    TrezorMessageType.moneroTransactionAllOutSetRequest,
  );

  final allOutSetResponse = MoneroTransactionAllOutSetAck.fromBuffer(allOutSetResponseRaw.$2);

  state.txPrefixHash = allOutSetResponse.txPrefixHash;
  state.rv = allOutSetResponse.rv;
  state.extra = allOutSetResponse.extra;

  // Step 7: SignInput - Generate CLSAG signatures for each input
  for (var i = 0; i < state.vinis.length; i++) {
    final viniData = state.vinis[i];
    final signResponseRaw = await client.call(
      MoneroTransactionSignInputRequest(
        srcEntr: viniData.srcEntr,
        vini: viniData.vini,
        viniHmac: viniData.hmac,
        pseudoOut: viniData.pseudoOut,
        pseudoOutHmac: viniData.pseudoOutHmac,
        pseudoOutAlpha: viniData.pseudoOutAlpha,
        spendKey: viniData.spendKey,
        origIdx: viniData.origIdx,
      ).writeToBuffer(),
      TrezorMessageType.moneroTransactionSignInputRequest,
    );

    final signResponse = MoneroTransactionSignInputAck.fromBuffer(signResponseRaw.$2);

    state.signatures.add(signResponse.signature);
    // pseudo_out may be updated after mask correction
    state.pseudoOuts.add(signResponse.pseudoOut);
  }

  // Step 8: Final - Get encryption keys
  final finalResponseRaw = await client.call(
    MoneroTransactionFinalRequest().writeToBuffer(),
    TrezorMessageType.moneroTransactionFinalRequest,
  );
  final finalResponse = MoneroTransactionFinalAck.fromBuffer(finalResponseRaw.$2);

  return state.toMoneroTx(openingKey: finalResponse.openingKey);
}

class _ProtocolState {
  List<List<int>> hmacs = [];
  List<_ProtocolStateVinis> vinis = [];
  List<int>? txPrefixHash;
  MoneroTransactionAllOutSetAck_MoneroRingCtSig? rv;
  List<List<int>> signatures = [];
  List<List<int>> pseudoOuts = [];
  List<List<int>> outPks = [];
  List<List<int>> ecdhInfos = [];
  List<List<int>> txOuts = [];
  List<List<int>> rsigParts = [];
  List<int>? extra;
}

class _ProtocolStateVinis {
  final List<int> vini;
  final List<int> hmac;
  final List<int> pseudoOut;
  final List<int> pseudoOutHmac;
  final List<int> pseudoOutAlpha;
  final List<int> spendKey;
  final MoneroTransactionSourceEntry srcEntr;
  final int origIdx;

  const _ProtocolStateVinis({
    required this.vini,
    required this.hmac,
    required this.pseudoOut,
    required this.pseudoOutHmac,
    required this.pseudoOutAlpha,
    required this.spendKey,
    required this.srcEntr,
    required this.origIdx,
  });

  factory _ProtocolStateVinis.fromPB(MoneroTransactionSetInputAck message, int origIdx,
          MoneroTransactionSourceEntry srcEntr) =>
      _ProtocolStateVinis(
        vini: message.vini,
        hmac: message.viniHmac,
        pseudoOut: message.pseudoOut,
        pseudoOutHmac: message.pseudoOutHmac,
        pseudoOutAlpha: message.pseudoOutAlpha,
        spendKey: message.spendKey,
        srcEntr: srcEntr,
        origIdx: origIdx,
      );
}

extension SerializeTx on _ProtocolState {
  String toMoneroTx({required List<int> openingKey}) {
    var tx = ByteDataWriter();
    tx.write(VarInt.encodeMoneroVarint(2)); // Version
    tx.write(VarInt.encodeMoneroVarint(0)); // unlockTime
    tx.write(VarInt.encodeMoneroVarint(vinis.length)); // n Inputs

    for (final vini in vinis) {
      tx.write(vini.vini);
    }

    tx.write(VarInt.encodeMoneroVarint(txOuts.length)); // n Outputs
    for (final vout in txOuts) {
      tx.write(vout);
    }

    tx.write(VarInt.encodeMoneroVarint(extra!.length));

    tx.write(extra!);

    _verifyTransactionPrefix(computedPrefix: tx.toBytes(), expectedPrefix: txPrefixHash!);

    tx.writeUint8(rv!.rvType);

    tx.write(VarInt.encodeMoneroVarint(rv!.txnFee.toInt()));

    for (final ecdhInfo in ecdhInfos) {
      tx.write(ecdhInfo);
    }

    for (final outPk in outPks) {
      tx.write(outPk);
    }

    tx.write(VarInt.encodeMoneroVarint(1)); // Todo dynamic?
    for (final rsigPart in rsigParts) {
      tx.write(rsigPart);
    }

    signatures.asMap().forEach((i, signature) =>
        tx.write(_decryptChaCha(openingKey: openingKey, idx: i, input: signature).sublist(1)));

    for (final pseudoOut in pseudoOuts) {
      tx.write(pseudoOut);
    }

    return hex.encode(tx.toBytes());
  }
}

Uint8List _computeSealingKey({
  required List<int> key,
  required int idx,
  required bool isIv,
}) {
  final idxVarint = VarInt.encodeMoneroVarint(idx);
  if (idxVarint.length > 4) throw ArgumentError("index is too big");

  final sep = (isIv ? "sig-iv" : "sig-key").codeUnits;
  final input = Uint8List(32 + 12 + 4)
    ..setRange(0, 32, key)
    ..setRange(32, 32 + sep.length, sep)
    ..setRange(44, 44 + idxVarint.length, idxVarint);

  return KeccakDigest(256).process(KeccakDigest(256).process(input));
}

Uint8List _decryptChaCha({
  required List<int> openingKey,
  required int idx,
  required List<int> input,
}) {
  final iv = _computeSealingKey(key: openingKey, idx: idx, isIv: true).sublist(0, 12);
  final key = _computeSealingKey(key: openingKey, idx: idx, isIv: false);

  final cipher = AEADCipher("ChaCha20-Poly1305")
    ..init(false, AEADParameters(KeyParameter(key), 128, iv, Uint8List(0)));

  final output = Uint8List(cipher.getOutputSize(input.length));
  var len = cipher.processBytes(Uint8List.fromList(input), 0, input.length, output, 0);
  len += cipher.doFinal(output, len);

  return Uint8List.sublistView(output, 0, len);
}

void _verifyTransactionPrefix({
  required List<int> computedPrefix,
  required List<int> expectedPrefix,
}) {
  final prefix = KeccakDigest(256).process(Uint8List.fromList(computedPrefix));

  if (!listEquals(prefix, expectedPrefix)) throw ArgumentError("invalid transaction prefix");
}
