import 'dart:convert';

import 'package:fast_base58/fast_base58.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:trezor_flutter/src/trezor/protobuf/coins/messages-monero.pb.dart';
import 'package:trezor_flutter/src/utils/hex_utils.dart';

/// Converts a Map<String, dynamic> to MoneroTransactionInitRequest_MoneroTransactionData
MoneroTransactionInitRequest_MoneroTransactionData moneroTransactionDataFromMap(
    Map<String, dynamic> map) {
  final data = MoneroTransactionInitRequest_MoneroTransactionData();

  if (map['version'] != null) data.version = map['version'] as int;

  if (map['payment_id'] != null) data.paymentId = hex.decode(map['payment_id']);

  if (map['unlock_time'] != null) data.unlockTime = $fixnum.Int64(map['unlock_time'] as int);

  if (map['outputs'] != null) {
    final outputsList = map['outputs'] as List;
    data.outputs.addAll(outputsList
        .map((e) => moneroTransactionDestinationEntryFromMap(e as Map<String, dynamic>)));
  }

  if (map['change_dts'] != null) {
    data.changeDts =
        moneroTransactionDestinationEntryFromMap(map['change_dts'] as Map<String, dynamic>);
  }

  if (map['num_inputs'] != null) data.numInputs = map['num_inputs'] as int;

  if (map['mixin'] != null) data.mixin = map['mixin'] as int;

  if (map['fee'] != null) data.fee = $fixnum.Int64(map['fee'] as int);

  if (map['account'] != null) data.account = map['account'] as int;

  if (map['minor_indices'] != null) {
    data.minorIndices.addAll(List<int>.from(map['minor_indices']));
  }

  if (map['rsig_data'] != null) {
    data.rsigData = moneroTransactionRsigDataFromMap(map['rsig_data'] as Map<String, dynamic>);
  }

  if (map['integrated_indices'] != null) {
    data.integratedIndices.addAll(List<int>.from(map['integrated_indices']));
  }

  // if (map['client_version'] != null) data.clientVersion = map['client_version'] as int;
  data.clientVersion = 3;
  data.version = 1;

  if (map['hard_fork'] != null) data.hardFork = map['hard_fork'] as int;

  if (map['monero_version'] != null) data.moneroVersion = utf8.encode(map['monero_version']);

  data.chunkify = true;

  return data;
}

/// Converts a Map<String, dynamic> to MoneroTransactionDestinationEntry
MoneroTransactionDestinationEntry moneroTransactionDestinationEntryFromMap(
    Map<String, dynamic> map) {
  final data = MoneroTransactionDestinationEntry();

  if (map['amount'] != null) data.amount = $fixnum.Int64(map['amount'] as int);

  if (map['addr'] != null) {
    data.addr = moneroAccountPublicAddressFromMap(map['addr'] as Map<String, dynamic>);
  }

  if (map['is_subaddress'] != null) data.isSubaddress = map['is_subaddress'] as bool;

  if (map['original'] != null && (map['original'] as String).isNotEmpty) {
    data.original = Base58Decode(map['original']);
  }

  if (map['is_integrated'] != null) data.isIntegrated = map['is_integrated'] as bool;

  return data;
}

MoneroTransactionDestinationEntry_MoneroAccountPublicAddress moneroAccountPublicAddressFromMap(
        Map<String, dynamic> map) =>
    MoneroTransactionDestinationEntry_MoneroAccountPublicAddress(
      spendPublicKey: map['spend_public_key'] != null ? hex.decode(map['spend_public_key']) : null,
      viewPublicKey: map['view_public_key'] != null ? hex.decode(map['view_public_key']) : null,
    );

/// Converts a Map<String, dynamic> to MoneroTransactionRsigData
MoneroTransactionRsigData moneroTransactionRsigDataFromMap(Map<String, dynamic> map) {
  final data = MoneroTransactionRsigData();

  if (map['rsig_type'] != null) data.rsigType = map['rsig_type'] as int;
  if (map['offload_type'] != null) data.offloadType = map['offload_type'] as int;

  if (map['grouping'] != null) {
    final groupingList = map['grouping'] as List;
    data.grouping.addAll(groupingList.map((e) => $fixnum.Int64(e as int)));
  }

  if (map['mask'] != null) data.mask = List<int>.from(map['mask']);
  if (map['rsig'] != null) data.rsig = List<int>.from(map['rsig']);

  if (map['rsig_parts'] != null) {
    final rsigPartsList = map['rsig_parts'] as List;
    data.rsigParts.addAll(rsigPartsList.map((e) => List<int>.from(e)));
  }

  if (map['bp_version'] != null) data.bpVersion = map['bp_version'] as int;

  return data;
}

/// Converts a Map<String, dynamic> to MoneroTransactionSourceEntry
MoneroTransactionSourceEntry moneroTransactionSourceEntryFromMap(Map<String, dynamic> map) {
  final data = MoneroTransactionSourceEntry();

  if (map['outputs'] != null) {
    final outputsList = map['outputs'] as List;
    data.outputs
        .addAll(outputsList.map((e) => moneroOutputEntryFromMap(e as Map<String, dynamic>)));
  }

  if (map['real_output'] != null) data.realOutput = $fixnum.Int64(map['real_output'] as int);

  if (map['real_out_tx_key'] != null) data.realOutTxKey = hex.decode(map['real_out_tx_key']);

  if (map['real_out_additional_tx_keys'] != null) {
    final additionalKeysList = map['real_out_additional_tx_keys'] as List;
    data.realOutAdditionalTxKeys.addAll(additionalKeysList.map((e) => hex.decode(e)));
  }

  if (map['real_output_in_tx_index'] != null) {
    data.realOutputInTxIndex = $fixnum.Int64(map['real_output_in_tx_index'] as int);
  }

  if (map['amount'] != null) data.amount = $fixnum.Int64(map['amount'] as int);
  if (map['rct'] != null) data.rct = map['rct'] as bool;
  if (map['mask'] != null) data.mask = hex.decode(map['mask']);
  if (map['subaddr_minor'] != null) data.subaddrMinor = map['subaddr_minor'] as int;

  return data;
}

MoneroTransactionSourceEntry_MoneroOutputEntry moneroOutputEntryFromMap(Map<String, dynamic> map) =>
    MoneroTransactionSourceEntry_MoneroOutputEntry(
      idx: map['idx'] != null ? $fixnum.Int64(map['idx'] as int) : null,
      key:
          map['key'] != null ? moneroRctKeyPublicFromMap(map['key'] as Map<String, dynamic>) : null,
    );

MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic moneroRctKeyPublicFromMap(
        Map<String, dynamic> map) =>
    MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic(
      dest: map['dest'] != null ? hex.decode(map['dest']) : null,
      commitment: map['commitment'] != null ? hex.decode(map['commitment']) : null,
    );
