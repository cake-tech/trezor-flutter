// This is a generated file - do not edit.
//
// Generated from messages-common.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use successDescriptor instead')
const Success$json = {
  '1': 'Success',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '7': '', '10': 'message'},
  ],
};

/// Descriptor for `Success`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List successDescriptor = $convert
    .base64Decode('CgdTdWNjZXNzEhoKB21lc3NhZ2UYASABKAk6AFIHbWVzc2FnZQ==');

@$core.Deprecated('Use failureDescriptor instead')
const Failure$json = {
  '1': 'Failure',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.common.Failure.FailureType',
      '10': 'code'
    },
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
  '4': [Failure_FailureType$json],
};

@$core.Deprecated('Use failureDescriptor instead')
const Failure_FailureType$json = {
  '1': 'FailureType',
  '2': [
    {'1': 'Failure_UnexpectedMessage', '2': 1},
    {'1': 'Failure_ButtonExpected', '2': 2},
    {'1': 'Failure_DataError', '2': 3},
    {'1': 'Failure_ActionCancelled', '2': 4},
    {'1': 'Failure_PinExpected', '2': 5},
    {'1': 'Failure_PinCancelled', '2': 6},
    {'1': 'Failure_PinInvalid', '2': 7},
    {'1': 'Failure_InvalidSignature', '2': 8},
    {'1': 'Failure_ProcessError', '2': 9},
    {'1': 'Failure_NotEnoughFunds', '2': 10},
    {'1': 'Failure_NotInitialized', '2': 11},
    {'1': 'Failure_PinMismatch', '2': 12},
    {'1': 'Failure_WipeCodeMismatch', '2': 13},
    {'1': 'Failure_InvalidSession', '2': 14},
    {'1': 'Failure_Busy', '2': 15},
    {'1': 'Failure_ThpUnallocatedSession', '2': 16},
    {'1': 'Failure_InvalidProtocol', '2': 17},
    {'1': 'Failure_InProgress', '2': 19},
    {'1': 'Failure_FirmwareError', '2': 99},
  ],
  '4': [
    {'1': 18, '2': 18},
  ],
};

/// Descriptor for `Failure`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List failureDescriptor = $convert.base64Decode(
    'CgdGYWlsdXJlEkIKBGNvZGUYASABKA4yLi5ody50cmV6b3IubWVzc2FnZXMuY29tbW9uLkZhaW'
    'x1cmUuRmFpbHVyZVR5cGVSBGNvZGUSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2FnZSKVBAoLRmFp'
    'bHVyZVR5cGUSHQoZRmFpbHVyZV9VbmV4cGVjdGVkTWVzc2FnZRABEhoKFkZhaWx1cmVfQnV0dG'
    '9uRXhwZWN0ZWQQAhIVChFGYWlsdXJlX0RhdGFFcnJvchADEhsKF0ZhaWx1cmVfQWN0aW9uQ2Fu'
    'Y2VsbGVkEAQSFwoTRmFpbHVyZV9QaW5FeHBlY3RlZBAFEhgKFEZhaWx1cmVfUGluQ2FuY2VsbG'
    'VkEAYSFgoSRmFpbHVyZV9QaW5JbnZhbGlkEAcSHAoYRmFpbHVyZV9JbnZhbGlkU2lnbmF0dXJl'
    'EAgSGAoURmFpbHVyZV9Qcm9jZXNzRXJyb3IQCRIaChZGYWlsdXJlX05vdEVub3VnaEZ1bmRzEA'
    'oSGgoWRmFpbHVyZV9Ob3RJbml0aWFsaXplZBALEhcKE0ZhaWx1cmVfUGluTWlzbWF0Y2gQDBIc'
    'ChhGYWlsdXJlX1dpcGVDb2RlTWlzbWF0Y2gQDRIaChZGYWlsdXJlX0ludmFsaWRTZXNzaW9uEA'
    '4SEAoMRmFpbHVyZV9CdXN5EA8SIQodRmFpbHVyZV9UaHBVbmFsbG9jYXRlZFNlc3Npb24QEBIb'
    'ChdGYWlsdXJlX0ludmFsaWRQcm90b2NvbBAREhYKEkZhaWx1cmVfSW5Qcm9ncmVzcxATEhkKFU'
    'ZhaWx1cmVfRmlybXdhcmVFcnJvchBjIgQIEhAS');

@$core.Deprecated('Use buttonRequestDescriptor instead')
const ButtonRequest$json = {
  '1': 'ButtonRequest',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.common.ButtonRequest.ButtonRequestType',
      '10': 'code'
    },
    {'1': 'pages', '3': 2, '4': 1, '5': 13, '10': 'pages'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
  '4': [ButtonRequest_ButtonRequestType$json],
  '9': [
    {'1': 3, '2': 4},
  ],
};

@$core.Deprecated('Use buttonRequestDescriptor instead')
const ButtonRequest_ButtonRequestType$json = {
  '1': 'ButtonRequestType',
  '2': [
    {'1': 'ButtonRequest_Other', '2': 1},
    {'1': 'ButtonRequest_FeeOverThreshold', '2': 2},
    {'1': 'ButtonRequest_ConfirmOutput', '2': 3},
    {'1': 'ButtonRequest_ResetDevice', '2': 4},
    {'1': 'ButtonRequest_ConfirmWord', '2': 5},
    {'1': 'ButtonRequest_WipeDevice', '2': 6},
    {'1': 'ButtonRequest_ProtectCall', '2': 7},
    {'1': 'ButtonRequest_SignTx', '2': 8},
    {'1': 'ButtonRequest_FirmwareCheck', '2': 9},
    {'1': 'ButtonRequest_Address', '2': 10},
    {'1': 'ButtonRequest_PublicKey', '2': 11},
    {'1': 'ButtonRequest_MnemonicWordCount', '2': 12},
    {'1': 'ButtonRequest_MnemonicInput', '2': 13},
    {
      '1': '_Deprecated_ButtonRequest_PassphraseType',
      '2': 14,
      '3': {'1': true},
    },
    {'1': 'ButtonRequest_UnknownDerivationPath', '2': 15},
    {'1': 'ButtonRequest_RecoveryHomepage', '2': 16},
    {'1': 'ButtonRequest_Success', '2': 17},
    {'1': 'ButtonRequest_Warning', '2': 18},
    {'1': 'ButtonRequest_PassphraseEntry', '2': 19},
    {'1': 'ButtonRequest_PinEntry', '2': 20},
  ],
};

/// Descriptor for `ButtonRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buttonRequestDescriptor = $convert.base64Decode(
    'Cg1CdXR0b25SZXF1ZXN0Ek4KBGNvZGUYASABKA4yOi5ody50cmV6b3IubWVzc2FnZXMuY29tbW'
    '9uLkJ1dHRvblJlcXVlc3QuQnV0dG9uUmVxdWVzdFR5cGVSBGNvZGUSFAoFcGFnZXMYAiABKA1S'
    'BXBhZ2VzEhIKBG5hbWUYBCABKAlSBG5hbWUimQUKEUJ1dHRvblJlcXVlc3RUeXBlEhcKE0J1dH'
    'RvblJlcXVlc3RfT3RoZXIQARIiCh5CdXR0b25SZXF1ZXN0X0ZlZU92ZXJUaHJlc2hvbGQQAhIf'
    'ChtCdXR0b25SZXF1ZXN0X0NvbmZpcm1PdXRwdXQQAxIdChlCdXR0b25SZXF1ZXN0X1Jlc2V0RG'
    'V2aWNlEAQSHQoZQnV0dG9uUmVxdWVzdF9Db25maXJtV29yZBAFEhwKGEJ1dHRvblJlcXVlc3Rf'
    'V2lwZURldmljZRAGEh0KGUJ1dHRvblJlcXVlc3RfUHJvdGVjdENhbGwQBxIYChRCdXR0b25SZX'
    'F1ZXN0X1NpZ25UeBAIEh8KG0J1dHRvblJlcXVlc3RfRmlybXdhcmVDaGVjaxAJEhkKFUJ1dHRv'
    'blJlcXVlc3RfQWRkcmVzcxAKEhsKF0J1dHRvblJlcXVlc3RfUHVibGljS2V5EAsSIwofQnV0dG'
    '9uUmVxdWVzdF9NbmVtb25pY1dvcmRDb3VudBAMEh8KG0J1dHRvblJlcXVlc3RfTW5lbW9uaWNJ'
    'bnB1dBANEjAKKF9EZXByZWNhdGVkX0J1dHRvblJlcXVlc3RfUGFzc3BocmFzZVR5cGUQDhoCCA'
    'ESJwojQnV0dG9uUmVxdWVzdF9Vbmtub3duRGVyaXZhdGlvblBhdGgQDxIiCh5CdXR0b25SZXF1'
    'ZXN0X1JlY292ZXJ5SG9tZXBhZ2UQEBIZChVCdXR0b25SZXF1ZXN0X1N1Y2Nlc3MQERIZChVCdX'
    'R0b25SZXF1ZXN0X1dhcm5pbmcQEhIhCh1CdXR0b25SZXF1ZXN0X1Bhc3NwaHJhc2VFbnRyeRAT'
    'EhoKFkJ1dHRvblJlcXVlc3RfUGluRW50cnkQFEoECAMQBA==');

@$core.Deprecated('Use buttonAckDescriptor instead')
const ButtonAck$json = {
  '1': 'ButtonAck',
};

/// Descriptor for `ButtonAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buttonAckDescriptor =
    $convert.base64Decode('CglCdXR0b25BY2s=');

@$core.Deprecated('Use pinMatrixRequestDescriptor instead')
const PinMatrixRequest$json = {
  '1': 'PinMatrixRequest',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.common.PinMatrixRequest.PinMatrixRequestType',
      '10': 'type'
    },
  ],
  '4': [PinMatrixRequest_PinMatrixRequestType$json],
};

@$core.Deprecated('Use pinMatrixRequestDescriptor instead')
const PinMatrixRequest_PinMatrixRequestType$json = {
  '1': 'PinMatrixRequestType',
  '2': [
    {'1': 'PinMatrixRequestType_Current', '2': 1},
    {'1': 'PinMatrixRequestType_NewFirst', '2': 2},
    {'1': 'PinMatrixRequestType_NewSecond', '2': 3},
    {'1': 'PinMatrixRequestType_WipeCodeFirst', '2': 4},
    {'1': 'PinMatrixRequestType_WipeCodeSecond', '2': 5},
  ],
};

/// Descriptor for `PinMatrixRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pinMatrixRequestDescriptor = $convert.base64Decode(
    'ChBQaW5NYXRyaXhSZXF1ZXN0ElQKBHR5cGUYASABKA4yQC5ody50cmV6b3IubWVzc2FnZXMuY2'
    '9tbW9uLlBpbk1hdHJpeFJlcXVlc3QuUGluTWF0cml4UmVxdWVzdFR5cGVSBHR5cGUi0AEKFFBp'
    'bk1hdHJpeFJlcXVlc3RUeXBlEiAKHFBpbk1hdHJpeFJlcXVlc3RUeXBlX0N1cnJlbnQQARIhCh'
    '1QaW5NYXRyaXhSZXF1ZXN0VHlwZV9OZXdGaXJzdBACEiIKHlBpbk1hdHJpeFJlcXVlc3RUeXBl'
    'X05ld1NlY29uZBADEiYKIlBpbk1hdHJpeFJlcXVlc3RUeXBlX1dpcGVDb2RlRmlyc3QQBBInCi'
    'NQaW5NYXRyaXhSZXF1ZXN0VHlwZV9XaXBlQ29kZVNlY29uZBAF');

@$core.Deprecated('Use pinMatrixAckDescriptor instead')
const PinMatrixAck$json = {
  '1': 'PinMatrixAck',
  '2': [
    {'1': 'pin', '3': 1, '4': 2, '5': 9, '10': 'pin'},
  ],
};

/// Descriptor for `PinMatrixAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pinMatrixAckDescriptor =
    $convert.base64Decode('CgxQaW5NYXRyaXhBY2sSEAoDcGluGAEgAigJUgNwaW4=');

@$core.Deprecated('Use passphraseRequestDescriptor instead')
const PassphraseRequest$json = {
  '1': 'PassphraseRequest',
  '2': [
    {
      '1': '_on_device',
      '3': 1,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'OnDevice',
    },
  ],
};

/// Descriptor for `PassphraseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passphraseRequestDescriptor = $convert.base64Decode(
    'ChFQYXNzcGhyYXNlUmVxdWVzdBIgCgpfb25fZGV2aWNlGAEgASgIQgIYAVIIT25EZXZpY2U=');

@$core.Deprecated('Use passphraseAckDescriptor instead')
const PassphraseAck$json = {
  '1': 'PassphraseAck',
  '2': [
    {'1': 'passphrase', '3': 1, '4': 1, '5': 9, '10': 'passphrase'},
    {
      '1': '_state',
      '3': 2,
      '4': 1,
      '5': 12,
      '8': {'3': true},
      '10': 'State',
    },
    {'1': 'on_device', '3': 3, '4': 1, '5': 8, '10': 'onDevice'},
  ],
};

/// Descriptor for `PassphraseAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passphraseAckDescriptor = $convert.base64Decode(
    'Cg1QYXNzcGhyYXNlQWNrEh4KCnBhc3NwaHJhc2UYASABKAlSCnBhc3NwaHJhc2USGQoGX3N0YX'
    'RlGAIgASgMQgIYAVIFU3RhdGUSGwoJb25fZGV2aWNlGAMgASgIUghvbkRldmljZQ==');

@$core.Deprecated('Use deprecated_PassphraseStateRequestDescriptor instead')
const Deprecated_PassphraseStateRequest$json = {
  '1': 'Deprecated_PassphraseStateRequest',
  '2': [
    {'1': 'state', '3': 1, '4': 1, '5': 12, '10': 'state'},
  ],
  '7': {'3': true},
};

/// Descriptor for `Deprecated_PassphraseStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deprecated_PassphraseStateRequestDescriptor =
    $convert.base64Decode(
        'CiFEZXByZWNhdGVkX1Bhc3NwaHJhc2VTdGF0ZVJlcXVlc3QSFAoFc3RhdGUYASABKAxSBXN0YX'
        'RlOgIYAQ==');

@$core.Deprecated('Use deprecated_PassphraseStateAckDescriptor instead')
const Deprecated_PassphraseStateAck$json = {
  '1': 'Deprecated_PassphraseStateAck',
  '7': {'3': true},
};

/// Descriptor for `Deprecated_PassphraseStateAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deprecated_PassphraseStateAckDescriptor =
    $convert.base64Decode('Ch1EZXByZWNhdGVkX1Bhc3NwaHJhc2VTdGF0ZUFjazoCGAE=');

@$core.Deprecated('Use hDNodeTypeDescriptor instead')
const HDNodeType$json = {
  '1': 'HDNodeType',
  '2': [
    {'1': 'depth', '3': 1, '4': 2, '5': 13, '10': 'depth'},
    {'1': 'fingerprint', '3': 2, '4': 2, '5': 13, '10': 'fingerprint'},
    {'1': 'child_num', '3': 3, '4': 2, '5': 13, '10': 'childNum'},
    {'1': 'chain_code', '3': 4, '4': 2, '5': 12, '10': 'chainCode'},
    {'1': 'private_key', '3': 5, '4': 1, '5': 12, '10': 'privateKey'},
    {'1': 'public_key', '3': 6, '4': 2, '5': 12, '10': 'publicKey'},
  ],
};

/// Descriptor for `HDNodeType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hDNodeTypeDescriptor = $convert.base64Decode(
    'CgpIRE5vZGVUeXBlEhQKBWRlcHRoGAEgAigNUgVkZXB0aBIgCgtmaW5nZXJwcmludBgCIAIoDV'
    'ILZmluZ2VycHJpbnQSGwoJY2hpbGRfbnVtGAMgAigNUghjaGlsZE51bRIdCgpjaGFpbl9jb2Rl'
    'GAQgAigMUgljaGFpbkNvZGUSHwoLcHJpdmF0ZV9rZXkYBSABKAxSCnByaXZhdGVLZXkSHQoKcH'
    'VibGljX2tleRgGIAIoDFIJcHVibGljS2V5');

@$core.Deprecated('Use paymentRequestDescriptor instead')
const PaymentRequest$json = {
  '1': 'PaymentRequest',
  '2': [
    {'1': 'nonce', '3': 1, '4': 1, '5': 12, '10': 'nonce'},
    {'1': 'recipient_name', '3': 2, '4': 2, '5': 9, '10': 'recipientName'},
    {
      '1': 'memos',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.hw.trezor.messages.common.PaymentRequest.PaymentRequestMemo',
      '10': 'memos'
    },
    {'1': 'amount', '3': 6, '4': 1, '5': 12, '10': 'amount'},
    {'1': 'signature', '3': 5, '4': 2, '5': 12, '10': 'signature'},
  ],
  '3': [
    PaymentRequest_PaymentRequestMemo$json,
    PaymentRequest_TextMemo$json,
    PaymentRequest_TextDetailsMemo$json,
    PaymentRequest_RefundMemo$json,
    PaymentRequest_CoinPurchaseMemo$json
  ],
  '9': [
    {'1': 4, '2': 5},
  ],
};

@$core.Deprecated('Use paymentRequestDescriptor instead')
const PaymentRequest_PaymentRequestMemo$json = {
  '1': 'PaymentRequestMemo',
  '2': [
    {
      '1': 'text_memo',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.hw.trezor.messages.common.PaymentRequest.TextMemo',
      '10': 'textMemo'
    },
    {
      '1': 'refund_memo',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.hw.trezor.messages.common.PaymentRequest.RefundMemo',
      '10': 'refundMemo'
    },
    {
      '1': 'coin_purchase_memo',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.hw.trezor.messages.common.PaymentRequest.CoinPurchaseMemo',
      '10': 'coinPurchaseMemo'
    },
    {
      '1': 'text_details_memo',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.hw.trezor.messages.common.PaymentRequest.TextDetailsMemo',
      '10': 'textDetailsMemo'
    },
  ],
};

@$core.Deprecated('Use paymentRequestDescriptor instead')
const PaymentRequest_TextMemo$json = {
  '1': 'TextMemo',
  '2': [
    {'1': 'text', '3': 1, '4': 2, '5': 9, '10': 'text'},
  ],
};

@$core.Deprecated('Use paymentRequestDescriptor instead')
const PaymentRequest_TextDetailsMemo$json = {
  '1': 'TextDetailsMemo',
  '2': [
    {'1': 'title', '3': 1, '4': 2, '5': 9, '10': 'title'},
    {'1': 'text', '3': 2, '4': 2, '5': 9, '10': 'text'},
  ],
};

@$core.Deprecated('Use paymentRequestDescriptor instead')
const PaymentRequest_RefundMemo$json = {
  '1': 'RefundMemo',
  '2': [
    {'1': 'address', '3': 1, '4': 2, '5': 9, '10': 'address'},
    {'1': 'address_n', '3': 2, '4': 3, '5': 13, '10': 'addressN'},
    {'1': 'mac', '3': 3, '4': 2, '5': 12, '10': 'mac'},
  ],
};

@$core.Deprecated('Use paymentRequestDescriptor instead')
const PaymentRequest_CoinPurchaseMemo$json = {
  '1': 'CoinPurchaseMemo',
  '2': [
    {'1': 'coin_type', '3': 1, '4': 2, '5': 13, '10': 'coinType'},
    {'1': 'amount', '3': 2, '4': 2, '5': 9, '10': 'amount'},
    {'1': 'address', '3': 3, '4': 2, '5': 9, '10': 'address'},
    {'1': 'address_n', '3': 4, '4': 3, '5': 13, '10': 'addressN'},
    {'1': 'mac', '3': 5, '4': 2, '5': 12, '10': 'mac'},
  ],
};

/// Descriptor for `PaymentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentRequestDescriptor = $convert.base64Decode(
    'Cg5QYXltZW50UmVxdWVzdBIUCgVub25jZRgBIAEoDFIFbm9uY2USJQoOcmVjaXBpZW50X25hbW'
    'UYAiACKAlSDXJlY2lwaWVudE5hbWUSUgoFbWVtb3MYAyADKAsyPC5ody50cmV6b3IubWVzc2Fn'
    'ZXMuY29tbW9uLlBheW1lbnRSZXF1ZXN0LlBheW1lbnRSZXF1ZXN0TWVtb1IFbWVtb3MSFgoGYW'
    '1vdW50GAYgASgMUgZhbW91bnQSHAoJc2lnbmF0dXJlGAUgAigMUglzaWduYXR1cmUajQMKElBh'
    'eW1lbnRSZXF1ZXN0TWVtbxJPCgl0ZXh0X21lbW8YASABKAsyMi5ody50cmV6b3IubWVzc2FnZX'
    'MuY29tbW9uLlBheW1lbnRSZXF1ZXN0LlRleHRNZW1vUgh0ZXh0TWVtbxJVCgtyZWZ1bmRfbWVt'
    'bxgCIAEoCzI0Lmh3LnRyZXpvci5tZXNzYWdlcy5jb21tb24uUGF5bWVudFJlcXVlc3QuUmVmdW'
    '5kTWVtb1IKcmVmdW5kTWVtbxJoChJjb2luX3B1cmNoYXNlX21lbW8YAyABKAsyOi5ody50cmV6'
    'b3IubWVzc2FnZXMuY29tbW9uLlBheW1lbnRSZXF1ZXN0LkNvaW5QdXJjaGFzZU1lbW9SEGNvaW'
    '5QdXJjaGFzZU1lbW8SZQoRdGV4dF9kZXRhaWxzX21lbW8YBCABKAsyOS5ody50cmV6b3IubWVz'
    'c2FnZXMuY29tbW9uLlBheW1lbnRSZXF1ZXN0LlRleHREZXRhaWxzTWVtb1IPdGV4dERldGFpbH'
    'NNZW1vGh4KCFRleHRNZW1vEhIKBHRleHQYASACKAlSBHRleHQaOwoPVGV4dERldGFpbHNNZW1v'
    'EhQKBXRpdGxlGAEgAigJUgV0aXRsZRISCgR0ZXh0GAIgAigJUgR0ZXh0GlUKClJlZnVuZE1lbW'
    '8SGAoHYWRkcmVzcxgBIAIoCVIHYWRkcmVzcxIbCglhZGRyZXNzX24YAiADKA1SCGFkZHJlc3NO'
    'EhAKA21hYxgDIAIoDFIDbWFjGpABChBDb2luUHVyY2hhc2VNZW1vEhsKCWNvaW5fdHlwZRgBIA'
    'IoDVIIY29pblR5cGUSFgoGYW1vdW50GAIgAigJUgZhbW91bnQSGAoHYWRkcmVzcxgDIAIoCVIH'
    'YWRkcmVzcxIbCglhZGRyZXNzX24YBCADKA1SCGFkZHJlc3NOEhAKA21hYxgFIAIoDFIDbWFjSg'
    'QIBBAF');
