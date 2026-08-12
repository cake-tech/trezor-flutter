///
//  Generated code. Do not modify.
//  source: messages-bitcoin.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use inputScriptTypeDescriptor instead')
const InputScriptType$json = const {
  '1': 'InputScriptType',
  '2': const [
    const {'1': 'SPENDADDRESS', '2': 0},
    const {'1': 'SPENDMULTISIG', '2': 1},
    const {'1': 'EXTERNAL', '2': 2},
    const {'1': 'SPENDWITNESS', '2': 3},
    const {'1': 'SPENDP2SHWITNESS', '2': 4},
    const {'1': 'SPENDTAPROOT', '2': 5},
  ],
};

/// Descriptor for `InputScriptType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List inputScriptTypeDescriptor = $convert.base64Decode('Cg9JbnB1dFNjcmlwdFR5cGUSEAoMU1BFTkRBRERSRVNTEAASEQoNU1BFTkRNVUxUSVNJRxABEgwKCEVYVEVSTkFMEAISEAoMU1BFTkRXSVRORVNTEAMSFAoQU1BFTkRQMlNIV0lUTkVTUxAEEhAKDFNQRU5EVEFQUk9PVBAF');
@$core.Deprecated('Use outputScriptTypeDescriptor instead')
const OutputScriptType$json = const {
  '1': 'OutputScriptType',
  '2': const [
    const {'1': 'PAYTOADDRESS', '2': 0},
    const {'1': 'PAYTOSCRIPTHASH', '2': 1},
    const {'1': 'PAYTOMULTISIG', '2': 2},
    const {'1': 'PAYTOOPRETURN', '2': 3},
    const {'1': 'PAYTOWITNESS', '2': 4},
    const {'1': 'PAYTOP2SHWITNESS', '2': 5},
    const {'1': 'PAYTOTAPROOT', '2': 6},
  ],
};

/// Descriptor for `OutputScriptType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List outputScriptTypeDescriptor = $convert.base64Decode('ChBPdXRwdXRTY3JpcHRUeXBlEhAKDFBBWVRPQUREUkVTUxAAEhMKD1BBWVRPU0NSSVBUSEFTSBABEhEKDVBBWVRPTVVMVElTSUcQAhIRCg1QQVlUT09QUkVUVVJOEAMSEAoMUEFZVE9XSVRORVNTEAQSFAoQUEFZVE9QMlNIV0lUTkVTUxAFEhAKDFBBWVRPVEFQUk9PVBAG');
@$core.Deprecated('Use decredStakingSpendTypeDescriptor instead')
const DecredStakingSpendType$json = const {
  '1': 'DecredStakingSpendType',
  '2': const [
    const {'1': 'SSGen', '2': 0},
    const {'1': 'SSRTX', '2': 1},
  ],
};

/// Descriptor for `DecredStakingSpendType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List decredStakingSpendTypeDescriptor = $convert.base64Decode('ChZEZWNyZWRTdGFraW5nU3BlbmRUeXBlEgkKBVNTR2VuEAASCQoFU1NSVFgQAQ==');
@$core.Deprecated('Use amountUnitDescriptor instead')
const AmountUnit$json = const {
  '1': 'AmountUnit',
  '2': const [
    const {'1': 'BITCOIN', '2': 0},
    const {'1': 'MILLIBITCOIN', '2': 1},
    const {'1': 'MICROBITCOIN', '2': 2},
    const {'1': 'SATOSHI', '2': 3},
  ],
};

/// Descriptor for `AmountUnit`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List amountUnitDescriptor = $convert.base64Decode('CgpBbW91bnRVbml0EgsKB0JJVENPSU4QABIQCgxNSUxMSUJJVENPSU4QARIQCgxNSUNST0JJVENPSU4QAhILCgdTQVRPU0hJEAM=');
@$core.Deprecated('Use multisigPubkeysOrderDescriptor instead')
const MultisigPubkeysOrder$json = const {
  '1': 'MultisigPubkeysOrder',
  '2': const [
    const {'1': 'PRESERVED', '2': 0},
    const {'1': 'LEXICOGRAPHIC', '2': 1},
  ],
};

/// Descriptor for `MultisigPubkeysOrder`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List multisigPubkeysOrderDescriptor = $convert.base64Decode('ChRNdWx0aXNpZ1B1YmtleXNPcmRlchINCglQUkVTRVJWRUQQABIRCg1MRVhJQ09HUkFQSElDEAE=');
@$core.Deprecated('Use multisigRedeemScriptTypeDescriptor instead')
const MultisigRedeemScriptType$json = const {
  '1': 'MultisigRedeemScriptType',
  '2': const [
    const {'1': 'pubkeys', '3': 1, '4': 3, '5': 11, '6': '.hw.trezor.messages.bitcoin.MultisigRedeemScriptType.HDNodePathType', '10': 'pubkeys'},
    const {'1': 'signatures', '3': 2, '4': 3, '5': 12, '10': 'signatures'},
    const {'1': 'm', '3': 3, '4': 2, '5': 13, '10': 'm'},
    const {'1': 'nodes', '3': 4, '4': 3, '5': 11, '6': '.hw.trezor.messages.common.HDNodeType', '10': 'nodes'},
    const {'1': 'address_n', '3': 5, '4': 3, '5': 13, '10': 'addressN'},
    const {'1': 'pubkeys_order', '3': 6, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.MultisigPubkeysOrder', '7': 'PRESERVED', '10': 'pubkeysOrder'},
  ],
  '3': const [MultisigRedeemScriptType_HDNodePathType$json],
};

@$core.Deprecated('Use multisigRedeemScriptTypeDescriptor instead')
const MultisigRedeemScriptType_HDNodePathType$json = const {
  '1': 'HDNodePathType',
  '2': const [
    const {'1': 'node', '3': 1, '4': 2, '5': 11, '6': '.hw.trezor.messages.common.HDNodeType', '10': 'node'},
    const {'1': 'address_n', '3': 2, '4': 3, '5': 13, '10': 'addressN'},
  ],
};

/// Descriptor for `MultisigRedeemScriptType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multisigRedeemScriptTypeDescriptor = $convert.base64Decode('ChhNdWx0aXNpZ1JlZGVlbVNjcmlwdFR5cGUSXQoHcHVia2V5cxgBIAMoCzJDLmh3LnRyZXpvci5tZXNzYWdlcy5iaXRjb2luLk11bHRpc2lnUmVkZWVtU2NyaXB0VHlwZS5IRE5vZGVQYXRoVHlwZVIHcHVia2V5cxIeCgpzaWduYXR1cmVzGAIgAygMUgpzaWduYXR1cmVzEgwKAW0YAyACKA1SAW0SOwoFbm9kZXMYBCADKAsyJS5ody50cmV6b3IubWVzc2FnZXMuY29tbW9uLkhETm9kZVR5cGVSBW5vZGVzEhsKCWFkZHJlc3NfbhgFIAMoDVIIYWRkcmVzc04SYAoNcHVia2V5c19vcmRlchgGIAEoDjIwLmh3LnRyZXpvci5tZXNzYWdlcy5iaXRjb2luLk11bHRpc2lnUHVia2V5c09yZGVyOglQUkVTRVJWRURSDHB1YmtleXNPcmRlchpoCg5IRE5vZGVQYXRoVHlwZRI5CgRub2RlGAEgAigLMiUuaHcudHJlem9yLm1lc3NhZ2VzLmNvbW1vbi5IRE5vZGVUeXBlUgRub2RlEhsKCWFkZHJlc3NfbhgCIAMoDVIIYWRkcmVzc04=');
@$core.Deprecated('Use getPublicKeyDescriptor instead')
const GetPublicKey$json = const {
  '1': 'GetPublicKey',
  '2': const [
    const {'1': 'address_n', '3': 1, '4': 3, '5': 13, '10': 'addressN'},
    const {'1': 'ecdsa_curve_name', '3': 2, '4': 1, '5': 9, '10': 'ecdsaCurveName'},
    const {'1': 'show_display', '3': 3, '4': 1, '5': 8, '10': 'showDisplay'},
    const {'1': 'coin_name', '3': 4, '4': 1, '5': 9, '7': 'Bitcoin', '10': 'coinName'},
    const {'1': 'script_type', '3': 5, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.InputScriptType', '7': 'SPENDADDRESS', '10': 'scriptType'},
    const {'1': 'ignore_xpub_magic', '3': 6, '4': 1, '5': 8, '10': 'ignoreXpubMagic'},
  ],
};

/// Descriptor for `GetPublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPublicKeyDescriptor = $convert.base64Decode('CgxHZXRQdWJsaWNLZXkSGwoJYWRkcmVzc19uGAEgAygNUghhZGRyZXNzThIoChBlY2RzYV9jdXJ2ZV9uYW1lGAIgASgJUg5lY2RzYUN1cnZlTmFtZRIhCgxzaG93X2Rpc3BsYXkYAyABKAhSC3Nob3dEaXNwbGF5EiQKCWNvaW5fbmFtZRgEIAEoCToHQml0Y29pblIIY29pbk5hbWUSWgoLc2NyaXB0X3R5cGUYBSABKA4yKy5ody50cmV6b3IubWVzc2FnZXMuYml0Y29pbi5JbnB1dFNjcmlwdFR5cGU6DFNQRU5EQUREUkVTU1IKc2NyaXB0VHlwZRIqChFpZ25vcmVfeHB1Yl9tYWdpYxgGIAEoCFIPaWdub3JlWHB1Yk1hZ2lj');
@$core.Deprecated('Use publicKeyDescriptor instead')
const PublicKey$json = const {
  '1': 'PublicKey',
  '2': const [
    const {'1': 'node', '3': 1, '4': 2, '5': 11, '6': '.hw.trezor.messages.common.HDNodeType', '10': 'node'},
    const {'1': 'xpub', '3': 2, '4': 2, '5': 9, '10': 'xpub'},
    const {'1': 'root_fingerprint', '3': 3, '4': 1, '5': 13, '10': 'rootFingerprint'},
    const {'1': 'descriptor', '3': 4, '4': 1, '5': 9, '10': 'descriptor'},
  ],
};

/// Descriptor for `PublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publicKeyDescriptor = $convert.base64Decode('CglQdWJsaWNLZXkSOQoEbm9kZRgBIAIoCzIlLmh3LnRyZXpvci5tZXNzYWdlcy5jb21tb24uSEROb2RlVHlwZVIEbm9kZRISCgR4cHViGAIgAigJUgR4cHViEikKEHJvb3RfZmluZ2VycHJpbnQYAyABKA1SD3Jvb3RGaW5nZXJwcmludBIeCgpkZXNjcmlwdG9yGAQgASgJUgpkZXNjcmlwdG9y');
@$core.Deprecated('Use getAddressDescriptor instead')
const GetAddress$json = const {
  '1': 'GetAddress',
  '2': const [
    const {'1': 'address_n', '3': 1, '4': 3, '5': 13, '10': 'addressN'},
    const {'1': 'coin_name', '3': 2, '4': 1, '5': 9, '7': 'Bitcoin', '10': 'coinName'},
    const {'1': 'show_display', '3': 3, '4': 1, '5': 8, '10': 'showDisplay'},
    const {'1': 'multisig', '3': 4, '4': 1, '5': 11, '6': '.hw.trezor.messages.bitcoin.MultisigRedeemScriptType', '10': 'multisig'},
    const {'1': 'script_type', '3': 5, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.InputScriptType', '7': 'SPENDADDRESS', '10': 'scriptType'},
    const {'1': 'ignore_xpub_magic', '3': 6, '4': 1, '5': 8, '10': 'ignoreXpubMagic'},
    const {'1': 'chunkify', '3': 7, '4': 1, '5': 8, '10': 'chunkify'},
  ],
};

/// Descriptor for `GetAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAddressDescriptor = $convert.base64Decode('CgpHZXRBZGRyZXNzEhsKCWFkZHJlc3NfbhgBIAMoDVIIYWRkcmVzc04SJAoJY29pbl9uYW1lGAIgASgJOgdCaXRjb2luUghjb2luTmFtZRIhCgxzaG93X2Rpc3BsYXkYAyABKAhSC3Nob3dEaXNwbGF5ElAKCG11bHRpc2lnGAQgASgLMjQuaHcudHJlem9yLm1lc3NhZ2VzLmJpdGNvaW4uTXVsdGlzaWdSZWRlZW1TY3JpcHRUeXBlUghtdWx0aXNpZxJaCgtzY3JpcHRfdHlwZRgFIAEoDjIrLmh3LnRyZXpvci5tZXNzYWdlcy5iaXRjb2luLklucHV0U2NyaXB0VHlwZToMU1BFTkRBRERSRVNTUgpzY3JpcHRUeXBlEioKEWlnbm9yZV94cHViX21hZ2ljGAYgASgIUg9pZ25vcmVYcHViTWFnaWMSGgoIY2h1bmtpZnkYByABKAhSCGNodW5raWZ5');
@$core.Deprecated('Use addressDescriptor instead')
const Address$json = const {
  '1': 'Address',
  '2': const [
    const {'1': 'address', '3': 1, '4': 2, '5': 9, '10': 'address'},
    const {'1': 'mac', '3': 2, '4': 1, '5': 12, '10': 'mac'},
  ],
};

/// Descriptor for `Address`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addressDescriptor = $convert.base64Decode('CgdBZGRyZXNzEhgKB2FkZHJlc3MYASACKAlSB2FkZHJlc3MSEAoDbWFjGAIgASgMUgNtYWM=');
@$core.Deprecated('Use getOwnershipIdDescriptor instead')
const GetOwnershipId$json = const {
  '1': 'GetOwnershipId',
  '2': const [
    const {'1': 'address_n', '3': 1, '4': 3, '5': 13, '10': 'addressN'},
    const {'1': 'coin_name', '3': 2, '4': 1, '5': 9, '7': 'Bitcoin', '10': 'coinName'},
    const {'1': 'multisig', '3': 3, '4': 1, '5': 11, '6': '.hw.trezor.messages.bitcoin.MultisigRedeemScriptType', '10': 'multisig'},
    const {'1': 'script_type', '3': 4, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.InputScriptType', '7': 'SPENDADDRESS', '10': 'scriptType'},
  ],
};

/// Descriptor for `GetOwnershipId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOwnershipIdDescriptor = $convert.base64Decode('Cg5HZXRPd25lcnNoaXBJZBIbCglhZGRyZXNzX24YASADKA1SCGFkZHJlc3NOEiQKCWNvaW5fbmFtZRgCIAEoCToHQml0Y29pblIIY29pbk5hbWUSUAoIbXVsdGlzaWcYAyABKAsyNC5ody50cmV6b3IubWVzc2FnZXMuYml0Y29pbi5NdWx0aXNpZ1JlZGVlbVNjcmlwdFR5cGVSCG11bHRpc2lnEloKC3NjcmlwdF90eXBlGAQgASgOMisuaHcudHJlem9yLm1lc3NhZ2VzLmJpdGNvaW4uSW5wdXRTY3JpcHRUeXBlOgxTUEVOREFERFJFU1NSCnNjcmlwdFR5cGU=');
@$core.Deprecated('Use ownershipIdDescriptor instead')
const OwnershipId$json = const {
  '1': 'OwnershipId',
  '2': const [
    const {'1': 'ownership_id', '3': 1, '4': 2, '5': 12, '10': 'ownershipId'},
  ],
};

/// Descriptor for `OwnershipId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ownershipIdDescriptor = $convert.base64Decode('CgtPd25lcnNoaXBJZBIhCgxvd25lcnNoaXBfaWQYASACKAxSC293bmVyc2hpcElk');
@$core.Deprecated('Use signMessageDescriptor instead')
const SignMessage$json = const {
  '1': 'SignMessage',
  '2': const [
    const {'1': 'address_n', '3': 1, '4': 3, '5': 13, '10': 'addressN'},
    const {'1': 'message', '3': 2, '4': 2, '5': 12, '10': 'message'},
    const {'1': 'coin_name', '3': 3, '4': 1, '5': 9, '7': 'Bitcoin', '10': 'coinName'},
    const {'1': 'script_type', '3': 4, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.InputScriptType', '7': 'SPENDADDRESS', '10': 'scriptType'},
    const {'1': 'no_script_type', '3': 5, '4': 1, '5': 8, '10': 'noScriptType'},
    const {'1': 'chunkify', '3': 6, '4': 1, '5': 8, '10': 'chunkify'},
  ],
};

/// Descriptor for `SignMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signMessageDescriptor = $convert.base64Decode('CgtTaWduTWVzc2FnZRIbCglhZGRyZXNzX24YASADKA1SCGFkZHJlc3NOEhgKB21lc3NhZ2UYAiACKAxSB21lc3NhZ2USJAoJY29pbl9uYW1lGAMgASgJOgdCaXRjb2luUghjb2luTmFtZRJaCgtzY3JpcHRfdHlwZRgEIAEoDjIrLmh3LnRyZXpvci5tZXNzYWdlcy5iaXRjb2luLklucHV0U2NyaXB0VHlwZToMU1BFTkRBRERSRVNTUgpzY3JpcHRUeXBlEiQKDm5vX3NjcmlwdF90eXBlGAUgASgIUgxub1NjcmlwdFR5cGUSGgoIY2h1bmtpZnkYBiABKAhSCGNodW5raWZ5');
@$core.Deprecated('Use messageSignatureDescriptor instead')
const MessageSignature$json = const {
  '1': 'MessageSignature',
  '2': const [
    const {'1': 'address', '3': 1, '4': 2, '5': 9, '10': 'address'},
    const {'1': 'signature', '3': 2, '4': 2, '5': 12, '10': 'signature'},
  ],
};

/// Descriptor for `MessageSignature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageSignatureDescriptor = $convert.base64Decode('ChBNZXNzYWdlU2lnbmF0dXJlEhgKB2FkZHJlc3MYASACKAlSB2FkZHJlc3MSHAoJc2lnbmF0dXJlGAIgAigMUglzaWduYXR1cmU=');
@$core.Deprecated('Use verifyMessageDescriptor instead')
const VerifyMessage$json = const {
  '1': 'VerifyMessage',
  '2': const [
    const {'1': 'address', '3': 1, '4': 2, '5': 9, '10': 'address'},
    const {'1': 'signature', '3': 2, '4': 2, '5': 12, '10': 'signature'},
    const {'1': 'message', '3': 3, '4': 2, '5': 12, '10': 'message'},
    const {'1': 'coin_name', '3': 4, '4': 1, '5': 9, '7': 'Bitcoin', '10': 'coinName'},
    const {'1': 'chunkify', '3': 5, '4': 1, '5': 8, '10': 'chunkify'},
  ],
};

/// Descriptor for `VerifyMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyMessageDescriptor = $convert.base64Decode('Cg1WZXJpZnlNZXNzYWdlEhgKB2FkZHJlc3MYASACKAlSB2FkZHJlc3MSHAoJc2lnbmF0dXJlGAIgAigMUglzaWduYXR1cmUSGAoHbWVzc2FnZRgDIAIoDFIHbWVzc2FnZRIkCgljb2luX25hbWUYBCABKAk6B0JpdGNvaW5SCGNvaW5OYW1lEhoKCGNodW5raWZ5GAUgASgIUghjaHVua2lmeQ==');
@$core.Deprecated('Use signTxDescriptor instead')
const SignTx$json = const {
  '1': 'SignTx',
  '2': const [
    const {'1': 'outputs_count', '3': 1, '4': 2, '5': 13, '10': 'outputsCount'},
    const {'1': 'inputs_count', '3': 2, '4': 2, '5': 13, '10': 'inputsCount'},
    const {'1': 'coin_name', '3': 3, '4': 1, '5': 9, '7': 'Bitcoin', '10': 'coinName'},
    const {'1': 'version', '3': 4, '4': 1, '5': 13, '7': '1', '10': 'version'},
    const {'1': 'lock_time', '3': 5, '4': 1, '5': 13, '7': '0', '10': 'lockTime'},
    const {'1': 'expiry', '3': 6, '4': 1, '5': 13, '10': 'expiry'},
    const {
      '1': 'overwintered',
      '3': 7,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'overwintered',
    },
    const {'1': 'version_group_id', '3': 8, '4': 1, '5': 13, '10': 'versionGroupId'},
    const {'1': 'timestamp', '3': 9, '4': 1, '5': 13, '10': 'timestamp'},
    const {'1': 'branch_id', '3': 10, '4': 1, '5': 13, '10': 'branchId'},
    const {'1': 'amount_unit', '3': 11, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.AmountUnit', '7': 'BITCOIN', '10': 'amountUnit'},
    const {'1': 'decred_staking_ticket', '3': 12, '4': 1, '5': 8, '7': 'false', '10': 'decredStakingTicket'},
    const {'1': 'serialize', '3': 13, '4': 1, '5': 8, '7': 'true', '10': 'serialize'},
    const {'1': 'coinjoin_request', '3': 14, '4': 1, '5': 11, '6': '.hw.trezor.messages.bitcoin.SignTx.CoinJoinRequest', '10': 'coinjoinRequest'},
    const {'1': 'chunkify', '3': 15, '4': 1, '5': 8, '10': 'chunkify'},
  ],
  '3': const [SignTx_CoinJoinRequest$json],
};

@$core.Deprecated('Use signTxDescriptor instead')
const SignTx_CoinJoinRequest$json = const {
  '1': 'CoinJoinRequest',
  '2': const [
    const {'1': 'fee_rate', '3': 1, '4': 2, '5': 13, '10': 'feeRate'},
    const {'1': 'no_fee_threshold', '3': 2, '4': 2, '5': 4, '10': 'noFeeThreshold'},
    const {'1': 'min_registrable_amount', '3': 3, '4': 2, '5': 4, '10': 'minRegistrableAmount'},
    const {'1': 'mask_public_key', '3': 4, '4': 1, '5': 12, '10': 'maskPublicKey'},
    const {'1': 'signature', '3': 5, '4': 1, '5': 12, '10': 'signature'},
  ],
};

/// Descriptor for `SignTx`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signTxDescriptor = $convert.base64Decode('CgZTaWduVHgSIwoNb3V0cHV0c19jb3VudBgBIAIoDVIMb3V0cHV0c0NvdW50EiEKDGlucHV0c19jb3VudBgCIAIoDVILaW5wdXRzQ291bnQSJAoJY29pbl9uYW1lGAMgASgJOgdCaXRjb2luUghjb2luTmFtZRIbCgd2ZXJzaW9uGAQgASgNOgExUgd2ZXJzaW9uEh4KCWxvY2tfdGltZRgFIAEoDToBMFIIbG9ja1RpbWUSFgoGZXhwaXJ5GAYgASgNUgZleHBpcnkSJgoMb3ZlcndpbnRlcmVkGAcgASgIQgIYAVIMb3ZlcndpbnRlcmVkEigKEHZlcnNpb25fZ3JvdXBfaWQYCCABKA1SDnZlcnNpb25Hcm91cElkEhwKCXRpbWVzdGFtcBgJIAEoDVIJdGltZXN0YW1wEhsKCWJyYW5jaF9pZBgKIAEoDVIIYnJhbmNoSWQSUAoLYW1vdW50X3VuaXQYCyABKA4yJi5ody50cmV6b3IubWVzc2FnZXMuYml0Y29pbi5BbW91bnRVbml0OgdCSVRDT0lOUgphbW91bnRVbml0EjkKFWRlY3JlZF9zdGFraW5nX3RpY2tldBgMIAEoCDoFZmFsc2VSE2RlY3JlZFN0YWtpbmdUaWNrZXQSIgoJc2VyaWFsaXplGA0gASgIOgR0cnVlUglzZXJpYWxpemUSXQoQY29pbmpvaW5fcmVxdWVzdBgOIAEoCzIyLmh3LnRyZXpvci5tZXNzYWdlcy5iaXRjb2luLlNpZ25UeC5Db2luSm9pblJlcXVlc3RSD2NvaW5qb2luUmVxdWVzdBIaCghjaHVua2lmeRgPIAEoCFIIY2h1bmtpZnka0gEKD0NvaW5Kb2luUmVxdWVzdBIZCghmZWVfcmF0ZRgBIAIoDVIHZmVlUmF0ZRIoChBub19mZWVfdGhyZXNob2xkGAIgAigEUg5ub0ZlZVRocmVzaG9sZBI0ChZtaW5fcmVnaXN0cmFibGVfYW1vdW50GAMgAigEUhRtaW5SZWdpc3RyYWJsZUFtb3VudBImCg9tYXNrX3B1YmxpY19rZXkYBCABKAxSDW1hc2tQdWJsaWNLZXkSHAoJc2lnbmF0dXJlGAUgASgMUglzaWduYXR1cmU=');
@$core.Deprecated('Use txRequestDescriptor instead')
const TxRequest$json = const {
  '1': 'TxRequest',
  '2': const [
    const {'1': 'request_type', '3': 1, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.TxRequest.RequestType', '10': 'requestType'},
    const {'1': 'details', '3': 2, '4': 1, '5': 11, '6': '.hw.trezor.messages.bitcoin.TxRequest.TxRequestDetailsType', '10': 'details'},
    const {'1': 'serialized', '3': 3, '4': 1, '5': 11, '6': '.hw.trezor.messages.bitcoin.TxRequest.TxRequestSerializedType', '10': 'serialized'},
  ],
  '3': const [TxRequest_TxRequestDetailsType$json, TxRequest_TxRequestSerializedType$json],
  '4': const [TxRequest_RequestType$json],
};

@$core.Deprecated('Use txRequestDescriptor instead')
const TxRequest_TxRequestDetailsType$json = const {
  '1': 'TxRequestDetailsType',
  '2': const [
    const {'1': 'request_index', '3': 1, '4': 1, '5': 13, '10': 'requestIndex'},
    const {'1': 'tx_hash', '3': 2, '4': 1, '5': 12, '10': 'txHash'},
    const {'1': 'extra_data_len', '3': 3, '4': 1, '5': 13, '10': 'extraDataLen'},
    const {'1': 'extra_data_offset', '3': 4, '4': 1, '5': 13, '10': 'extraDataOffset'},
  ],
};

@$core.Deprecated('Use txRequestDescriptor instead')
const TxRequest_TxRequestSerializedType$json = const {
  '1': 'TxRequestSerializedType',
  '2': const [
    const {'1': 'signature_index', '3': 1, '4': 1, '5': 13, '10': 'signatureIndex'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
    const {'1': 'serialized_tx', '3': 3, '4': 1, '5': 12, '10': 'serializedTx'},
  ],
};

@$core.Deprecated('Use txRequestDescriptor instead')
const TxRequest_RequestType$json = const {
  '1': 'RequestType',
  '2': const [
    const {'1': 'TXINPUT', '2': 0},
    const {'1': 'TXOUTPUT', '2': 1},
    const {'1': 'TXMETA', '2': 2},
    const {'1': 'TXFINISHED', '2': 3},
    const {'1': 'TXEXTRADATA', '2': 4},
    const {'1': 'TXORIGINPUT', '2': 5},
    const {'1': 'TXORIGOUTPUT', '2': 6},
    const {'1': 'TXPAYMENTREQ', '2': 7},
  ],
};

/// Descriptor for `TxRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txRequestDescriptor = $convert.base64Decode('CglUeFJlcXVlc3QSVAoMcmVxdWVzdF90eXBlGAEgASgOMjEuaHcudHJlem9yLm1lc3NhZ2VzLmJpdGNvaW4uVHhSZXF1ZXN0LlJlcXVlc3RUeXBlUgtyZXF1ZXN0VHlwZRJUCgdkZXRhaWxzGAIgASgLMjouaHcudHJlem9yLm1lc3NhZ2VzLmJpdGNvaW4uVHhSZXF1ZXN0LlR4UmVxdWVzdERldGFpbHNUeXBlUgdkZXRhaWxzEl0KCnNlcmlhbGl6ZWQYAyABKAsyPS5ody50cmV6b3IubWVzc2FnZXMuYml0Y29pbi5UeFJlcXVlc3QuVHhSZXF1ZXN0U2VyaWFsaXplZFR5cGVSCnNlcmlhbGl6ZWQapgEKFFR4UmVxdWVzdERldGFpbHNUeXBlEiMKDXJlcXVlc3RfaW5kZXgYASABKA1SDHJlcXVlc3RJbmRleBIXCgd0eF9oYXNoGAIgASgMUgZ0eEhhc2gSJAoOZXh0cmFfZGF0YV9sZW4YAyABKA1SDGV4dHJhRGF0YUxlbhIqChFleHRyYV9kYXRhX29mZnNldBgEIAEoDVIPZXh0cmFEYXRhT2Zmc2V0GoUBChdUeFJlcXVlc3RTZXJpYWxpemVkVHlwZRInCg9zaWduYXR1cmVfaW5kZXgYASABKA1SDnNpZ25hdHVyZUluZGV4EhwKCXNpZ25hdHVyZRgCIAEoDFIJc2lnbmF0dXJlEiMKDXNlcmlhbGl6ZWRfdHgYAyABKAxSDHNlcmlhbGl6ZWRUeCKKAQoLUmVxdWVzdFR5cGUSCwoHVFhJTlBVVBAAEgwKCFRYT1VUUFVUEAESCgoGVFhNRVRBEAISDgoKVFhGSU5JU0hFRBADEg8KC1RYRVhUUkFEQVRBEAQSDwoLVFhPUklHSU5QVVQQBRIQCgxUWE9SSUdPVVRQVVQQBhIQCgxUWFBBWU1FTlRSRVEQBw==');
@$core.Deprecated('Use txAckDescriptor instead')
const TxAck$json = const {
  '1': 'TxAck',
  '2': const [
    const {'1': 'tx', '3': 1, '4': 1, '5': 11, '6': '.hw.trezor.messages.bitcoin.TxAck.TransactionType', '10': 'tx'},
  ],
  '3': const [TxAck_TransactionType$json],
  '7': const {'3': true},
};

@$core.Deprecated('Use txAckDescriptor instead')
const TxAck_TransactionType$json = const {
  '1': 'TransactionType',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 13, '10': 'version'},
    const {'1': 'inputs', '3': 2, '4': 3, '5': 11, '6': '.hw.trezor.messages.bitcoin.TxAck.TransactionType.TxInputType', '10': 'inputs'},
    const {'1': 'bin_outputs', '3': 3, '4': 3, '5': 11, '6': '.hw.trezor.messages.bitcoin.TxAck.TransactionType.TxOutputBinType', '10': 'binOutputs'},
    const {'1': 'lock_time', '3': 4, '4': 1, '5': 13, '10': 'lockTime'},
    const {'1': 'outputs', '3': 5, '4': 3, '5': 11, '6': '.hw.trezor.messages.bitcoin.TxAck.TransactionType.TxOutputType', '10': 'outputs'},
    const {'1': 'inputs_cnt', '3': 6, '4': 1, '5': 13, '10': 'inputsCnt'},
    const {'1': 'outputs_cnt', '3': 7, '4': 1, '5': 13, '10': 'outputsCnt'},
    const {'1': 'extra_data', '3': 8, '4': 1, '5': 12, '10': 'extraData'},
    const {'1': 'extra_data_len', '3': 9, '4': 1, '5': 13, '10': 'extraDataLen'},
    const {'1': 'expiry', '3': 10, '4': 1, '5': 13, '10': 'expiry'},
    const {
      '1': 'overwintered',
      '3': 11,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'overwintered',
    },
    const {'1': 'version_group_id', '3': 12, '4': 1, '5': 13, '10': 'versionGroupId'},
    const {'1': 'timestamp', '3': 13, '4': 1, '5': 13, '10': 'timestamp'},
    const {'1': 'branch_id', '3': 14, '4': 1, '5': 13, '10': 'branchId'},
  ],
  '3': const [TxAck_TransactionType_TxInputType$json, TxAck_TransactionType_TxOutputBinType$json, TxAck_TransactionType_TxOutputType$json],
};

@$core.Deprecated('Use txAckDescriptor instead')
const TxAck_TransactionType_TxInputType$json = const {
  '1': 'TxInputType',
  '2': const [
    const {'1': 'address_n', '3': 1, '4': 3, '5': 13, '10': 'addressN'},
    const {'1': 'prev_hash', '3': 2, '4': 2, '5': 12, '10': 'prevHash'},
    const {'1': 'prev_index', '3': 3, '4': 2, '5': 13, '10': 'prevIndex'},
    const {'1': 'script_sig', '3': 4, '4': 1, '5': 12, '10': 'scriptSig'},
    const {'1': 'sequence', '3': 5, '4': 1, '5': 13, '7': '4294967295', '10': 'sequence'},
    const {'1': 'script_type', '3': 6, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.InputScriptType', '7': 'SPENDADDRESS', '10': 'scriptType'},
    const {'1': 'multisig', '3': 7, '4': 1, '5': 11, '6': '.hw.trezor.messages.bitcoin.MultisigRedeemScriptType', '10': 'multisig'},
    const {'1': 'amount', '3': 8, '4': 1, '5': 4, '10': 'amount'},
    const {'1': 'decred_tree', '3': 9, '4': 1, '5': 13, '10': 'decredTree'},
    const {'1': 'witness', '3': 13, '4': 1, '5': 12, '10': 'witness'},
    const {'1': 'ownership_proof', '3': 14, '4': 1, '5': 12, '10': 'ownershipProof'},
    const {'1': 'commitment_data', '3': 15, '4': 1, '5': 12, '10': 'commitmentData'},
    const {'1': 'orig_hash', '3': 16, '4': 1, '5': 12, '10': 'origHash'},
    const {'1': 'orig_index', '3': 17, '4': 1, '5': 13, '10': 'origIndex'},
    const {'1': 'decred_staking_spend', '3': 18, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.DecredStakingSpendType', '10': 'decredStakingSpend'},
    const {'1': 'script_pubkey', '3': 19, '4': 1, '5': 12, '10': 'scriptPubkey'},
    const {'1': 'coinjoin_flags', '3': 20, '4': 1, '5': 13, '7': '0', '10': 'coinjoinFlags'},
  ],
};

@$core.Deprecated('Use txAckDescriptor instead')
const TxAck_TransactionType_TxOutputBinType$json = const {
  '1': 'TxOutputBinType',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 2, '5': 4, '10': 'amount'},
    const {'1': 'script_pubkey', '3': 2, '4': 2, '5': 12, '10': 'scriptPubkey'},
    const {'1': 'decred_script_version', '3': 3, '4': 1, '5': 13, '10': 'decredScriptVersion'},
  ],
};

@$core.Deprecated('Use txAckDescriptor instead')
const TxAck_TransactionType_TxOutputType$json = const {
  '1': 'TxOutputType',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'address_n', '3': 2, '4': 3, '5': 13, '10': 'addressN'},
    const {'1': 'amount', '3': 3, '4': 2, '5': 4, '10': 'amount'},
    const {'1': 'script_type', '3': 4, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.OutputScriptType', '7': 'PAYTOADDRESS', '10': 'scriptType'},
    const {'1': 'multisig', '3': 5, '4': 1, '5': 11, '6': '.hw.trezor.messages.bitcoin.MultisigRedeemScriptType', '10': 'multisig'},
    const {'1': 'op_return_data', '3': 6, '4': 1, '5': 12, '10': 'opReturnData'},
    const {'1': 'orig_hash', '3': 10, '4': 1, '5': 12, '10': 'origHash'},
    const {'1': 'orig_index', '3': 11, '4': 1, '5': 13, '10': 'origIndex'},
    const {'1': 'payment_req_index', '3': 12, '4': 1, '5': 13, '10': 'paymentReqIndex'},
  ],
};

/// Descriptor for `TxAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txAckDescriptor = $convert.base64Decode('CgVUeEFjaxJBCgJ0eBgBIAEoCzIxLmh3LnRyZXpvci5tZXNzYWdlcy5iaXRjb2luLlR4QWNrLlRyYW5zYWN0aW9uVHlwZVICdHganQ8KD1RyYW5zYWN0aW9uVHlwZRIYCgd2ZXJzaW9uGAEgASgNUgd2ZXJzaW9uElUKBmlucHV0cxgCIAMoCzI9Lmh3LnRyZXpvci5tZXNzYWdlcy5iaXRjb2luLlR4QWNrLlRyYW5zYWN0aW9uVHlwZS5UeElucHV0VHlwZVIGaW5wdXRzEmIKC2Jpbl9vdXRwdXRzGAMgAygLMkEuaHcudHJlem9yLm1lc3NhZ2VzLmJpdGNvaW4uVHhBY2suVHJhbnNhY3Rpb25UeXBlLlR4T3V0cHV0QmluVHlwZVIKYmluT3V0cHV0cxIbCglsb2NrX3RpbWUYBCABKA1SCGxvY2tUaW1lElgKB291dHB1dHMYBSADKAsyPi5ody50cmV6b3IubWVzc2FnZXMuYml0Y29pbi5UeEFjay5UcmFuc2FjdGlvblR5cGUuVHhPdXRwdXRUeXBlUgdvdXRwdXRzEh0KCmlucHV0c19jbnQYBiABKA1SCWlucHV0c0NudBIfCgtvdXRwdXRzX2NudBgHIAEoDVIKb3V0cHV0c0NudBIdCgpleHRyYV9kYXRhGAggASgMUglleHRyYURhdGESJAoOZXh0cmFfZGF0YV9sZW4YCSABKA1SDGV4dHJhRGF0YUxlbhIWCgZleHBpcnkYCiABKA1SBmV4cGlyeRImCgxvdmVyd2ludGVyZWQYCyABKAhCAhgBUgxvdmVyd2ludGVyZWQSKAoQdmVyc2lvbl9ncm91cF9pZBgMIAEoDVIOdmVyc2lvbkdyb3VwSWQSHAoJdGltZXN0YW1wGA0gASgNUgl0aW1lc3RhbXASGwoJYnJhbmNoX2lkGA4gASgNUghicmFuY2hJZBrxBQoLVHhJbnB1dFR5cGUSGwoJYWRkcmVzc19uGAEgAygNUghhZGRyZXNzThIbCglwcmV2X2hhc2gYAiACKAxSCHByZXZIYXNoEh0KCnByZXZfaW5kZXgYAyACKA1SCXByZXZJbmRleBIdCgpzY3JpcHRfc2lnGAQgASgMUglzY3JpcHRTaWcSJgoIc2VxdWVuY2UYBSABKA06CjQyOTQ5NjcyOTVSCHNlcXVlbmNlEloKC3NjcmlwdF90eXBlGAYgASgOMisuaHcudHJlem9yLm1lc3NhZ2VzLmJpdGNvaW4uSW5wdXRTY3JpcHRUeXBlOgxTUEVOREFERFJFU1NSCnNjcmlwdFR5cGUSUAoIbXVsdGlzaWcYByABKAsyNC5ody50cmV6b3IubWVzc2FnZXMuYml0Y29pbi5NdWx0aXNpZ1JlZGVlbVNjcmlwdFR5cGVSCG11bHRpc2lnEhYKBmFtb3VudBgIIAEoBFIGYW1vdW50Eh8KC2RlY3JlZF90cmVlGAkgASgNUgpkZWNyZWRUcmVlEhgKB3dpdG5lc3MYDSABKAxSB3dpdG5lc3MSJwoPb3duZXJzaGlwX3Byb29mGA4gASgMUg5vd25lcnNoaXBQcm9vZhInCg9jb21taXRtZW50X2RhdGEYDyABKAxSDmNvbW1pdG1lbnREYXRhEhsKCW9yaWdfaGFzaBgQIAEoDFIIb3JpZ0hhc2gSHQoKb3JpZ19pbmRleBgRIAEoDVIJb3JpZ0luZGV4EmQKFGRlY3JlZF9zdGFraW5nX3NwZW5kGBIgASgOMjIuaHcudHJlem9yLm1lc3NhZ2VzLmJpdGNvaW4uRGVjcmVkU3Rha2luZ1NwZW5kVHlwZVISZGVjcmVkU3Rha2luZ1NwZW5kEiMKDXNjcmlwdF9wdWJrZXkYEyABKAxSDHNjcmlwdFB1YmtleRIoCg5jb2luam9pbl9mbGFncxgUIAEoDToBMFINY29pbmpvaW5GbGFncxqCAQoPVHhPdXRwdXRCaW5UeXBlEhYKBmFtb3VudBgBIAIoBFIGYW1vdW50EiMKDXNjcmlwdF9wdWJrZXkYAiACKAxSDHNjcmlwdFB1YmtleRIyChVkZWNyZWRfc2NyaXB0X3ZlcnNpb24YAyABKA1SE2RlY3JlZFNjcmlwdFZlcnNpb24amgMKDFR4T3V0cHV0VHlwZRIYCgdhZGRyZXNzGAEgASgJUgdhZGRyZXNzEhsKCWFkZHJlc3NfbhgCIAMoDVIIYWRkcmVzc04SFgoGYW1vdW50GAMgAigEUgZhbW91bnQSWwoLc2NyaXB0X3R5cGUYBCABKA4yLC5ody50cmV6b3IubWVzc2FnZXMuYml0Y29pbi5PdXRwdXRTY3JpcHRUeXBlOgxQQVlUT0FERFJFU1NSCnNjcmlwdFR5cGUSUAoIbXVsdGlzaWcYBSABKAsyNC5ody50cmV6b3IubWVzc2FnZXMuYml0Y29pbi5NdWx0aXNpZ1JlZGVlbVNjcmlwdFR5cGVSCG11bHRpc2lnEiQKDm9wX3JldHVybl9kYXRhGAYgASgMUgxvcFJldHVybkRhdGESGwoJb3JpZ19oYXNoGAogASgMUghvcmlnSGFzaBIdCgpvcmlnX2luZGV4GAsgASgNUglvcmlnSW5kZXgSKgoRcGF5bWVudF9yZXFfaW5kZXgYDCABKA1SD3BheW1lbnRSZXFJbmRleDoCGAE=');
@$core.Deprecated('Use txInputDescriptor instead')
const TxInput$json = const {
  '1': 'TxInput',
  '2': const [
    const {'1': 'address_n', '3': 1, '4': 3, '5': 13, '10': 'addressN'},
    const {'1': 'prev_hash', '3': 2, '4': 2, '5': 12, '10': 'prevHash'},
    const {'1': 'prev_index', '3': 3, '4': 2, '5': 13, '10': 'prevIndex'},
    const {'1': 'script_sig', '3': 4, '4': 1, '5': 12, '10': 'scriptSig'},
    const {'1': 'sequence', '3': 5, '4': 1, '5': 13, '7': '4294967295', '10': 'sequence'},
    const {'1': 'script_type', '3': 6, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.InputScriptType', '7': 'SPENDADDRESS', '10': 'scriptType'},
    const {'1': 'multisig', '3': 7, '4': 1, '5': 11, '6': '.hw.trezor.messages.bitcoin.MultisigRedeemScriptType', '10': 'multisig'},
    const {'1': 'amount', '3': 8, '4': 2, '5': 4, '10': 'amount'},
    const {'1': 'decred_tree', '3': 9, '4': 1, '5': 13, '10': 'decredTree'},
    const {'1': 'witness', '3': 13, '4': 1, '5': 12, '10': 'witness'},
    const {'1': 'ownership_proof', '3': 14, '4': 1, '5': 12, '10': 'ownershipProof'},
    const {'1': 'commitment_data', '3': 15, '4': 1, '5': 12, '10': 'commitmentData'},
    const {'1': 'orig_hash', '3': 16, '4': 1, '5': 12, '10': 'origHash'},
    const {'1': 'orig_index', '3': 17, '4': 1, '5': 13, '10': 'origIndex'},
    const {'1': 'decred_staking_spend', '3': 18, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.DecredStakingSpendType', '10': 'decredStakingSpend'},
    const {'1': 'script_pubkey', '3': 19, '4': 1, '5': 12, '10': 'scriptPubkey'},
    const {'1': 'coinjoin_flags', '3': 20, '4': 1, '5': 13, '7': '0', '10': 'coinjoinFlags'},
  ],
  '9': const [
    const {'1': 10, '2': 11},
    const {'1': 11, '2': 12},
    const {'1': 12, '2': 13},
  ],
};

/// Descriptor for `TxInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txInputDescriptor = $convert.base64Decode('CgdUeElucHV0EhsKCWFkZHJlc3NfbhgBIAMoDVIIYWRkcmVzc04SGwoJcHJldl9oYXNoGAIgAigMUghwcmV2SGFzaBIdCgpwcmV2X2luZGV4GAMgAigNUglwcmV2SW5kZXgSHQoKc2NyaXB0X3NpZxgEIAEoDFIJc2NyaXB0U2lnEiYKCHNlcXVlbmNlGAUgASgNOgo0Mjk0OTY3Mjk1UghzZXF1ZW5jZRJaCgtzY3JpcHRfdHlwZRgGIAEoDjIrLmh3LnRyZXpvci5tZXNzYWdlcy5iaXRjb2luLklucHV0U2NyaXB0VHlwZToMU1BFTkRBRERSRVNTUgpzY3JpcHRUeXBlElAKCG11bHRpc2lnGAcgASgLMjQuaHcudHJlem9yLm1lc3NhZ2VzLmJpdGNvaW4uTXVsdGlzaWdSZWRlZW1TY3JpcHRUeXBlUghtdWx0aXNpZxIWCgZhbW91bnQYCCACKARSBmFtb3VudBIfCgtkZWNyZWRfdHJlZRgJIAEoDVIKZGVjcmVkVHJlZRIYCgd3aXRuZXNzGA0gASgMUgd3aXRuZXNzEicKD293bmVyc2hpcF9wcm9vZhgOIAEoDFIOb3duZXJzaGlwUHJvb2YSJwoPY29tbWl0bWVudF9kYXRhGA8gASgMUg5jb21taXRtZW50RGF0YRIbCglvcmlnX2hhc2gYECABKAxSCG9yaWdIYXNoEh0KCm9yaWdfaW5kZXgYESABKA1SCW9yaWdJbmRleBJkChRkZWNyZWRfc3Rha2luZ19zcGVuZBgSIAEoDjIyLmh3LnRyZXpvci5tZXNzYWdlcy5iaXRjb2luLkRlY3JlZFN0YWtpbmdTcGVuZFR5cGVSEmRlY3JlZFN0YWtpbmdTcGVuZBIjCg1zY3JpcHRfcHVia2V5GBMgASgMUgxzY3JpcHRQdWJrZXkSKAoOY29pbmpvaW5fZmxhZ3MYFCABKA06ATBSDWNvaW5qb2luRmxhZ3NKBAgKEAtKBAgLEAxKBAgMEA0=');
@$core.Deprecated('Use txOutputDescriptor instead')
const TxOutput$json = const {
  '1': 'TxOutput',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'address_n', '3': 2, '4': 3, '5': 13, '10': 'addressN'},
    const {'1': 'amount', '3': 3, '4': 2, '5': 4, '10': 'amount'},
    const {'1': 'script_type', '3': 4, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.OutputScriptType', '7': 'PAYTOADDRESS', '10': 'scriptType'},
    const {'1': 'multisig', '3': 5, '4': 1, '5': 11, '6': '.hw.trezor.messages.bitcoin.MultisigRedeemScriptType', '10': 'multisig'},
    const {'1': 'op_return_data', '3': 6, '4': 1, '5': 12, '10': 'opReturnData'},
    const {'1': 'orig_hash', '3': 10, '4': 1, '5': 12, '10': 'origHash'},
    const {'1': 'orig_index', '3': 11, '4': 1, '5': 13, '10': 'origIndex'},
    const {'1': 'payment_req_index', '3': 12, '4': 1, '5': 13, '10': 'paymentReqIndex'},
  ],
  '9': const [
    const {'1': 7, '2': 8},
    const {'1': 8, '2': 9},
    const {'1': 9, '2': 10},
  ],
};

/// Descriptor for `TxOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txOutputDescriptor = $convert.base64Decode('CghUeE91dHB1dBIYCgdhZGRyZXNzGAEgASgJUgdhZGRyZXNzEhsKCWFkZHJlc3NfbhgCIAMoDVIIYWRkcmVzc04SFgoGYW1vdW50GAMgAigEUgZhbW91bnQSWwoLc2NyaXB0X3R5cGUYBCABKA4yLC5ody50cmV6b3IubWVzc2FnZXMuYml0Y29pbi5PdXRwdXRTY3JpcHRUeXBlOgxQQVlUT0FERFJFU1NSCnNjcmlwdFR5cGUSUAoIbXVsdGlzaWcYBSABKAsyNC5ody50cmV6b3IubWVzc2FnZXMuYml0Y29pbi5NdWx0aXNpZ1JlZGVlbVNjcmlwdFR5cGVSCG11bHRpc2lnEiQKDm9wX3JldHVybl9kYXRhGAYgASgMUgxvcFJldHVybkRhdGESGwoJb3JpZ19oYXNoGAogASgMUghvcmlnSGFzaBIdCgpvcmlnX2luZGV4GAsgASgNUglvcmlnSW5kZXgSKgoRcGF5bWVudF9yZXFfaW5kZXgYDCABKA1SD3BheW1lbnRSZXFJbmRleEoECAcQCEoECAgQCUoECAkQCg==');
@$core.Deprecated('Use prevTxDescriptor instead')
const PrevTx$json = const {
  '1': 'PrevTx',
  '2': const [
    const {'1': 'version', '3': 1, '4': 2, '5': 13, '10': 'version'},
    const {'1': 'lock_time', '3': 4, '4': 2, '5': 13, '10': 'lockTime'},
    const {'1': 'inputs_count', '3': 6, '4': 2, '5': 13, '10': 'inputsCount'},
    const {'1': 'outputs_count', '3': 7, '4': 2, '5': 13, '10': 'outputsCount'},
    const {'1': 'extra_data_len', '3': 9, '4': 1, '5': 13, '7': '0', '10': 'extraDataLen'},
    const {'1': 'expiry', '3': 10, '4': 1, '5': 13, '10': 'expiry'},
    const {'1': 'version_group_id', '3': 12, '4': 1, '5': 13, '10': 'versionGroupId'},
    const {'1': 'timestamp', '3': 13, '4': 1, '5': 13, '10': 'timestamp'},
    const {'1': 'branch_id', '3': 14, '4': 1, '5': 13, '10': 'branchId'},
  ],
  '9': const [
    const {'1': 2, '2': 3},
    const {'1': 3, '2': 4},
    const {'1': 5, '2': 6},
    const {'1': 8, '2': 9},
    const {'1': 11, '2': 12},
  ],
};

/// Descriptor for `PrevTx`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prevTxDescriptor = $convert.base64Decode('CgZQcmV2VHgSGAoHdmVyc2lvbhgBIAIoDVIHdmVyc2lvbhIbCglsb2NrX3RpbWUYBCACKA1SCGxvY2tUaW1lEiEKDGlucHV0c19jb3VudBgGIAIoDVILaW5wdXRzQ291bnQSIwoNb3V0cHV0c19jb3VudBgHIAIoDVIMb3V0cHV0c0NvdW50EicKDmV4dHJhX2RhdGFfbGVuGAkgASgNOgEwUgxleHRyYURhdGFMZW4SFgoGZXhwaXJ5GAogASgNUgZleHBpcnkSKAoQdmVyc2lvbl9ncm91cF9pZBgMIAEoDVIOdmVyc2lvbkdyb3VwSWQSHAoJdGltZXN0YW1wGA0gASgNUgl0aW1lc3RhbXASGwoJYnJhbmNoX2lkGA4gASgNUghicmFuY2hJZEoECAIQA0oECAMQBEoECAUQBkoECAgQCUoECAsQDA==');
@$core.Deprecated('Use prevInputDescriptor instead')
const PrevInput$json = const {
  '1': 'PrevInput',
  '2': const [
    const {'1': 'prev_hash', '3': 2, '4': 2, '5': 12, '10': 'prevHash'},
    const {'1': 'prev_index', '3': 3, '4': 2, '5': 13, '10': 'prevIndex'},
    const {'1': 'script_sig', '3': 4, '4': 2, '5': 12, '10': 'scriptSig'},
    const {'1': 'sequence', '3': 5, '4': 2, '5': 13, '10': 'sequence'},
    const {'1': 'decred_tree', '3': 9, '4': 1, '5': 13, '10': 'decredTree'},
  ],
  '9': const [
    const {'1': 1, '2': 2},
    const {'1': 6, '2': 7},
    const {'1': 7, '2': 8},
    const {'1': 8, '2': 9},
    const {'1': 10, '2': 11},
    const {'1': 11, '2': 12},
    const {'1': 12, '2': 13},
    const {'1': 13, '2': 14},
    const {'1': 14, '2': 15},
    const {'1': 15, '2': 16},
    const {'1': 16, '2': 17},
    const {'1': 17, '2': 18},
    const {'1': 18, '2': 19},
    const {'1': 19, '2': 20},
  ],
};

/// Descriptor for `PrevInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prevInputDescriptor = $convert.base64Decode('CglQcmV2SW5wdXQSGwoJcHJldl9oYXNoGAIgAigMUghwcmV2SGFzaBIdCgpwcmV2X2luZGV4GAMgAigNUglwcmV2SW5kZXgSHQoKc2NyaXB0X3NpZxgEIAIoDFIJc2NyaXB0U2lnEhoKCHNlcXVlbmNlGAUgAigNUghzZXF1ZW5jZRIfCgtkZWNyZWRfdHJlZRgJIAEoDVIKZGVjcmVkVHJlZUoECAEQAkoECAYQB0oECAcQCEoECAgQCUoECAoQC0oECAsQDEoECAwQDUoECA0QDkoECA4QD0oECA8QEEoECBAQEUoECBEQEkoECBIQE0oECBMQFA==');
@$core.Deprecated('Use prevOutputDescriptor instead')
const PrevOutput$json = const {
  '1': 'PrevOutput',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 2, '5': 4, '10': 'amount'},
    const {'1': 'script_pubkey', '3': 2, '4': 2, '5': 12, '10': 'scriptPubkey'},
    const {'1': 'decred_script_version', '3': 3, '4': 1, '5': 13, '10': 'decredScriptVersion'},
  ],
};

/// Descriptor for `PrevOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prevOutputDescriptor = $convert.base64Decode('CgpQcmV2T3V0cHV0EhYKBmFtb3VudBgBIAIoBFIGYW1vdW50EiMKDXNjcmlwdF9wdWJrZXkYAiACKAxSDHNjcmlwdFB1YmtleRIyChVkZWNyZWRfc2NyaXB0X3ZlcnNpb24YAyABKA1SE2RlY3JlZFNjcmlwdFZlcnNpb24=');
@$core.Deprecated('Use txAckInputDescriptor instead')
const TxAckInput$json = const {
  '1': 'TxAckInput',
  '2': const [
    const {'1': 'tx', '3': 1, '4': 2, '5': 11, '6': '.hw.trezor.messages.bitcoin.TxAckInput.TxAckInputWrapper', '10': 'tx'},
  ],
  '3': const [TxAckInput_TxAckInputWrapper$json],
  '7': const {},
};

@$core.Deprecated('Use txAckInputDescriptor instead')
const TxAckInput_TxAckInputWrapper$json = const {
  '1': 'TxAckInputWrapper',
  '2': const [
    const {'1': 'input', '3': 2, '4': 2, '5': 11, '6': '.hw.trezor.messages.bitcoin.TxInput', '10': 'input'},
  ],
};

/// Descriptor for `TxAckInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txAckInputDescriptor = $convert.base64Decode('CgpUeEFja0lucHV0EkgKAnR4GAEgAigLMjguaHcudHJlem9yLm1lc3NhZ2VzLmJpdGNvaW4uVHhBY2tJbnB1dC5UeEFja0lucHV0V3JhcHBlclICdHgaTgoRVHhBY2tJbnB1dFdyYXBwZXISOQoFaW5wdXQYAiACKAsyIy5ody50cmV6b3IubWVzc2FnZXMuYml0Y29pbi5UeElucHV0UgVpbnB1dDoEkLIZFg==');
@$core.Deprecated('Use txAckOutputDescriptor instead')
const TxAckOutput$json = const {
  '1': 'TxAckOutput',
  '2': const [
    const {'1': 'tx', '3': 1, '4': 2, '5': 11, '6': '.hw.trezor.messages.bitcoin.TxAckOutput.TxAckOutputWrapper', '10': 'tx'},
  ],
  '3': const [TxAckOutput_TxAckOutputWrapper$json],
  '7': const {},
};

@$core.Deprecated('Use txAckOutputDescriptor instead')
const TxAckOutput_TxAckOutputWrapper$json = const {
  '1': 'TxAckOutputWrapper',
  '2': const [
    const {'1': 'output', '3': 5, '4': 2, '5': 11, '6': '.hw.trezor.messages.bitcoin.TxOutput', '10': 'output'},
  ],
};

/// Descriptor for `TxAckOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txAckOutputDescriptor = $convert.base64Decode('CgtUeEFja091dHB1dBJKCgJ0eBgBIAIoCzI6Lmh3LnRyZXpvci5tZXNzYWdlcy5iaXRjb2luLlR4QWNrT3V0cHV0LlR4QWNrT3V0cHV0V3JhcHBlclICdHgaUgoSVHhBY2tPdXRwdXRXcmFwcGVyEjwKBm91dHB1dBgFIAIoCzIkLmh3LnRyZXpvci5tZXNzYWdlcy5iaXRjb2luLlR4T3V0cHV0UgZvdXRwdXQ6BJCyGRY=');
@$core.Deprecated('Use txAckPrevMetaDescriptor instead')
const TxAckPrevMeta$json = const {
  '1': 'TxAckPrevMeta',
  '2': const [
    const {'1': 'tx', '3': 1, '4': 2, '5': 11, '6': '.hw.trezor.messages.bitcoin.PrevTx', '10': 'tx'},
  ],
  '7': const {},
};

/// Descriptor for `TxAckPrevMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txAckPrevMetaDescriptor = $convert.base64Decode('Cg1UeEFja1ByZXZNZXRhEjIKAnR4GAEgAigLMiIuaHcudHJlem9yLm1lc3NhZ2VzLmJpdGNvaW4uUHJldlR4UgJ0eDoEkLIZFg==');
@$core.Deprecated('Use txAckPrevInputDescriptor instead')
const TxAckPrevInput$json = const {
  '1': 'TxAckPrevInput',
  '2': const [
    const {'1': 'tx', '3': 1, '4': 2, '5': 11, '6': '.hw.trezor.messages.bitcoin.TxAckPrevInput.TxAckPrevInputWrapper', '10': 'tx'},
  ],
  '3': const [TxAckPrevInput_TxAckPrevInputWrapper$json],
  '7': const {},
};

@$core.Deprecated('Use txAckPrevInputDescriptor instead')
const TxAckPrevInput_TxAckPrevInputWrapper$json = const {
  '1': 'TxAckPrevInputWrapper',
  '2': const [
    const {'1': 'input', '3': 2, '4': 2, '5': 11, '6': '.hw.trezor.messages.bitcoin.PrevInput', '10': 'input'},
  ],
};

/// Descriptor for `TxAckPrevInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txAckPrevInputDescriptor = $convert.base64Decode('Cg5UeEFja1ByZXZJbnB1dBJQCgJ0eBgBIAIoCzJALmh3LnRyZXpvci5tZXNzYWdlcy5iaXRjb2luLlR4QWNrUHJldklucHV0LlR4QWNrUHJldklucHV0V3JhcHBlclICdHgaVAoVVHhBY2tQcmV2SW5wdXRXcmFwcGVyEjsKBWlucHV0GAIgAigLMiUuaHcudHJlem9yLm1lc3NhZ2VzLmJpdGNvaW4uUHJldklucHV0UgVpbnB1dDoEkLIZFg==');
@$core.Deprecated('Use txAckPrevOutputDescriptor instead')
const TxAckPrevOutput$json = const {
  '1': 'TxAckPrevOutput',
  '2': const [
    const {'1': 'tx', '3': 1, '4': 2, '5': 11, '6': '.hw.trezor.messages.bitcoin.TxAckPrevOutput.TxAckPrevOutputWrapper', '10': 'tx'},
  ],
  '3': const [TxAckPrevOutput_TxAckPrevOutputWrapper$json],
  '7': const {},
};

@$core.Deprecated('Use txAckPrevOutputDescriptor instead')
const TxAckPrevOutput_TxAckPrevOutputWrapper$json = const {
  '1': 'TxAckPrevOutputWrapper',
  '2': const [
    const {'1': 'output', '3': 3, '4': 2, '5': 11, '6': '.hw.trezor.messages.bitcoin.PrevOutput', '10': 'output'},
  ],
};

/// Descriptor for `TxAckPrevOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txAckPrevOutputDescriptor = $convert.base64Decode('Cg9UeEFja1ByZXZPdXRwdXQSUgoCdHgYASACKAsyQi5ody50cmV6b3IubWVzc2FnZXMuYml0Y29pbi5UeEFja1ByZXZPdXRwdXQuVHhBY2tQcmV2T3V0cHV0V3JhcHBlclICdHgaWAoWVHhBY2tQcmV2T3V0cHV0V3JhcHBlchI+CgZvdXRwdXQYAyACKAsyJi5ody50cmV6b3IubWVzc2FnZXMuYml0Y29pbi5QcmV2T3V0cHV0UgZvdXRwdXQ6BJCyGRY=');
@$core.Deprecated('Use txAckPrevExtraDataDescriptor instead')
const TxAckPrevExtraData$json = const {
  '1': 'TxAckPrevExtraData',
  '2': const [
    const {'1': 'tx', '3': 1, '4': 2, '5': 11, '6': '.hw.trezor.messages.bitcoin.TxAckPrevExtraData.TxAckPrevExtraDataWrapper', '10': 'tx'},
  ],
  '3': const [TxAckPrevExtraData_TxAckPrevExtraDataWrapper$json],
  '7': const {},
};

@$core.Deprecated('Use txAckPrevExtraDataDescriptor instead')
const TxAckPrevExtraData_TxAckPrevExtraDataWrapper$json = const {
  '1': 'TxAckPrevExtraDataWrapper',
  '2': const [
    const {'1': 'extra_data_chunk', '3': 8, '4': 2, '5': 12, '10': 'extraDataChunk'},
  ],
};

/// Descriptor for `TxAckPrevExtraData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txAckPrevExtraDataDescriptor = $convert.base64Decode('ChJUeEFja1ByZXZFeHRyYURhdGESWAoCdHgYASACKAsySC5ody50cmV6b3IubWVzc2FnZXMuYml0Y29pbi5UeEFja1ByZXZFeHRyYURhdGEuVHhBY2tQcmV2RXh0cmFEYXRhV3JhcHBlclICdHgaRQoZVHhBY2tQcmV2RXh0cmFEYXRhV3JhcHBlchIoChBleHRyYV9kYXRhX2NodW5rGAggAigMUg5leHRyYURhdGFDaHVuazoEkLIZFg==');
@$core.Deprecated('Use getOwnershipProofDescriptor instead')
const GetOwnershipProof$json = const {
  '1': 'GetOwnershipProof',
  '2': const [
    const {'1': 'address_n', '3': 1, '4': 3, '5': 13, '10': 'addressN'},
    const {'1': 'coin_name', '3': 2, '4': 1, '5': 9, '7': 'Bitcoin', '10': 'coinName'},
    const {'1': 'script_type', '3': 3, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.InputScriptType', '7': 'SPENDWITNESS', '10': 'scriptType'},
    const {'1': 'multisig', '3': 4, '4': 1, '5': 11, '6': '.hw.trezor.messages.bitcoin.MultisigRedeemScriptType', '10': 'multisig'},
    const {'1': 'user_confirmation', '3': 5, '4': 1, '5': 8, '7': 'false', '10': 'userConfirmation'},
    const {'1': 'ownership_ids', '3': 6, '4': 3, '5': 12, '10': 'ownershipIds'},
    const {'1': 'commitment_data', '3': 7, '4': 1, '5': 12, '7': '', '10': 'commitmentData'},
  ],
};

/// Descriptor for `GetOwnershipProof`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOwnershipProofDescriptor = $convert.base64Decode('ChFHZXRPd25lcnNoaXBQcm9vZhIbCglhZGRyZXNzX24YASADKA1SCGFkZHJlc3NOEiQKCWNvaW5fbmFtZRgCIAEoCToHQml0Y29pblIIY29pbk5hbWUSWgoLc2NyaXB0X3R5cGUYAyABKA4yKy5ody50cmV6b3IubWVzc2FnZXMuYml0Y29pbi5JbnB1dFNjcmlwdFR5cGU6DFNQRU5EV0lUTkVTU1IKc2NyaXB0VHlwZRJQCghtdWx0aXNpZxgEIAEoCzI0Lmh3LnRyZXpvci5tZXNzYWdlcy5iaXRjb2luLk11bHRpc2lnUmVkZWVtU2NyaXB0VHlwZVIIbXVsdGlzaWcSMgoRdXNlcl9jb25maXJtYXRpb24YBSABKAg6BWZhbHNlUhB1c2VyQ29uZmlybWF0aW9uEiMKDW93bmVyc2hpcF9pZHMYBiADKAxSDG93bmVyc2hpcElkcxIpCg9jb21taXRtZW50X2RhdGEYByABKAw6AFIOY29tbWl0bWVudERhdGE=');
@$core.Deprecated('Use ownershipProofDescriptor instead')
const OwnershipProof$json = const {
  '1': 'OwnershipProof',
  '2': const [
    const {'1': 'ownership_proof', '3': 1, '4': 2, '5': 12, '10': 'ownershipProof'},
    const {'1': 'signature', '3': 2, '4': 2, '5': 12, '10': 'signature'},
  ],
};

/// Descriptor for `OwnershipProof`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ownershipProofDescriptor = $convert.base64Decode('Cg5Pd25lcnNoaXBQcm9vZhInCg9vd25lcnNoaXBfcHJvb2YYASACKAxSDm93bmVyc2hpcFByb29mEhwKCXNpZ25hdHVyZRgCIAIoDFIJc2lnbmF0dXJl');
@$core.Deprecated('Use authorizeCoinJoinDescriptor instead')
const AuthorizeCoinJoin$json = const {
  '1': 'AuthorizeCoinJoin',
  '2': const [
    const {'1': 'coordinator', '3': 1, '4': 2, '5': 9, '10': 'coordinator'},
    const {'1': 'max_rounds', '3': 2, '4': 2, '5': 4, '10': 'maxRounds'},
    const {'1': 'max_coordinator_fee_rate', '3': 3, '4': 2, '5': 13, '10': 'maxCoordinatorFeeRate'},
    const {'1': 'max_fee_per_kvbyte', '3': 4, '4': 2, '5': 13, '10': 'maxFeePerKvbyte'},
    const {'1': 'address_n', '3': 5, '4': 3, '5': 13, '10': 'addressN'},
    const {'1': 'coin_name', '3': 6, '4': 1, '5': 9, '7': 'Bitcoin', '10': 'coinName'},
    const {'1': 'script_type', '3': 7, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.InputScriptType', '7': 'SPENDADDRESS', '10': 'scriptType'},
    const {'1': 'amount_unit', '3': 8, '4': 1, '5': 14, '6': '.hw.trezor.messages.bitcoin.AmountUnit', '7': 'BITCOIN', '10': 'amountUnit'},
  ],
};

/// Descriptor for `AuthorizeCoinJoin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authorizeCoinJoinDescriptor = $convert.base64Decode('ChFBdXRob3JpemVDb2luSm9pbhIgCgtjb29yZGluYXRvchgBIAIoCVILY29vcmRpbmF0b3ISHQoKbWF4X3JvdW5kcxgCIAIoBFIJbWF4Um91bmRzEjcKGG1heF9jb29yZGluYXRvcl9mZWVfcmF0ZRgDIAIoDVIVbWF4Q29vcmRpbmF0b3JGZWVSYXRlEisKEm1heF9mZWVfcGVyX2t2Ynl0ZRgEIAIoDVIPbWF4RmVlUGVyS3ZieXRlEhsKCWFkZHJlc3NfbhgFIAMoDVIIYWRkcmVzc04SJAoJY29pbl9uYW1lGAYgASgJOgdCaXRjb2luUghjb2luTmFtZRJaCgtzY3JpcHRfdHlwZRgHIAEoDjIrLmh3LnRyZXpvci5tZXNzYWdlcy5iaXRjb2luLklucHV0U2NyaXB0VHlwZToMU1BFTkRBRERSRVNTUgpzY3JpcHRUeXBlElAKC2Ftb3VudF91bml0GAggASgOMiYuaHcudHJlem9yLm1lc3NhZ2VzLmJpdGNvaW4uQW1vdW50VW5pdDoHQklUQ09JTlIKYW1vdW50VW5pdA==');
