// This is a generated file - do not edit.
//
// Generated from messages-thp.proto.

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

@$core.Deprecated('Use thpMessageTypeDescriptor instead')
const ThpMessageType$json = {
  '1': 'ThpMessageType',
  '2': [
    {'1': 'ThpMessageType_Cancel', '2': 20},
    {'1': 'ThpMessageType_ButtonRequest', '2': 26},
    {'1': 'ThpMessageType_ButtonAck', '2': 27},
    {'1': 'ThpMessageType_ThpPairingRequest', '2': 1008, '3': {}},
    {'1': 'ThpMessageType_ThpPairingRequestApproved', '2': 1009, '3': {}},
    {'1': 'ThpMessageType_ThpSelectMethod', '2': 1010, '3': {}},
    {'1': 'ThpMessageType_ThpPairingPreparationsFinished', '2': 1011, '3': {}},
    {'1': 'ThpMessageType_ThpCredentialRequest', '2': 1016, '3': {}},
    {'1': 'ThpMessageType_ThpCredentialResponse', '2': 1017, '3': {}},
    {'1': 'ThpMessageType_ThpEndRequest', '2': 1018, '3': {}},
    {'1': 'ThpMessageType_ThpEndResponse', '2': 1019, '3': {}},
    {'1': 'ThpMessageType_ThpCodeEntryCommitment', '2': 1024, '3': {}},
    {'1': 'ThpMessageType_ThpCodeEntryChallenge', '2': 1025, '3': {}},
    {'1': 'ThpMessageType_ThpCodeEntryCpaceTrezor', '2': 1026, '3': {}},
    {'1': 'ThpMessageType_ThpCodeEntryCpaceHostTag', '2': 1027, '3': {}},
    {'1': 'ThpMessageType_ThpCodeEntrySecret', '2': 1028, '3': {}},
    {'1': 'ThpMessageType_ThpQrCodeTag', '2': 1032, '3': {}},
    {'1': 'ThpMessageType_ThpQrCodeSecret', '2': 1033, '3': {}},
    {'1': 'ThpMessageType_ThpNfcTagHost', '2': 1040, '3': {}},
    {'1': 'ThpMessageType_ThpNfcTagTrezor', '2': 1041, '3': {}},
  ],
  '3': {},
  '4': [
    {'1': 0, '2': 19},
    {'1': 21, '2': 25},
    {'1': 28, '2': 999},
    {'1': 1000, '2': 1000},
    {'1': 1001, '2': 1007},
    {'1': 1012, '2': 1015},
    {'1': 1020, '2': 1023},
    {'1': 1029, '2': 1031},
    {'1': 1034, '2': 1039},
    {'1': 1042, '2': 1099},
    {'1': 1100, '2': 2147483647},
  ],
};

/// Descriptor for `ThpMessageType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List thpMessageTypeDescriptor = $convert.base64Decode(
    'Cg5UaHBNZXNzYWdlVHlwZRIZChVUaHBNZXNzYWdlVHlwZV9DYW5jZWwQFBIgChxUaHBNZXNzYW'
    'dlVHlwZV9CdXR0b25SZXF1ZXN0EBoSHAoYVGhwTWVzc2FnZVR5cGVfQnV0dG9uQWNrEBsSKwog'
    'VGhwTWVzc2FnZVR5cGVfVGhwUGFpcmluZ1JlcXVlc3QQ8AcaBJC1GAESMwooVGhwTWVzc2FnZV'
    'R5cGVfVGhwUGFpcmluZ1JlcXVlc3RBcHByb3ZlZBDxBxoEmLUYARIpCh5UaHBNZXNzYWdlVHlw'
    'ZV9UaHBTZWxlY3RNZXRob2QQ8gcaBJC1GAESOAotVGhwTWVzc2FnZVR5cGVfVGhwUGFpcmluZ1'
    'ByZXBhcmF0aW9uc0ZpbmlzaGVkEPMHGgSYtRgBEjIKI1RocE1lc3NhZ2VUeXBlX1RocENyZWRl'
    'bnRpYWxSZXF1ZXN0EPgHGgiQtRgBgKYdARIzCiRUaHBNZXNzYWdlVHlwZV9UaHBDcmVkZW50aW'
    'FsUmVzcG9uc2UQ+QcaCJi1GAGAph0BEicKHFRocE1lc3NhZ2VUeXBlX1RocEVuZFJlcXVlc3QQ'
    '+gcaBJC1GAESKAodVGhwTWVzc2FnZVR5cGVfVGhwRW5kUmVzcG9uc2UQ+wcaBJi1GAESMAolVG'
    'hwTWVzc2FnZVR5cGVfVGhwQ29kZUVudHJ5Q29tbWl0bWVudBCACBoEmLUYARIvCiRUaHBNZXNz'
    'YWdlVHlwZV9UaHBDb2RlRW50cnlDaGFsbGVuZ2UQgQgaBJC1GAESMQomVGhwTWVzc2FnZVR5cG'
    'VfVGhwQ29kZUVudHJ5Q3BhY2VUcmV6b3IQgggaBJi1GAESMgonVGhwTWVzc2FnZVR5cGVfVGhw'
    'Q29kZUVudHJ5Q3BhY2VIb3N0VGFnEIMIGgSQtRgBEiwKIVRocE1lc3NhZ2VUeXBlX1RocENvZG'
    'VFbnRyeVNlY3JldBCECBoEmLUYARImChtUaHBNZXNzYWdlVHlwZV9UaHBRckNvZGVUYWcQiAga'
    'BJC1GAESKQoeVGhwTWVzc2FnZVR5cGVfVGhwUXJDb2RlU2VjcmV0EIkIGgSYtRgBEicKHFRocE'
    '1lc3NhZ2VUeXBlX1RocE5mY1RhZ0hvc3QQkAgaBJC1GAESKQoeVGhwTWVzc2FnZVR5cGVfVGhw'
    'TmZjVGFnVHJlem9yEJEIGgSYtRgBGgTQ8xgBIgQIABATIgQIFRAZIgUIHBDnByIGCOgHEOgHIg'
    'YI6QcQ7wciBgj0BxD3ByIGCPwHEP8HIgYIhQgQhwgiBgiKCBCPCCIGCJIIEMsIIgkIzAgQ////'
    '/wc=');

@$core.Deprecated('Use thpPairingMethodDescriptor instead')
const ThpPairingMethod$json = {
  '1': 'ThpPairingMethod',
  '2': [
    {'1': 'SkipPairing', '2': 1},
    {'1': 'CodeEntry', '2': 2},
    {'1': 'QrCode', '2': 3},
    {'1': 'NFC', '2': 4},
  ],
};

/// Descriptor for `ThpPairingMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List thpPairingMethodDescriptor = $convert.base64Decode(
    'ChBUaHBQYWlyaW5nTWV0aG9kEg8KC1NraXBQYWlyaW5nEAESDQoJQ29kZUVudHJ5EAISCgoGUX'
    'JDb2RlEAMSBwoDTkZDEAQ=');

@$core.Deprecated('Use thpDevicePropertiesDescriptor instead')
const ThpDeviceProperties$json = {
  '1': 'ThpDeviceProperties',
  '2': [
    {'1': 'internal_model', '3': 1, '4': 2, '5': 9, '10': 'internalModel'},
    {
      '1': 'model_variant',
      '3': 2,
      '4': 1,
      '5': 13,
      '7': '0',
      '10': 'modelVariant'
    },
    {
      '1': 'protocol_version_major',
      '3': 3,
      '4': 2,
      '5': 13,
      '10': 'protocolVersionMajor'
    },
    {
      '1': 'protocol_version_minor',
      '3': 4,
      '4': 2,
      '5': 13,
      '10': 'protocolVersionMinor'
    },
    {
      '1': 'pairing_methods',
      '3': 5,
      '4': 3,
      '5': 14,
      '6': '.hw.trezor.messages.thp.ThpPairingMethod',
      '10': 'pairingMethods'
    },
  ],
};

/// Descriptor for `ThpDeviceProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpDevicePropertiesDescriptor = $convert.base64Decode(
    'ChNUaHBEZXZpY2VQcm9wZXJ0aWVzEiUKDmludGVybmFsX21vZGVsGAEgAigJUg1pbnRlcm5hbE'
    '1vZGVsEiYKDW1vZGVsX3ZhcmlhbnQYAiABKA06ATBSDG1vZGVsVmFyaWFudBI0ChZwcm90b2Nv'
    'bF92ZXJzaW9uX21ham9yGAMgAigNUhRwcm90b2NvbFZlcnNpb25NYWpvchI0ChZwcm90b2NvbF'
    '92ZXJzaW9uX21pbm9yGAQgAigNUhRwcm90b2NvbFZlcnNpb25NaW5vchJRCg9wYWlyaW5nX21l'
    'dGhvZHMYBSADKA4yKC5ody50cmV6b3IubWVzc2FnZXMudGhwLlRocFBhaXJpbmdNZXRob2RSDn'
    'BhaXJpbmdNZXRob2Rz');

@$core.Deprecated('Use thpHandshakeCompletionReqNoisePayloadDescriptor instead')
const ThpHandshakeCompletionReqNoisePayload$json = {
  '1': 'ThpHandshakeCompletionReqNoisePayload',
  '2': [
    {
      '1': 'host_pairing_credential',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'hostPairingCredential'
    },
  ],
};

/// Descriptor for `ThpHandshakeCompletionReqNoisePayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpHandshakeCompletionReqNoisePayloadDescriptor =
    $convert.base64Decode(
        'CiVUaHBIYW5kc2hha2VDb21wbGV0aW9uUmVxTm9pc2VQYXlsb2FkEjYKF2hvc3RfcGFpcmluZ1'
        '9jcmVkZW50aWFsGAEgASgMUhVob3N0UGFpcmluZ0NyZWRlbnRpYWw=');

@$core.Deprecated('Use thpCreateNewSessionDescriptor instead')
const ThpCreateNewSession$json = {
  '1': 'ThpCreateNewSession',
  '2': [
    {'1': 'passphrase', '3': 1, '4': 1, '5': 9, '10': 'passphrase'},
    {'1': 'on_device', '3': 2, '4': 1, '5': 8, '7': 'false', '10': 'onDevice'},
    {
      '1': 'derive_cardano',
      '3': 3,
      '4': 1,
      '5': 8,
      '7': 'false',
      '10': 'deriveCardano'
    },
  ],
};

/// Descriptor for `ThpCreateNewSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpCreateNewSessionDescriptor = $convert.base64Decode(
    'ChNUaHBDcmVhdGVOZXdTZXNzaW9uEh4KCnBhc3NwaHJhc2UYASABKAlSCnBhc3NwaHJhc2USIg'
    'oJb25fZGV2aWNlGAIgASgIOgVmYWxzZVIIb25EZXZpY2USLAoOZGVyaXZlX2NhcmRhbm8YAyAB'
    'KAg6BWZhbHNlUg1kZXJpdmVDYXJkYW5v');

@$core.Deprecated('Use thpPairingRequestDescriptor instead')
const ThpPairingRequest$json = {
  '1': 'ThpPairingRequest',
  '2': [
    {'1': 'host_name', '3': 1, '4': 2, '5': 9, '10': 'hostName'},
    {'1': 'app_name', '3': 2, '4': 2, '5': 9, '10': 'appName'},
  ],
};

/// Descriptor for `ThpPairingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpPairingRequestDescriptor = $convert.base64Decode(
    'ChFUaHBQYWlyaW5nUmVxdWVzdBIbCglob3N0X25hbWUYASACKAlSCGhvc3ROYW1lEhkKCGFwcF'
    '9uYW1lGAIgAigJUgdhcHBOYW1l');

@$core.Deprecated('Use thpPairingRequestApprovedDescriptor instead')
const ThpPairingRequestApproved$json = {
  '1': 'ThpPairingRequestApproved',
};

/// Descriptor for `ThpPairingRequestApproved`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpPairingRequestApprovedDescriptor =
    $convert.base64Decode('ChlUaHBQYWlyaW5nUmVxdWVzdEFwcHJvdmVk');

@$core.Deprecated('Use thpSelectMethodDescriptor instead')
const ThpSelectMethod$json = {
  '1': 'ThpSelectMethod',
  '2': [
    {
      '1': 'selected_pairing_method',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.hw.trezor.messages.thp.ThpPairingMethod',
      '10': 'selectedPairingMethod'
    },
  ],
};

/// Descriptor for `ThpSelectMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpSelectMethodDescriptor = $convert.base64Decode(
    'Cg9UaHBTZWxlY3RNZXRob2QSYAoXc2VsZWN0ZWRfcGFpcmluZ19tZXRob2QYASACKA4yKC5ody'
    '50cmV6b3IubWVzc2FnZXMudGhwLlRocFBhaXJpbmdNZXRob2RSFXNlbGVjdGVkUGFpcmluZ01l'
    'dGhvZA==');

@$core.Deprecated('Use thpPairingPreparationsFinishedDescriptor instead')
const ThpPairingPreparationsFinished$json = {
  '1': 'ThpPairingPreparationsFinished',
};

/// Descriptor for `ThpPairingPreparationsFinished`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpPairingPreparationsFinishedDescriptor =
    $convert.base64Decode('Ch5UaHBQYWlyaW5nUHJlcGFyYXRpb25zRmluaXNoZWQ=');

@$core.Deprecated('Use thpCodeEntryCommitmentDescriptor instead')
const ThpCodeEntryCommitment$json = {
  '1': 'ThpCodeEntryCommitment',
  '2': [
    {'1': 'commitment', '3': 1, '4': 2, '5': 12, '10': 'commitment'},
  ],
};

/// Descriptor for `ThpCodeEntryCommitment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpCodeEntryCommitmentDescriptor =
    $convert.base64Decode(
        'ChZUaHBDb2RlRW50cnlDb21taXRtZW50Eh4KCmNvbW1pdG1lbnQYASACKAxSCmNvbW1pdG1lbn'
        'Q=');

@$core.Deprecated('Use thpCodeEntryChallengeDescriptor instead')
const ThpCodeEntryChallenge$json = {
  '1': 'ThpCodeEntryChallenge',
  '2': [
    {'1': 'challenge', '3': 1, '4': 2, '5': 12, '10': 'challenge'},
  ],
};

/// Descriptor for `ThpCodeEntryChallenge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpCodeEntryChallengeDescriptor = $convert.base64Decode(
    'ChVUaHBDb2RlRW50cnlDaGFsbGVuZ2USHAoJY2hhbGxlbmdlGAEgAigMUgljaGFsbGVuZ2U=');

@$core.Deprecated('Use thpCodeEntryCpaceTrezorDescriptor instead')
const ThpCodeEntryCpaceTrezor$json = {
  '1': 'ThpCodeEntryCpaceTrezor',
  '2': [
    {
      '1': 'cpace_trezor_public_key',
      '3': 1,
      '4': 2,
      '5': 12,
      '10': 'cpaceTrezorPublicKey'
    },
  ],
};

/// Descriptor for `ThpCodeEntryCpaceTrezor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpCodeEntryCpaceTrezorDescriptor =
    $convert.base64Decode(
        'ChdUaHBDb2RlRW50cnlDcGFjZVRyZXpvchI1ChdjcGFjZV90cmV6b3JfcHVibGljX2tleRgBIA'
        'IoDFIUY3BhY2VUcmV6b3JQdWJsaWNLZXk=');

@$core.Deprecated('Use thpCodeEntryCpaceHostTagDescriptor instead')
const ThpCodeEntryCpaceHostTag$json = {
  '1': 'ThpCodeEntryCpaceHostTag',
  '2': [
    {
      '1': 'cpace_host_public_key',
      '3': 1,
      '4': 2,
      '5': 12,
      '10': 'cpaceHostPublicKey'
    },
    {'1': 'tag', '3': 2, '4': 2, '5': 12, '10': 'tag'},
  ],
};

/// Descriptor for `ThpCodeEntryCpaceHostTag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpCodeEntryCpaceHostTagDescriptor =
    $convert.base64Decode(
        'ChhUaHBDb2RlRW50cnlDcGFjZUhvc3RUYWcSMQoVY3BhY2VfaG9zdF9wdWJsaWNfa2V5GAEgAi'
        'gMUhJjcGFjZUhvc3RQdWJsaWNLZXkSEAoDdGFnGAIgAigMUgN0YWc=');

@$core.Deprecated('Use thpCodeEntrySecretDescriptor instead')
const ThpCodeEntrySecret$json = {
  '1': 'ThpCodeEntrySecret',
  '2': [
    {'1': 'secret', '3': 1, '4': 2, '5': 12, '10': 'secret'},
  ],
};

/// Descriptor for `ThpCodeEntrySecret`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpCodeEntrySecretDescriptor =
    $convert.base64Decode(
        'ChJUaHBDb2RlRW50cnlTZWNyZXQSFgoGc2VjcmV0GAEgAigMUgZzZWNyZXQ=');

@$core.Deprecated('Use thpQrCodeTagDescriptor instead')
const ThpQrCodeTag$json = {
  '1': 'ThpQrCodeTag',
  '2': [
    {'1': 'tag', '3': 1, '4': 2, '5': 12, '10': 'tag'},
  ],
};

/// Descriptor for `ThpQrCodeTag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpQrCodeTagDescriptor =
    $convert.base64Decode('CgxUaHBRckNvZGVUYWcSEAoDdGFnGAEgAigMUgN0YWc=');

@$core.Deprecated('Use thpQrCodeSecretDescriptor instead')
const ThpQrCodeSecret$json = {
  '1': 'ThpQrCodeSecret',
  '2': [
    {'1': 'secret', '3': 1, '4': 2, '5': 12, '10': 'secret'},
  ],
};

/// Descriptor for `ThpQrCodeSecret`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpQrCodeSecretDescriptor = $convert
    .base64Decode('Cg9UaHBRckNvZGVTZWNyZXQSFgoGc2VjcmV0GAEgAigMUgZzZWNyZXQ=');

@$core.Deprecated('Use thpNfcTagHostDescriptor instead')
const ThpNfcTagHost$json = {
  '1': 'ThpNfcTagHost',
  '2': [
    {'1': 'tag', '3': 1, '4': 2, '5': 12, '10': 'tag'},
  ],
};

/// Descriptor for `ThpNfcTagHost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpNfcTagHostDescriptor =
    $convert.base64Decode('Cg1UaHBOZmNUYWdIb3N0EhAKA3RhZxgBIAIoDFIDdGFn');

@$core.Deprecated('Use thpNfcTagTrezorDescriptor instead')
const ThpNfcTagTrezor$json = {
  '1': 'ThpNfcTagTrezor',
  '2': [
    {'1': 'tag', '3': 1, '4': 2, '5': 12, '10': 'tag'},
  ],
};

/// Descriptor for `ThpNfcTagTrezor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpNfcTagTrezorDescriptor =
    $convert.base64Decode('Cg9UaHBOZmNUYWdUcmV6b3ISEAoDdGFnGAEgAigMUgN0YWc=');

@$core.Deprecated('Use thpCredentialRequestDescriptor instead')
const ThpCredentialRequest$json = {
  '1': 'ThpCredentialRequest',
  '2': [
    {
      '1': 'host_static_public_key',
      '3': 1,
      '4': 2,
      '5': 12,
      '10': 'hostStaticPublicKey'
    },
    {
      '1': 'autoconnect',
      '3': 2,
      '4': 1,
      '5': 8,
      '7': 'false',
      '10': 'autoconnect'
    },
    {'1': 'credential', '3': 3, '4': 1, '5': 12, '10': 'credential'},
  ],
};

/// Descriptor for `ThpCredentialRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpCredentialRequestDescriptor = $convert.base64Decode(
    'ChRUaHBDcmVkZW50aWFsUmVxdWVzdBIzChZob3N0X3N0YXRpY19wdWJsaWNfa2V5GAEgAigMUh'
    'Nob3N0U3RhdGljUHVibGljS2V5EicKC2F1dG9jb25uZWN0GAIgASgIOgVmYWxzZVILYXV0b2Nv'
    'bm5lY3QSHgoKY3JlZGVudGlhbBgDIAEoDFIKY3JlZGVudGlhbA==');

@$core.Deprecated('Use thpCredentialResponseDescriptor instead')
const ThpCredentialResponse$json = {
  '1': 'ThpCredentialResponse',
  '2': [
    {
      '1': 'trezor_static_public_key',
      '3': 1,
      '4': 2,
      '5': 12,
      '10': 'trezorStaticPublicKey'
    },
    {'1': 'credential', '3': 2, '4': 2, '5': 12, '10': 'credential'},
  ],
};

/// Descriptor for `ThpCredentialResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpCredentialResponseDescriptor = $convert.base64Decode(
    'ChVUaHBDcmVkZW50aWFsUmVzcG9uc2USNwoYdHJlem9yX3N0YXRpY19wdWJsaWNfa2V5GAEgAi'
    'gMUhV0cmV6b3JTdGF0aWNQdWJsaWNLZXkSHgoKY3JlZGVudGlhbBgCIAIoDFIKY3JlZGVudGlh'
    'bA==');

@$core.Deprecated('Use thpEndRequestDescriptor instead')
const ThpEndRequest$json = {
  '1': 'ThpEndRequest',
};

/// Descriptor for `ThpEndRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpEndRequestDescriptor =
    $convert.base64Decode('Cg1UaHBFbmRSZXF1ZXN0');

@$core.Deprecated('Use thpEndResponseDescriptor instead')
const ThpEndResponse$json = {
  '1': 'ThpEndResponse',
};

/// Descriptor for `ThpEndResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpEndResponseDescriptor =
    $convert.base64Decode('Cg5UaHBFbmRSZXNwb25zZQ==');

@$core.Deprecated('Use thpCredentialMetadataDescriptor instead')
const ThpCredentialMetadata$json = {
  '1': 'ThpCredentialMetadata',
  '2': [
    {'1': 'host_name', '3': 1, '4': 2, '5': 9, '10': 'hostName'},
    {'1': 'autoconnect', '3': 2, '4': 1, '5': 8, '10': 'autoconnect'},
    {'1': 'app_name', '3': 3, '4': 2, '5': 9, '10': 'appName'},
  ],
  '7': {},
};

/// Descriptor for `ThpCredentialMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpCredentialMetadataDescriptor = $convert.base64Decode(
    'ChVUaHBDcmVkZW50aWFsTWV0YWRhdGESGwoJaG9zdF9uYW1lGAEgAigJUghob3N0TmFtZRIgCg'
    'thdXRvY29ubmVjdBgCIAEoCFILYXV0b2Nvbm5lY3QSGQoIYXBwX25hbWUYAyACKAlSB2FwcE5h'
    'bWU6BJiyGQE=');

@$core.Deprecated('Use thpPairingCredentialDescriptor instead')
const ThpPairingCredential$json = {
  '1': 'ThpPairingCredential',
  '2': [
    {
      '1': 'cred_metadata',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.hw.trezor.messages.thp.ThpCredentialMetadata',
      '10': 'credMetadata'
    },
    {'1': 'mac', '3': 2, '4': 2, '5': 12, '10': 'mac'},
  ],
  '7': {},
};

/// Descriptor for `ThpPairingCredential`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpPairingCredentialDescriptor = $convert.base64Decode(
    'ChRUaHBQYWlyaW5nQ3JlZGVudGlhbBJSCg1jcmVkX21ldGFkYXRhGAEgAigLMi0uaHcudHJlem'
    '9yLm1lc3NhZ2VzLnRocC5UaHBDcmVkZW50aWFsTWV0YWRhdGFSDGNyZWRNZXRhZGF0YRIQCgNt'
    'YWMYAiACKAxSA21hYzoEmLIZAQ==');

@$core.Deprecated('Use thpAuthenticatedCredentialDataDescriptor instead')
const ThpAuthenticatedCredentialData$json = {
  '1': 'ThpAuthenticatedCredentialData',
  '2': [
    {
      '1': 'host_static_public_key',
      '3': 1,
      '4': 2,
      '5': 12,
      '10': 'hostStaticPublicKey'
    },
    {
      '1': 'cred_metadata',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.hw.trezor.messages.thp.ThpCredentialMetadata',
      '10': 'credMetadata'
    },
  ],
  '7': {},
};

/// Descriptor for `ThpAuthenticatedCredentialData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpAuthenticatedCredentialDataDescriptor =
    $convert.base64Decode(
        'Ch5UaHBBdXRoZW50aWNhdGVkQ3JlZGVudGlhbERhdGESMwoWaG9zdF9zdGF0aWNfcHVibGljX2'
        'tleRgBIAIoDFITaG9zdFN0YXRpY1B1YmxpY0tleRJSCg1jcmVkX21ldGFkYXRhGAIgAigLMi0u'
        'aHcudHJlem9yLm1lc3NhZ2VzLnRocC5UaHBDcmVkZW50aWFsTWV0YWRhdGFSDGNyZWRNZXRhZG'
        'F0YToEmLIZAQ==');

@$core.Deprecated('Use thpPairedCacheDescriptor instead')
const ThpPairedCache$json = {
  '1': 'ThpPairedCache',
  '2': [
    {
      '1': 'entries',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.hw.trezor.messages.thp.ThpPairedCache.ThpPairedCacheEntry',
      '10': 'entries'
    },
  ],
  '3': [ThpPairedCache_ThpPairedCacheEntry$json],
  '7': {},
};

@$core.Deprecated('Use thpPairedCacheDescriptor instead')
const ThpPairedCache_ThpPairedCacheEntry$json = {
  '1': 'ThpPairedCacheEntry',
  '2': [
    {'1': 'mac_addr', '3': 1, '4': 2, '5': 12, '10': 'macAddr'},
    {'1': 'host_name', '3': 2, '4': 2, '5': 9, '10': 'hostName'},
    {'1': 'app_name', '3': 3, '4': 2, '5': 9, '10': 'appName'},
  ],
  '7': {},
};

/// Descriptor for `ThpPairedCache`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thpPairedCacheDescriptor = $convert.base64Decode(
    'Cg5UaHBQYWlyZWRDYWNoZRJUCgdlbnRyaWVzGAEgAygLMjouaHcudHJlem9yLm1lc3NhZ2VzLn'
    'RocC5UaHBQYWlyZWRDYWNoZS5UaHBQYWlyZWRDYWNoZUVudHJ5UgdlbnRyaWVzGm4KE1RocFBh'
    'aXJlZENhY2hlRW50cnkSGQoIbWFjX2FkZHIYASACKAxSB21hY0FkZHISGwoJaG9zdF9uYW1lGA'
    'IgAigJUghob3N0TmFtZRIZCghhcHBfbmFtZRgDIAIoCVIHYXBwTmFtZToEmLIZAToEmLIZAQ==');
