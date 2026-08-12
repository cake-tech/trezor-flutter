import 'dart:typed_data';

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:trezor_flutter/src/connect/trezor_client.dart';
import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/models/trezor_tx.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/utils/hex_utils.dart';

Future<TrezorSignedTx> bitcoinSignTransaction(
  TrezorClient client, {
  required String coinName,
  required List<TxInput> inputs,
  required List<TxOutput> outputs,
  Map<String, TrezorPrevTx> prevTxs = const {},
  int version = 2,
  int lockTime = 0,
}) async {
  final serialized = BytesBuilder(copy: false);
  final signatures = List<Uint8List?>.filled(inputs.length, null);

  var response = await client.call(
    SignTx(
      outputsCount: outputs.length,
      inputsCount: inputs.length,
      coinName: coinName,
      version: version,
      lockTime: lockTime,
    ).writeToBuffer(),
    TrezorMessageType.signTx,
  );

  while (true) {
    if (response.$1 != TrezorMessageType.txRequest.raw) {
      throw TrezorProtocolException("Unexpected message type ${response.$1}");
    }

    final request = TxRequest.fromBuffer(response.$2);

    if (request.hasSerialized()) {
      final s = request.serialized;

      if (s.hasSignatureIndex()) signatures[s.signatureIndex] = Uint8List.fromList(s.signature);

      if (s.hasSerializedTx()) serialized.add(s.serializedTx);
    }

    if (request.requestType == TxRequest_RequestType.TXFINISHED) break;

    response = await client.call(
      _buildAck(request, inputs, outputs, prevTxs).writeToBuffer(),
      TrezorMessageType.txAck,
    );
  }

  if (signatures.any((e) => e == null)) {
    final missingSigs = signatures.where((e) => e == null);
    throw TrezorProtocolException("Missing signatures for inputs $missingSigs");
  }

  return TrezorSignedTx(
      serializedTx: serialized.toBytes(), signatures: signatures.nonNulls.toList());
}

$pb.GeneratedMessage _buildAck(
  TxRequest request,
  List<TxInput> inputs,
  List<TxOutput> outputs,
  Map<String, TrezorPrevTx> prevTxs,
) {
  final details = request.details;
  final index = details.requestIndex;

  TrezorPrevTx prevTx() {
    final txid = hex.encode(details.txHash).toLowerCase();
    final prev = prevTxs[txid];
    if (prev == null) {
      throw TrezorProtocolException("Device requested unknown previous transaction $txid");
    }
    return prev;
  }

  T indexed<T>(List<T> list, String what) {
    if (index < 0 || index >= list.length) {
      throw TrezorProtocolException("Device requested $what $index, but only ${list.length} exist");
    }
    return list[index];
  }

  switch (request.requestType) {
    case TxRequest_RequestType.TXINPUT:
      if (details.hasTxHash()) {
        return TxAckPrevInput(
            tx: TxAckPrevInput_TxAckPrevInputWrapper(
                input: indexed(prevTx().inputs, "previous input")));
      }
      return TxAckInput(tx: TxAckInput_TxAckInputWrapper(input: indexed(inputs, "input")));

    case TxRequest_RequestType.TXOUTPUT:
      if (details.hasTxHash()) {
        return TxAckPrevOutput(
            tx: TxAckPrevOutput_TxAckPrevOutputWrapper(
                output: indexed(prevTx().outputs, "previous output")));
      }
      return TxAckOutput(tx: TxAckOutput_TxAckOutputWrapper(output: indexed(outputs, "output")));

    case TxRequest_RequestType.TXMETA:
      return TxAckPrevMeta(tx: prevTx().meta);

    case TxRequest_RequestType.TXEXTRADATA:
      final chunk = prevTx().extraData.sublist(
            details.extraDataOffset,
            details.extraDataOffset + details.extraDataLen,
          );
      return TxAckPrevExtraData(
          tx: TxAckPrevExtraData_TxAckPrevExtraDataWrapper(extraDataChunk: chunk));

    default:
      throw TrezorProtocolException("Unsupported TxRequest type ${request.requestType} "
          "(original-transaction / payment-request flows are not implemented)");
  }
}
