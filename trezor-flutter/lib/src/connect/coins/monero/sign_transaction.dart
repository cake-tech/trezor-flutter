import 'package:fixnum/fixnum.dart';
import 'package:trezor_flutter/src/trezor/protobuf/coins/messages-monero.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/utils/hex_utils.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

class ProtocolState {
  List<List<int>> hmacs = [];
  List<ProtocolState_Vinis> vinis = [];
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

Future<Map> moneroSignTransaction(
  TrezorClient client, {
  required int version,
  required Iterable<int> addressN,
  required MoneroTransactionInitRequest_MoneroTransactionData tsxData,
  required List<MoneroTransactionSourceEntry> inputs,
}) async {
  final state = ProtocolState();

  final transactionInitRequest =
      MoneroTransactionInitRequest(version: version, addressN: addressN, tsxData: tsxData);
  final initResponseRaw = await client.call(
      transactionInitRequest.writeToBuffer(), TrezorMessageType.moneroTransactionInitRequest);
  final initResponse = MoneroTransactionInitAck.fromBuffer(initResponseRaw.$2);

  state.hmacs = initResponse.hmacs;
  for (var i = 0; i < inputs.length; i++) {
    final setInputRequest = MoneroTransactionSetInputRequest(srcEntr: inputs[i]);

    final setInputResponseRaw = await client.call(
      setInputRequest.writeToBuffer(),
      TrezorMessageType.moneroTransactionSetInputRequest,
    );
    final setInputResponse = MoneroTransactionSetInputAck.fromBuffer(setInputResponseRaw.$2);

    // Store for later steps
    state.vinis.add(ProtocolState_Vinis.fromPB(setInputResponse, i, inputs[i]));
  }

  for (final viniData in state.vinis) {
    final inputViniRequest = MoneroTransactionInputViniRequest(
      srcEntr: viniData.srcEntr,
      vini: viniData.vini,
      viniHmac: viniData.hmac,
      pseudoOut: viniData.pseudoOut,
      pseudoOutHmac: viniData.pseudoOutHmac,
      origIdx: viniData.origIdx,
    );

    await client.call(
      inputViniRequest.writeToBuffer(),
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

    state.outPks.add(setOutputResponse.outPk);
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

  return {
    "signatures": state.signatures.map((e) => hex.encode(e)).toList(),
    if (state.txPrefixHash != null) "tx_prefix_hash": hex.encode(state.txPrefixHash!),
    if (state.rv != null)
      "rv": {
        "txn_fee": state.rv?.txnFee.toInt(),
        "rv_type": state.rv?.rvType,
        "message": hex.encode(state.rv!.message)
      },
    "cout_key": hex.encode(finalResponse.coutKey),
    "salt": hex.encode(finalResponse.salt),
    "rand_mult": hex.encode(finalResponse.randMult),
    "tx_enc_keys": hex.encode(finalResponse.txEncKeys),
    "opening_key": hex.encode(finalResponse.openingKey),
    "pseudo_outs": state.pseudoOuts.map((e) => hex.encode(e)).toList(),
    "out_pks": state.outPks.map((e) => hex.encode(e)).toList(),
    "ecdh_infos": state.ecdhInfos.map((e) => hex.encode(e)).toList(),
    "tx_outs": state.txOuts.map((e) => hex.encode(e)).toList(),
    "rsig_parts": state.rsigParts.map((e) => hex.encode(e)).toList(),
    if (state.extra != null) "extra": hex.encode(state.extra!),
  };
}

class ProtocolState_Vinis {
  final List<int> vini;
  final List<int> hmac;
  final List<int> pseudoOut;
  final List<int> pseudoOutHmac;
  final List<int> pseudoOutAlpha;
  final List<int> spendKey;
  final MoneroTransactionSourceEntry srcEntr;
  final int origIdx;

  const ProtocolState_Vinis({
    required this.vini,
    required this.hmac,
    required this.pseudoOut,
    required this.pseudoOutHmac,
    required this.pseudoOutAlpha,
    required this.spendKey,
    required this.srcEntr,
    required this.origIdx,
  });

  factory ProtocolState_Vinis.fromPB(MoneroTransactionSetInputAck message, int origIdx,
          MoneroTransactionSourceEntry srcEntr) =>
      ProtocolState_Vinis(
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

class TransactionData {
  final int version;
  final List<int> paymentId;
  final int unlockTime;
  final Iterable<MoneroTransactionDestinationEntry> outputs;
  final MoneroTransactionDestinationEntry changeDts;
  final int numInputs;
  final int mixin;
  final int fee;
  final int account;
  final Iterable<int> minorIndices;
  final MoneroTransactionRsigData rsigData;
  final Iterable<int> integratedIndices;
  final int clientVersion;
  final int hardFork;
  final List<int> moneroVersion;
  final bool chunkify;

  const TransactionData({
    required this.version,
    required this.paymentId,
    required this.unlockTime,
    required this.outputs,
    required this.changeDts,
    required this.numInputs,
    required this.mixin,
    required this.fee,
    required this.account,
    required this.minorIndices,
    required this.rsigData,
    required this.integratedIndices,
    required this.clientVersion,
    required this.hardFork,
    required this.moneroVersion,
    required this.chunkify,
  });

  MoneroTransactionInitRequest_MoneroTransactionData toPB() =>
      MoneroTransactionInitRequest_MoneroTransactionData(
        version: version,
        paymentId: paymentId,
        unlockTime: Int64(unlockTime),
        outputs: outputs,
        changeDts: changeDts,
        numInputs: numInputs,
        mixin: mixin,
        fee: Int64(fee),
        account: account,
        minorIndices: minorIndices,
        rsigData: rsigData,
        integratedIndices: integratedIndices,
        clientVersion: clientVersion,
        hardFork: hardFork,
        moneroVersion: moneroVersion,
        chunkify: chunkify,
      );
}
