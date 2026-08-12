import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:trezor_flutter/src/trezor/protobuf/messages-bitcoin.pb.dart';

class TrezorPrevTx {
  final TrezorPrevTxMeta meta;
  final List<TrezorPrevInput> inputs;
  final List<TrezorPrevOutput> outputs;
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

class TrezorTxInput {
  /// previous transaction hash (reversed)
  final List<int> prevHash;

  /// previous transaction index
  final int prevIndex;

  final int amount;
  final int? sequence;

  final List<int>? origHash; // RBF
  final int? origIndex; // RBF

  /// required if script_type=EXTERNAL
  final List<int>? scriptPubkey;

  /// bit field of coinjoin-specific flags
  final int? coinjoinFlags;

  /// used by EXTERNAL, depending on script_pubkey
  final List<int>? scriptSig;

  /// used by EXTERNAL, depending on script_pubkey
  final List<int>? witness;

  /// used by EXTERNAL, depending on script_pubkey
  final List<int>? ownershipProof;

  /// used by EXTERNAL, depending on ownership_proof
  final List<int>? commitmentData;

  final List<int> addressPath;

  /// SPENDADDRESS, SPENDMULTISIG, SPENDWITNESS, SPENDP2SHWITNESS, SPENDTAPROOT
  final String? scriptType;

  const TrezorTxInput({
    required this.addressPath,
    required this.prevHash,
    required this.prevIndex,
    required this.amount,
    this.sequence,
    this.origHash,
    this.origIndex,
    this.scriptPubkey,
    this.coinjoinFlags,
    this.scriptSig,
    this.witness,
    this.ownershipProof,
    this.commitmentData,
    this.scriptType,
  });

  TxInput toProtoBuf() => TxInput(
        addressN: addressPath,
        prevHash: prevHash,
        prevIndex: prevIndex,
        scriptSig: scriptSig,
        sequence: sequence,
        scriptType: _getInputScriptType(scriptType),
        amount: Int64(amount),
        witness: witness,
        ownershipProof: ownershipProof,
        commitmentData: commitmentData,
        origHash: origHash,
        origIndex: origIndex,
        scriptPubkey: scriptPubkey,
        coinjoinFlags: coinjoinFlags,
      );

  InputScriptType? _getInputScriptType(String? inputScriptType) => switch (inputScriptType) {
        "SPENDADDRESS" => InputScriptType.SPENDADDRESS, // Legacy P2PKH
        "SPENDMULTISIG" => InputScriptType.SPENDMULTISIG,
        "SPENDP2SHWITNESS" => InputScriptType.SPENDP2SHWITNESS, // Nested SegWit
        "SPENDWITNESS" => InputScriptType.SPENDWITNESS, // Native SegWit
        "SPENDTAPROOT" => InputScriptType.SPENDTAPROOT, // Taproot
        _ => null,
      };
}

class TrezorTxOutput {
  final String? address;
  final List<int>? addressPath;
  final int amount;
  final String? scriptType;
  final List<int>? origHash; // RBF
  final int? origIndex; // RBF

  const TrezorTxOutput({
    this.address,
    this.addressPath,
    required this.amount,
    this.scriptType,
    this.origHash,
    this.origIndex,
  });

  TxOutput toProtoBuf() => TxOutput(
        address: address,
        addressN: addressPath,
        amount: Int64(amount),
        scriptType: _getOutputScriptType(scriptType),
        origHash: origHash,
        origIndex: origIndex,
      );

  OutputScriptType? _getOutputScriptType(String? inputScriptType) => switch (inputScriptType) {
        "PAYTOADDRESS" => OutputScriptType.PAYTOADDRESS,
        "PAYTOSCRIPTHASH" => OutputScriptType.PAYTOSCRIPTHASH,
        "PAYTOMULTISIG" => OutputScriptType.PAYTOMULTISIG,
        "PAYTOOPRETURN" => OutputScriptType.PAYTOOPRETURN,
        "PAYTOWITNESS" => OutputScriptType.PAYTOWITNESS,
        "PAYTOP2SHWITNESS" => OutputScriptType.PAYTOP2SHWITNESS,
        "PAYTOTAPROOT" => OutputScriptType.PAYTOTAPROOT,
        _ => null,
      };
}

class TrezorPrevTxMeta {
  final int? version;
  final int? lockTime;
  final int? inputsCount;
  final int? outputsCount;
  final int? extraDataLen;
  final int? expiry;
  final int? versionGroupId;
  final int? timestamp;
  final int? branchId;

  TrezorPrevTxMeta({
    this.version,
    this.lockTime,
    this.inputsCount,
    this.outputsCount,
    this.extraDataLen,
    this.expiry,
    this.versionGroupId,
    this.timestamp,
    this.branchId,
  });

  PrevTx toProtoBuf() => PrevTx(
        version: version,
        lockTime: lockTime,
        inputsCount: inputsCount,
        outputsCount: outputsCount,
        extraDataLen: extraDataLen,
        expiry: expiry,
        versionGroupId: versionGroupId,
        timestamp: timestamp,
        branchId: branchId,
      );
}

class TrezorPrevInput {
  final List<int> prevHash;
  final int prevIndex;
  final List<int> scriptSig;
  final int? sequence;

  const TrezorPrevInput({
    required this.prevHash,
    required this.prevIndex,
    required this.scriptSig,
    required this.sequence,
  });

  PrevInput toProtoBuf() => PrevInput(
        prevHash: prevHash,
        prevIndex: prevIndex,
        scriptSig: scriptSig,
        sequence: sequence,
      );
}

class TrezorPrevOutput {
  final int amount;
  final List<int> scriptPubkey;

  const TrezorPrevOutput({
    required this.amount,
    required this.scriptPubkey,
  });

  PrevOutput toProtoBuf() => PrevOutput(amount: Int64(amount), scriptPubkey: scriptPubkey);
}
