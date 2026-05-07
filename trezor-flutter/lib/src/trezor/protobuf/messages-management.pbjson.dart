// This is a generated file - do not edit.
//
// Generated from messages-management.proto.

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

@$core.Deprecated('Use backupTypeDescriptor instead')
const BackupType$json = {
  '1': 'BackupType',
  '2': [
    {'1': 'Bip39', '2': 0},
    {'1': 'Slip39_Basic', '2': 1},
    {'1': 'Slip39_Advanced', '2': 2},
    {'1': 'Slip39_Single_Extendable', '2': 3},
    {'1': 'Slip39_Basic_Extendable', '2': 4},
    {'1': 'Slip39_Advanced_Extendable', '2': 5},
  ],
};

/// Descriptor for `BackupType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List backupTypeDescriptor = $convert.base64Decode(
    'CgpCYWNrdXBUeXBlEgkKBUJpcDM5EAASEAoMU2xpcDM5X0Jhc2ljEAESEwoPU2xpcDM5X0Fkdm'
    'FuY2VkEAISHAoYU2xpcDM5X1NpbmdsZV9FeHRlbmRhYmxlEAMSGwoXU2xpcDM5X0Jhc2ljX0V4'
    'dGVuZGFibGUQBBIeChpTbGlwMzlfQWR2YW5jZWRfRXh0ZW5kYWJsZRAF');

@$core.Deprecated('Use backupMethodDescriptor instead')
const BackupMethod$json = {
  '1': 'BackupMethod',
  '2': [
    {'1': 'Display', '2': 0},
    {'1': 'N4W1', '2': 1},
  ],
};

/// Descriptor for `BackupMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List backupMethodDescriptor = $convert
    .base64Decode('CgxCYWNrdXBNZXRob2QSCwoHRGlzcGxheRAAEggKBE40VzEQAQ==');

@$core.Deprecated('Use safetyCheckLevelDescriptor instead')
const SafetyCheckLevel$json = {
  '1': 'SafetyCheckLevel',
  '2': [
    {'1': 'Strict', '2': 0},
    {'1': 'PromptAlways', '2': 1},
    {'1': 'PromptTemporarily', '2': 2},
  ],
};

/// Descriptor for `SafetyCheckLevel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List safetyCheckLevelDescriptor = $convert.base64Decode(
    'ChBTYWZldHlDaGVja0xldmVsEgoKBlN0cmljdBAAEhAKDFByb21wdEFsd2F5cxABEhUKEVByb2'
    '1wdFRlbXBvcmFyaWx5EAI=');

@$core.Deprecated('Use displayRotationDescriptor instead')
const DisplayRotation$json = {
  '1': 'DisplayRotation',
  '2': [
    {'1': 'North', '2': 0},
    {'1': 'East', '2': 90},
    {'1': 'South', '2': 180},
    {'1': 'West', '2': 270},
  ],
};

/// Descriptor for `DisplayRotation`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List displayRotationDescriptor = $convert.base64Decode(
    'Cg9EaXNwbGF5Um90YXRpb24SCQoFTm9ydGgQABIICgRFYXN0EFoSCgoFU291dGgQtAESCQoEV2'
    'VzdBCOAg==');

@$core.Deprecated('Use homescreenFormatDescriptor instead')
const HomescreenFormat$json = {
  '1': 'HomescreenFormat',
  '2': [
    {'1': 'Toif', '2': 1},
    {'1': 'Jpeg', '2': 2},
    {'1': 'ToiG', '2': 3},
  ],
};

/// Descriptor for `HomescreenFormat`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List homescreenFormatDescriptor = $convert.base64Decode(
    'ChBIb21lc2NyZWVuRm9ybWF0EggKBFRvaWYQARIICgRKcGVnEAISCAoEVG9pRxAD');

@$core.Deprecated('Use recoveryTypeDescriptor instead')
const RecoveryType$json = {
  '1': 'RecoveryType',
  '2': [
    {'1': 'NormalRecovery', '2': 0},
    {'1': 'DryRun', '2': 1},
    {'1': 'UnlockRepeatedBackup', '2': 2},
  ],
};

/// Descriptor for `RecoveryType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List recoveryTypeDescriptor = $convert.base64Decode(
    'CgxSZWNvdmVyeVR5cGUSEgoOTm9ybWFsUmVjb3ZlcnkQABIKCgZEcnlSdW4QARIYChRVbmxvY2'
    'tSZXBlYXRlZEJhY2t1cBAC');

@$core.Deprecated('Use initializeDescriptor instead')
const Initialize$json = {
  '1': 'Initialize',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 12, '10': 'sessionId'},
    {
      '1': '_skip_passphrase',
      '3': 2,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'SkipPassphrase',
    },
    {'1': 'derive_cardano', '3': 3, '4': 1, '5': 8, '10': 'deriveCardano'},
  ],
};

/// Descriptor for `Initialize`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initializeDescriptor = $convert.base64Decode(
    'CgpJbml0aWFsaXplEh0KCnNlc3Npb25faWQYASABKAxSCXNlc3Npb25JZBIsChBfc2tpcF9wYX'
    'NzcGhyYXNlGAIgASgIQgIYAVIOU2tpcFBhc3NwaHJhc2USJQoOZGVyaXZlX2NhcmRhbm8YAyAB'
    'KAhSDWRlcml2ZUNhcmRhbm8=');

@$core.Deprecated('Use getFeaturesDescriptor instead')
const GetFeatures$json = {
  '1': 'GetFeatures',
};

/// Descriptor for `GetFeatures`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFeaturesDescriptor =
    $convert.base64Decode('CgtHZXRGZWF0dXJlcw==');

@$core.Deprecated('Use featuresDescriptor instead')
const Features$json = {
  '1': 'Features',
  '2': [
    {'1': 'vendor', '3': 1, '4': 1, '5': 9, '10': 'vendor'},
    {'1': 'major_version', '3': 2, '4': 2, '5': 13, '10': 'majorVersion'},
    {'1': 'minor_version', '3': 3, '4': 2, '5': 13, '10': 'minorVersion'},
    {'1': 'patch_version', '3': 4, '4': 2, '5': 13, '10': 'patchVersion'},
    {'1': 'build_version', '3': 61, '4': 1, '5': 13, '10': 'buildVersion'},
    {'1': 'bootloader_mode', '3': 5, '4': 1, '5': 8, '10': 'bootloaderMode'},
    {'1': 'device_id', '3': 6, '4': 1, '5': 9, '10': 'deviceId'},
    {'1': 'pin_protection', '3': 7, '4': 1, '5': 8, '10': 'pinProtection'},
    {
      '1': 'passphrase_protection',
      '3': 8,
      '4': 1,
      '5': 8,
      '10': 'passphraseProtection'
    },
    {'1': 'language', '3': 9, '4': 1, '5': 9, '10': 'language'},
    {'1': 'label', '3': 10, '4': 1, '5': 9, '10': 'label'},
    {'1': 'initialized', '3': 12, '4': 1, '5': 8, '10': 'initialized'},
    {'1': 'revision', '3': 13, '4': 1, '5': 12, '10': 'revision'},
    {'1': 'bootloader_hash', '3': 14, '4': 1, '5': 12, '10': 'bootloaderHash'},
    {'1': 'imported', '3': 15, '4': 1, '5': 8, '10': 'imported'},
    {'1': 'unlocked', '3': 16, '4': 1, '5': 8, '10': 'unlocked'},
    {
      '1': '_passphrase_cached',
      '3': 17,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'PassphraseCached',
    },
    {'1': 'firmware_present', '3': 18, '4': 1, '5': 8, '10': 'firmwarePresent'},
    {
      '1': 'backup_availability',
      '3': 19,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.management.Features.BackupAvailability',
      '10': 'backupAvailability'
    },
    {'1': 'flags', '3': 20, '4': 1, '5': 13, '10': 'flags'},
    {'1': 'model', '3': 21, '4': 1, '5': 9, '10': 'model'},
    {'1': 'fw_major', '3': 22, '4': 1, '5': 13, '10': 'fwMajor'},
    {'1': 'fw_minor', '3': 23, '4': 1, '5': 13, '10': 'fwMinor'},
    {'1': 'fw_patch', '3': 24, '4': 1, '5': 13, '10': 'fwPatch'},
    {'1': 'fw_build', '3': 62, '4': 1, '5': 13, '10': 'fwBuild'},
    {'1': 'fw_vendor', '3': 25, '4': 1, '5': 9, '10': 'fwVendor'},
    {
      '1': 'unfinished_backup',
      '3': 27,
      '4': 1,
      '5': 8,
      '10': 'unfinishedBackup'
    },
    {'1': 'no_backup', '3': 28, '4': 1, '5': 8, '10': 'noBackup'},
    {
      '1': 'recovery_status',
      '3': 29,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.management.Features.RecoveryStatus',
      '10': 'recoveryStatus'
    },
    {
      '1': 'capabilities',
      '3': 30,
      '4': 3,
      '5': 14,
      '6': '.hw.trezor.messages.management.Features.Capability',
      '10': 'capabilities'
    },
    {
      '1': 'backup_type',
      '3': 31,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.management.BackupType',
      '10': 'backupType'
    },
    {'1': 'sd_card_present', '3': 32, '4': 1, '5': 8, '10': 'sdCardPresent'},
    {'1': 'sd_protection', '3': 33, '4': 1, '5': 8, '10': 'sdProtection'},
    {
      '1': 'wipe_code_protection',
      '3': 34,
      '4': 1,
      '5': 8,
      '10': 'wipeCodeProtection'
    },
    {'1': 'session_id', '3': 35, '4': 1, '5': 12, '10': 'sessionId'},
    {
      '1': 'passphrase_always_on_device',
      '3': 36,
      '4': 1,
      '5': 8,
      '10': 'passphraseAlwaysOnDevice'
    },
    {
      '1': 'safety_checks',
      '3': 37,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.management.SafetyCheckLevel',
      '10': 'safetyChecks'
    },
    {
      '1': 'auto_lock_delay_ms',
      '3': 38,
      '4': 1,
      '5': 13,
      '10': 'autoLockDelayMs'
    },
    {
      '1': 'display_rotation',
      '3': 39,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.management.DisplayRotation',
      '10': 'displayRotation'
    },
    {
      '1': 'experimental_features',
      '3': 40,
      '4': 1,
      '5': 8,
      '10': 'experimentalFeatures'
    },
    {'1': 'busy', '3': 41, '4': 1, '5': 8, '10': 'busy'},
    {
      '1': 'homescreen_format',
      '3': 42,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.management.HomescreenFormat',
      '10': 'homescreenFormat'
    },
    {
      '1': 'hide_passphrase_from_host',
      '3': 43,
      '4': 1,
      '5': 8,
      '10': 'hidePassphraseFromHost'
    },
    {'1': 'internal_model', '3': 44, '4': 1, '5': 9, '10': 'internalModel'},
    {'1': 'unit_color', '3': 45, '4': 1, '5': 13, '10': 'unitColor'},
    {'1': 'unit_btconly', '3': 46, '4': 1, '5': 8, '10': 'unitBtconly'},
    {
      '1': 'homescreen_width',
      '3': 47,
      '4': 1,
      '5': 13,
      '10': 'homescreenWidth'
    },
    {
      '1': 'homescreen_height',
      '3': 48,
      '4': 1,
      '5': 13,
      '10': 'homescreenHeight'
    },
    {
      '1': 'bootloader_locked',
      '3': 49,
      '4': 1,
      '5': 8,
      '10': 'bootloaderLocked'
    },
    {
      '1': 'language_version_matches',
      '3': 50,
      '4': 1,
      '5': 8,
      '7': 'true',
      '10': 'languageVersionMatches'
    },
    {'1': 'unit_packaging', '3': 51, '4': 1, '5': 13, '10': 'unitPackaging'},
    {'1': 'haptic_feedback', '3': 52, '4': 1, '5': 8, '10': 'hapticFeedback'},
    {
      '1': 'recovery_type',
      '3': 53,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.management.RecoveryType',
      '10': 'recoveryType'
    },
    {'1': 'optiga_sec', '3': 54, '4': 1, '5': 13, '10': 'optigaSec'},
    {'1': 'soc', '3': 55, '4': 1, '5': 13, '10': 'soc'},
    {
      '1': 'firmware_corrupted',
      '3': 56,
      '4': 1,
      '5': 8,
      '10': 'firmwareCorrupted'
    },
    {
      '1': 'auto_lock_delay_battery_ms',
      '3': 57,
      '4': 1,
      '5': 13,
      '10': 'autoLockDelayBatteryMs'
    },
    {'1': 'led', '3': 58, '4': 1, '5': 8, '10': 'led'},
    {'1': 'usb_connected', '3': 59, '4': 1, '5': 8, '10': 'usbConnected'},
    {
      '1': 'wireless_connected',
      '3': 60,
      '4': 1,
      '5': 8,
      '10': 'wirelessConnected'
    },
  ],
  '4': [
    Features_BackupAvailability$json,
    Features_RecoveryStatus$json,
    Features_Capability$json
  ],
};

@$core.Deprecated('Use featuresDescriptor instead')
const Features_BackupAvailability$json = {
  '1': 'BackupAvailability',
  '2': [
    {'1': 'NotAvailable', '2': 0},
    {'1': 'Required', '2': 1},
    {'1': 'Available', '2': 2},
  ],
};

@$core.Deprecated('Use featuresDescriptor instead')
const Features_RecoveryStatus$json = {
  '1': 'RecoveryStatus',
  '2': [
    {'1': 'Nothing', '2': 0},
    {'1': 'Recovery', '2': 1},
    {'1': 'Backup', '2': 2},
  ],
};

@$core.Deprecated('Use featuresDescriptor instead')
const Features_Capability$json = {
  '1': 'Capability',
  '2': [
    {'1': 'Capability_Bitcoin', '2': 1, '3': {}},
    {'1': 'Capability_Bitcoin_like', '2': 2},
    {'1': 'Capability_Binance', '2': 3},
    {'1': 'Capability_Cardano', '2': 4},
    {'1': 'Capability_Crypto', '2': 5, '3': {}},
    {'1': 'Capability_EOS', '2': 6},
    {'1': 'Capability_Ethereum', '2': 7},
    {
      '1': 'Capability_Lisk',
      '2': 8,
      '3': {'1': true},
    },
    {'1': 'Capability_Monero', '2': 9},
    {'1': 'Capability_NEM', '2': 10},
    {'1': 'Capability_Ripple', '2': 11},
    {'1': 'Capability_Stellar', '2': 12},
    {'1': 'Capability_Tezos', '2': 13},
    {'1': 'Capability_U2F', '2': 14},
    {'1': 'Capability_Shamir', '2': 15, '3': {}},
    {'1': 'Capability_ShamirGroups', '2': 16, '3': {}},
    {'1': 'Capability_PassphraseEntry', '2': 17, '3': {}},
    {'1': 'Capability_Solana', '2': 18},
    {'1': 'Capability_Translations', '2': 19, '3': {}},
    {'1': 'Capability_Brightness', '2': 20, '3': {}},
    {'1': 'Capability_Haptic', '2': 21, '3': {}},
    {'1': 'Capability_BLE', '2': 22, '3': {}},
    {'1': 'Capability_NFC', '2': 23, '3': {}},
    {'1': 'Capability_Tron', '2': 24},
    {'1': 'Capability_N4W1', '2': 25, '3': {}},
  ],
  '3': {},
};

/// Descriptor for `Features`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featuresDescriptor = $convert.base64Decode(
    'CghGZWF0dXJlcxIWCgZ2ZW5kb3IYASABKAlSBnZlbmRvchIjCg1tYWpvcl92ZXJzaW9uGAIgAi'
    'gNUgxtYWpvclZlcnNpb24SIwoNbWlub3JfdmVyc2lvbhgDIAIoDVIMbWlub3JWZXJzaW9uEiMK'
    'DXBhdGNoX3ZlcnNpb24YBCACKA1SDHBhdGNoVmVyc2lvbhIjCg1idWlsZF92ZXJzaW9uGD0gAS'
    'gNUgxidWlsZFZlcnNpb24SJwoPYm9vdGxvYWRlcl9tb2RlGAUgASgIUg5ib290bG9hZGVyTW9k'
    'ZRIbCglkZXZpY2VfaWQYBiABKAlSCGRldmljZUlkEiUKDnBpbl9wcm90ZWN0aW9uGAcgASgIUg'
    '1waW5Qcm90ZWN0aW9uEjMKFXBhc3NwaHJhc2VfcHJvdGVjdGlvbhgIIAEoCFIUcGFzc3BocmFz'
    'ZVByb3RlY3Rpb24SGgoIbGFuZ3VhZ2UYCSABKAlSCGxhbmd1YWdlEhQKBWxhYmVsGAogASgJUg'
    'VsYWJlbBIgCgtpbml0aWFsaXplZBgMIAEoCFILaW5pdGlhbGl6ZWQSGgoIcmV2aXNpb24YDSAB'
    'KAxSCHJldmlzaW9uEicKD2Jvb3Rsb2FkZXJfaGFzaBgOIAEoDFIOYm9vdGxvYWRlckhhc2gSGg'
    'oIaW1wb3J0ZWQYDyABKAhSCGltcG9ydGVkEhoKCHVubG9ja2VkGBAgASgIUgh1bmxvY2tlZBIw'
    'ChJfcGFzc3BocmFzZV9jYWNoZWQYESABKAhCAhgBUhBQYXNzcGhyYXNlQ2FjaGVkEikKEGZpcm'
    '13YXJlX3ByZXNlbnQYEiABKAhSD2Zpcm13YXJlUHJlc2VudBJrChNiYWNrdXBfYXZhaWxhYmls'
    'aXR5GBMgASgOMjouaHcudHJlem9yLm1lc3NhZ2VzLm1hbmFnZW1lbnQuRmVhdHVyZXMuQmFja3'
    'VwQXZhaWxhYmlsaXR5UhJiYWNrdXBBdmFpbGFiaWxpdHkSFAoFZmxhZ3MYFCABKA1SBWZsYWdz'
    'EhQKBW1vZGVsGBUgASgJUgVtb2RlbBIZCghmd19tYWpvchgWIAEoDVIHZndNYWpvchIZCghmd1'
    '9taW5vchgXIAEoDVIHZndNaW5vchIZCghmd19wYXRjaBgYIAEoDVIHZndQYXRjaBIZCghmd19i'
    'dWlsZBg+IAEoDVIHZndCdWlsZBIbCglmd192ZW5kb3IYGSABKAlSCGZ3VmVuZG9yEisKEXVuZm'
    'luaXNoZWRfYmFja3VwGBsgASgIUhB1bmZpbmlzaGVkQmFja3VwEhsKCW5vX2JhY2t1cBgcIAEo'
    'CFIIbm9CYWNrdXASXwoPcmVjb3Zlcnlfc3RhdHVzGB0gASgOMjYuaHcudHJlem9yLm1lc3NhZ2'
    'VzLm1hbmFnZW1lbnQuRmVhdHVyZXMuUmVjb3ZlcnlTdGF0dXNSDnJlY292ZXJ5U3RhdHVzElYK'
    'DGNhcGFiaWxpdGllcxgeIAMoDjIyLmh3LnRyZXpvci5tZXNzYWdlcy5tYW5hZ2VtZW50LkZlYX'
    'R1cmVzLkNhcGFiaWxpdHlSDGNhcGFiaWxpdGllcxJKCgtiYWNrdXBfdHlwZRgfIAEoDjIpLmh3'
    'LnRyZXpvci5tZXNzYWdlcy5tYW5hZ2VtZW50LkJhY2t1cFR5cGVSCmJhY2t1cFR5cGUSJgoPc2'
    'RfY2FyZF9wcmVzZW50GCAgASgIUg1zZENhcmRQcmVzZW50EiMKDXNkX3Byb3RlY3Rpb24YISAB'
    'KAhSDHNkUHJvdGVjdGlvbhIwChR3aXBlX2NvZGVfcHJvdGVjdGlvbhgiIAEoCFISd2lwZUNvZG'
    'VQcm90ZWN0aW9uEh0KCnNlc3Npb25faWQYIyABKAxSCXNlc3Npb25JZBI9ChtwYXNzcGhyYXNl'
    'X2Fsd2F5c19vbl9kZXZpY2UYJCABKAhSGHBhc3NwaHJhc2VBbHdheXNPbkRldmljZRJUCg1zYW'
    'ZldHlfY2hlY2tzGCUgASgOMi8uaHcudHJlem9yLm1lc3NhZ2VzLm1hbmFnZW1lbnQuU2FmZXR5'
    'Q2hlY2tMZXZlbFIMc2FmZXR5Q2hlY2tzEisKEmF1dG9fbG9ja19kZWxheV9tcxgmIAEoDVIPYX'
    'V0b0xvY2tEZWxheU1zElkKEGRpc3BsYXlfcm90YXRpb24YJyABKA4yLi5ody50cmV6b3IubWVz'
    'c2FnZXMubWFuYWdlbWVudC5EaXNwbGF5Um90YXRpb25SD2Rpc3BsYXlSb3RhdGlvbhIzChVleH'
    'BlcmltZW50YWxfZmVhdHVyZXMYKCABKAhSFGV4cGVyaW1lbnRhbEZlYXR1cmVzEhIKBGJ1c3kY'
    'KSABKAhSBGJ1c3kSXAoRaG9tZXNjcmVlbl9mb3JtYXQYKiABKA4yLy5ody50cmV6b3IubWVzc2'
    'FnZXMubWFuYWdlbWVudC5Ib21lc2NyZWVuRm9ybWF0UhBob21lc2NyZWVuRm9ybWF0EjkKGWhp'
    'ZGVfcGFzc3BocmFzZV9mcm9tX2hvc3QYKyABKAhSFmhpZGVQYXNzcGhyYXNlRnJvbUhvc3QSJQ'
    'oOaW50ZXJuYWxfbW9kZWwYLCABKAlSDWludGVybmFsTW9kZWwSHQoKdW5pdF9jb2xvchgtIAEo'
    'DVIJdW5pdENvbG9yEiEKDHVuaXRfYnRjb25seRguIAEoCFILdW5pdEJ0Y29ubHkSKQoQaG9tZX'
    'NjcmVlbl93aWR0aBgvIAEoDVIPaG9tZXNjcmVlbldpZHRoEisKEWhvbWVzY3JlZW5faGVpZ2h0'
    'GDAgASgNUhBob21lc2NyZWVuSGVpZ2h0EisKEWJvb3Rsb2FkZXJfbG9ja2VkGDEgASgIUhBib2'
    '90bG9hZGVyTG9ja2VkEj4KGGxhbmd1YWdlX3ZlcnNpb25fbWF0Y2hlcxgyIAEoCDoEdHJ1ZVIW'
    'bGFuZ3VhZ2VWZXJzaW9uTWF0Y2hlcxIlCg51bml0X3BhY2thZ2luZxgzIAEoDVINdW5pdFBhY2'
    'thZ2luZxInCg9oYXB0aWNfZmVlZGJhY2sYNCABKAhSDmhhcHRpY0ZlZWRiYWNrElAKDXJlY292'
    'ZXJ5X3R5cGUYNSABKA4yKy5ody50cmV6b3IubWVzc2FnZXMubWFuYWdlbWVudC5SZWNvdmVyeV'
    'R5cGVSDHJlY292ZXJ5VHlwZRIdCgpvcHRpZ2Ffc2VjGDYgASgNUglvcHRpZ2FTZWMSEAoDc29j'
    'GDcgASgNUgNzb2MSLQoSZmlybXdhcmVfY29ycnVwdGVkGDggASgIUhFmaXJtd2FyZUNvcnJ1cH'
    'RlZBI6ChphdXRvX2xvY2tfZGVsYXlfYmF0dGVyeV9tcxg5IAEoDVIWYXV0b0xvY2tEZWxheUJh'
    'dHRlcnlNcxIQCgNsZWQYOiABKAhSA2xlZBIjCg11c2JfY29ubmVjdGVkGDsgASgIUgx1c2JDb2'
    '5uZWN0ZWQSLQoSd2lyZWxlc3NfY29ubmVjdGVkGDwgASgIUhF3aXJlbGVzc0Nvbm5lY3RlZCJD'
    'ChJCYWNrdXBBdmFpbGFiaWxpdHkSEAoMTm90QXZhaWxhYmxlEAASDAoIUmVxdWlyZWQQARINCg'
    'lBdmFpbGFibGUQAiI3Cg5SZWNvdmVyeVN0YXR1cxILCgdOb3RoaW5nEAASDAoIUmVjb3ZlcnkQ'
    'ARIKCgZCYWNrdXAQAiKmBQoKQ2FwYWJpbGl0eRIcChJDYXBhYmlsaXR5X0JpdGNvaW4QARoEgK'
    'YdARIbChdDYXBhYmlsaXR5X0JpdGNvaW5fbGlrZRACEhYKEkNhcGFiaWxpdHlfQmluYW5jZRAD'
    'EhYKEkNhcGFiaWxpdHlfQ2FyZGFubxAEEhsKEUNhcGFiaWxpdHlfQ3J5cHRvEAUaBICmHQESEg'
    'oOQ2FwYWJpbGl0eV9FT1MQBhIXChNDYXBhYmlsaXR5X0V0aGVyZXVtEAcSFwoPQ2FwYWJpbGl0'
    'eV9MaXNrEAgaAggBEhUKEUNhcGFiaWxpdHlfTW9uZXJvEAkSEgoOQ2FwYWJpbGl0eV9ORU0QCh'
    'IVChFDYXBhYmlsaXR5X1JpcHBsZRALEhYKEkNhcGFiaWxpdHlfU3RlbGxhchAMEhQKEENhcGFi'
    'aWxpdHlfVGV6b3MQDRISCg5DYXBhYmlsaXR5X1UyRhAOEhsKEUNhcGFiaWxpdHlfU2hhbWlyEA'
    '8aBICmHQESIQoXQ2FwYWJpbGl0eV9TaGFtaXJHcm91cHMQEBoEgKYdARIkChpDYXBhYmlsaXR5'
    'X1Bhc3NwaHJhc2VFbnRyeRARGgSAph0BEhUKEUNhcGFiaWxpdHlfU29sYW5hEBISIQoXQ2FwYW'
    'JpbGl0eV9UcmFuc2xhdGlvbnMQExoEgKYdARIfChVDYXBhYmlsaXR5X0JyaWdodG5lc3MQFBoE'
    'gKYdARIbChFDYXBhYmlsaXR5X0hhcHRpYxAVGgSAph0BEhgKDkNhcGFiaWxpdHlfQkxFEBYaBI'
    'CmHQESGAoOQ2FwYWJpbGl0eV9ORkMQFxoEgKYdARITCg9DYXBhYmlsaXR5X1Ryb24QGBIZCg9D'
    'YXBhYmlsaXR5X040VzEQGRoEgKYdARoEyPMYAQ==');

@$core.Deprecated('Use lockDeviceDescriptor instead')
const LockDevice$json = {
  '1': 'LockDevice',
};

/// Descriptor for `LockDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lockDeviceDescriptor =
    $convert.base64Decode('CgpMb2NrRGV2aWNl');

@$core.Deprecated('Use setBusyDescriptor instead')
const SetBusy$json = {
  '1': 'SetBusy',
  '2': [
    {'1': 'expiry_ms', '3': 1, '4': 1, '5': 13, '10': 'expiryMs'},
  ],
};

/// Descriptor for `SetBusy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setBusyDescriptor = $convert
    .base64Decode('CgdTZXRCdXN5EhsKCWV4cGlyeV9tcxgBIAEoDVIIZXhwaXJ5TXM=');

@$core.Deprecated('Use endSessionDescriptor instead')
const EndSession$json = {
  '1': 'EndSession',
};

/// Descriptor for `EndSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endSessionDescriptor =
    $convert.base64Decode('CgpFbmRTZXNzaW9u');

@$core.Deprecated('Use applySettingsDescriptor instead')
const ApplySettings$json = {
  '1': 'ApplySettings',
  '2': [
    {
      '1': 'language',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'language',
    },
    {'1': 'label', '3': 2, '4': 1, '5': 9, '10': 'label'},
    {'1': 'use_passphrase', '3': 3, '4': 1, '5': 8, '10': 'usePassphrase'},
    {'1': 'homescreen', '3': 4, '4': 1, '5': 12, '10': 'homescreen'},
    {
      '1': '_passphrase_source',
      '3': 5,
      '4': 1,
      '5': 13,
      '8': {'3': true},
      '10': 'PassphraseSource',
    },
    {
      '1': 'auto_lock_delay_ms',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'autoLockDelayMs'
    },
    {
      '1': 'display_rotation',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.management.DisplayRotation',
      '10': 'displayRotation'
    },
    {
      '1': 'passphrase_always_on_device',
      '3': 8,
      '4': 1,
      '5': 8,
      '10': 'passphraseAlwaysOnDevice'
    },
    {
      '1': 'safety_checks',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.management.SafetyCheckLevel',
      '10': 'safetyChecks'
    },
    {
      '1': 'experimental_features',
      '3': 10,
      '4': 1,
      '5': 8,
      '10': 'experimentalFeatures'
    },
    {
      '1': 'hide_passphrase_from_host',
      '3': 11,
      '4': 1,
      '5': 8,
      '10': 'hidePassphraseFromHost'
    },
    {'1': 'haptic_feedback', '3': 13, '4': 1, '5': 8, '10': 'hapticFeedback'},
    {
      '1': 'homescreen_length',
      '3': 14,
      '4': 1,
      '5': 13,
      '10': 'homescreenLength'
    },
    {
      '1': 'auto_lock_delay_battery_ms',
      '3': 15,
      '4': 1,
      '5': 13,
      '10': 'autoLockDelayBatteryMs'
    },
  ],
};

/// Descriptor for `ApplySettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applySettingsDescriptor = $convert.base64Decode(
    'Cg1BcHBseVNldHRpbmdzEh4KCGxhbmd1YWdlGAEgASgJQgIYAVIIbGFuZ3VhZ2USFAoFbGFiZW'
    'wYAiABKAlSBWxhYmVsEiUKDnVzZV9wYXNzcGhyYXNlGAMgASgIUg11c2VQYXNzcGhyYXNlEh4K'
    'CmhvbWVzY3JlZW4YBCABKAxSCmhvbWVzY3JlZW4SMAoSX3Bhc3NwaHJhc2Vfc291cmNlGAUgAS'
    'gNQgIYAVIQUGFzc3BocmFzZVNvdXJjZRIrChJhdXRvX2xvY2tfZGVsYXlfbXMYBiABKA1SD2F1'
    'dG9Mb2NrRGVsYXlNcxJZChBkaXNwbGF5X3JvdGF0aW9uGAcgASgOMi4uaHcudHJlem9yLm1lc3'
    'NhZ2VzLm1hbmFnZW1lbnQuRGlzcGxheVJvdGF0aW9uUg9kaXNwbGF5Um90YXRpb24SPQobcGFz'
    'c3BocmFzZV9hbHdheXNfb25fZGV2aWNlGAggASgIUhhwYXNzcGhyYXNlQWx3YXlzT25EZXZpY2'
    'USVAoNc2FmZXR5X2NoZWNrcxgJIAEoDjIvLmh3LnRyZXpvci5tZXNzYWdlcy5tYW5hZ2VtZW50'
    'LlNhZmV0eUNoZWNrTGV2ZWxSDHNhZmV0eUNoZWNrcxIzChVleHBlcmltZW50YWxfZmVhdHVyZX'
    'MYCiABKAhSFGV4cGVyaW1lbnRhbEZlYXR1cmVzEjkKGWhpZGVfcGFzc3BocmFzZV9mcm9tX2hv'
    'c3QYCyABKAhSFmhpZGVQYXNzcGhyYXNlRnJvbUhvc3QSJwoPaGFwdGljX2ZlZWRiYWNrGA0gAS'
    'gIUg5oYXB0aWNGZWVkYmFjaxIrChFob21lc2NyZWVuX2xlbmd0aBgOIAEoDVIQaG9tZXNjcmVl'
    'bkxlbmd0aBI6ChphdXRvX2xvY2tfZGVsYXlfYmF0dGVyeV9tcxgPIAEoDVIWYXV0b0xvY2tEZW'
    'xheUJhdHRlcnlNcw==');

@$core.Deprecated('Use changeLanguageDescriptor instead')
const ChangeLanguage$json = {
  '1': 'ChangeLanguage',
  '2': [
    {'1': 'data_length', '3': 1, '4': 2, '5': 13, '10': 'dataLength'},
    {'1': 'show_display', '3': 2, '4': 1, '5': 8, '10': 'showDisplay'},
  ],
};

/// Descriptor for `ChangeLanguage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeLanguageDescriptor = $convert.base64Decode(
    'Cg5DaGFuZ2VMYW5ndWFnZRIfCgtkYXRhX2xlbmd0aBgBIAIoDVIKZGF0YUxlbmd0aBIhCgxzaG'
    '93X2Rpc3BsYXkYAiABKAhSC3Nob3dEaXNwbGF5');

@$core.Deprecated('Use dataChunkRequestDescriptor instead')
const DataChunkRequest$json = {
  '1': 'DataChunkRequest',
  '2': [
    {'1': 'data_length', '3': 1, '4': 2, '5': 13, '10': 'dataLength'},
    {'1': 'data_offset', '3': 2, '4': 2, '5': 13, '10': 'dataOffset'},
  ],
};

/// Descriptor for `DataChunkRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataChunkRequestDescriptor = $convert.base64Decode(
    'ChBEYXRhQ2h1bmtSZXF1ZXN0Eh8KC2RhdGFfbGVuZ3RoGAEgAigNUgpkYXRhTGVuZ3RoEh8KC2'
    'RhdGFfb2Zmc2V0GAIgAigNUgpkYXRhT2Zmc2V0');

@$core.Deprecated('Use dataChunkAckDescriptor instead')
const DataChunkAck$json = {
  '1': 'DataChunkAck',
  '2': [
    {'1': 'data_chunk', '3': 1, '4': 2, '5': 12, '10': 'dataChunk'},
  ],
};

/// Descriptor for `DataChunkAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataChunkAckDescriptor = $convert.base64Decode(
    'CgxEYXRhQ2h1bmtBY2sSHQoKZGF0YV9jaHVuaxgBIAIoDFIJZGF0YUNodW5r');

@$core.Deprecated('Use applyFlagsDescriptor instead')
const ApplyFlags$json = {
  '1': 'ApplyFlags',
  '2': [
    {'1': 'flags', '3': 1, '4': 2, '5': 13, '10': 'flags'},
  ],
};

/// Descriptor for `ApplyFlags`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyFlagsDescriptor =
    $convert.base64Decode('CgpBcHBseUZsYWdzEhQKBWZsYWdzGAEgAigNUgVmbGFncw==');

@$core.Deprecated('Use changePinDescriptor instead')
const ChangePin$json = {
  '1': 'ChangePin',
  '2': [
    {'1': 'remove', '3': 1, '4': 1, '5': 8, '10': 'remove'},
  ],
};

/// Descriptor for `ChangePin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePinDescriptor =
    $convert.base64Decode('CglDaGFuZ2VQaW4SFgoGcmVtb3ZlGAEgASgIUgZyZW1vdmU=');

@$core.Deprecated('Use changeWipeCodeDescriptor instead')
const ChangeWipeCode$json = {
  '1': 'ChangeWipeCode',
  '2': [
    {'1': 'remove', '3': 1, '4': 1, '5': 8, '10': 'remove'},
  ],
};

/// Descriptor for `ChangeWipeCode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeWipeCodeDescriptor = $convert
    .base64Decode('Cg5DaGFuZ2VXaXBlQ29kZRIWCgZyZW1vdmUYASABKAhSBnJlbW92ZQ==');

@$core.Deprecated('Use sdProtectDescriptor instead')
const SdProtect$json = {
  '1': 'SdProtect',
  '2': [
    {
      '1': 'operation',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.hw.trezor.messages.management.SdProtect.SdProtectOperationType',
      '10': 'operation'
    },
  ],
  '4': [SdProtect_SdProtectOperationType$json],
};

@$core.Deprecated('Use sdProtectDescriptor instead')
const SdProtect_SdProtectOperationType$json = {
  '1': 'SdProtectOperationType',
  '2': [
    {'1': 'DISABLE', '2': 0},
    {'1': 'ENABLE', '2': 1},
    {'1': 'REFRESH', '2': 2},
  ],
};

/// Descriptor for `SdProtect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sdProtectDescriptor = $convert.base64Decode(
    'CglTZFByb3RlY3QSXQoJb3BlcmF0aW9uGAEgAigOMj8uaHcudHJlem9yLm1lc3NhZ2VzLm1hbm'
    'FnZW1lbnQuU2RQcm90ZWN0LlNkUHJvdGVjdE9wZXJhdGlvblR5cGVSCW9wZXJhdGlvbiI+ChZT'
    'ZFByb3RlY3RPcGVyYXRpb25UeXBlEgsKB0RJU0FCTEUQABIKCgZFTkFCTEUQARILCgdSRUZSRV'
    'NIEAI=');

@$core.Deprecated('Use pingDescriptor instead')
const Ping$json = {
  '1': 'Ping',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '7': '', '10': 'message'},
    {
      '1': 'button_protection',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'buttonProtection'
    },
  ],
};

/// Descriptor for `Ping`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingDescriptor = $convert.base64Decode(
    'CgRQaW5nEhoKB21lc3NhZ2UYASABKAk6AFIHbWVzc2FnZRIrChFidXR0b25fcHJvdGVjdGlvbh'
    'gCIAEoCFIQYnV0dG9uUHJvdGVjdGlvbg==');

@$core.Deprecated('Use cancelDescriptor instead')
const Cancel$json = {
  '1': 'Cancel',
};

/// Descriptor for `Cancel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelDescriptor =
    $convert.base64Decode('CgZDYW5jZWw=');

@$core.Deprecated('Use getEntropyDescriptor instead')
const GetEntropy$json = {
  '1': 'GetEntropy',
  '2': [
    {'1': 'size', '3': 1, '4': 2, '5': 13, '10': 'size'},
  ],
};

/// Descriptor for `GetEntropy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEntropyDescriptor =
    $convert.base64Decode('CgpHZXRFbnRyb3B5EhIKBHNpemUYASACKA1SBHNpemU=');

@$core.Deprecated('Use entropyDescriptor instead')
const Entropy$json = {
  '1': 'Entropy',
  '2': [
    {'1': 'entropy', '3': 1, '4': 2, '5': 12, '10': 'entropy'},
  ],
};

/// Descriptor for `Entropy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entropyDescriptor =
    $convert.base64Decode('CgdFbnRyb3B5EhgKB2VudHJvcHkYASACKAxSB2VudHJvcHk=');

@$core.Deprecated('Use getFirmwareHashDescriptor instead')
const GetFirmwareHash$json = {
  '1': 'GetFirmwareHash',
  '2': [
    {'1': 'challenge', '3': 1, '4': 1, '5': 12, '10': 'challenge'},
  ],
};

/// Descriptor for `GetFirmwareHash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFirmwareHashDescriptor = $convert.base64Decode(
    'Cg9HZXRGaXJtd2FyZUhhc2gSHAoJY2hhbGxlbmdlGAEgASgMUgljaGFsbGVuZ2U=');

@$core.Deprecated('Use firmwareHashDescriptor instead')
const FirmwareHash$json = {
  '1': 'FirmwareHash',
  '2': [
    {'1': 'hash', '3': 1, '4': 2, '5': 12, '10': 'hash'},
  ],
};

/// Descriptor for `FirmwareHash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List firmwareHashDescriptor =
    $convert.base64Decode('CgxGaXJtd2FyZUhhc2gSEgoEaGFzaBgBIAIoDFIEaGFzaA==');

@$core.Deprecated('Use authenticateDeviceDescriptor instead')
const AuthenticateDevice$json = {
  '1': 'AuthenticateDevice',
  '2': [
    {'1': 'challenge', '3': 1, '4': 2, '5': 12, '10': 'challenge'},
  ],
};

/// Descriptor for `AuthenticateDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateDeviceDescriptor =
    $convert.base64Decode(
        'ChJBdXRoZW50aWNhdGVEZXZpY2USHAoJY2hhbGxlbmdlGAEgAigMUgljaGFsbGVuZ2U=');

@$core.Deprecated('Use authenticityProofDescriptor instead')
const AuthenticityProof$json = {
  '1': 'AuthenticityProof',
  '2': [
    {
      '1': 'optiga_certificates',
      '3': 1,
      '4': 3,
      '5': 12,
      '10': 'optigaCertificates'
    },
    {'1': 'optiga_signature', '3': 2, '4': 2, '5': 12, '10': 'optigaSignature'},
    {
      '1': 'tropic_certificates',
      '3': 3,
      '4': 3,
      '5': 12,
      '10': 'tropicCertificates'
    },
    {'1': 'tropic_signature', '3': 4, '4': 1, '5': 12, '10': 'tropicSignature'},
    {'1': 'mcu_certificates', '3': 5, '4': 3, '5': 12, '10': 'mcuCertificates'},
    {'1': 'mcu_signature', '3': 6, '4': 1, '5': 12, '10': 'mcuSignature'},
  ],
};

/// Descriptor for `AuthenticityProof`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticityProofDescriptor = $convert.base64Decode(
    'ChFBdXRoZW50aWNpdHlQcm9vZhIvChNvcHRpZ2FfY2VydGlmaWNhdGVzGAEgAygMUhJvcHRpZ2'
    'FDZXJ0aWZpY2F0ZXMSKQoQb3B0aWdhX3NpZ25hdHVyZRgCIAIoDFIPb3B0aWdhU2lnbmF0dXJl'
    'Ei8KE3Ryb3BpY19jZXJ0aWZpY2F0ZXMYAyADKAxSEnRyb3BpY0NlcnRpZmljYXRlcxIpChB0cm'
    '9waWNfc2lnbmF0dXJlGAQgASgMUg90cm9waWNTaWduYXR1cmUSKQoQbWN1X2NlcnRpZmljYXRl'
    'cxgFIAMoDFIPbWN1Q2VydGlmaWNhdGVzEiMKDW1jdV9zaWduYXR1cmUYBiABKAxSDG1jdVNpZ2'
    '5hdHVyZQ==');

@$core.Deprecated('Use wipeDeviceDescriptor instead')
const WipeDevice$json = {
  '1': 'WipeDevice',
};

/// Descriptor for `WipeDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wipeDeviceDescriptor =
    $convert.base64Decode('CgpXaXBlRGV2aWNl');

@$core.Deprecated('Use loadDeviceDescriptor instead')
const LoadDevice$json = {
  '1': 'LoadDevice',
  '2': [
    {'1': 'mnemonics', '3': 1, '4': 3, '5': 9, '10': 'mnemonics'},
    {'1': 'pin', '3': 3, '4': 1, '5': 9, '10': 'pin'},
    {
      '1': 'passphrase_protection',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'passphraseProtection'
    },
    {
      '1': 'language',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'language',
    },
    {'1': 'label', '3': 6, '4': 1, '5': 9, '10': 'label'},
    {'1': 'skip_checksum', '3': 7, '4': 1, '5': 8, '10': 'skipChecksum'},
    {'1': 'u2f_counter', '3': 8, '4': 1, '5': 13, '10': 'u2fCounter'},
    {'1': 'needs_backup', '3': 9, '4': 1, '5': 8, '10': 'needsBackup'},
    {'1': 'no_backup', '3': 10, '4': 1, '5': 8, '10': 'noBackup'},
    {
      '1': 'unfinished_backup',
      '3': 11,
      '4': 1,
      '5': 8,
      '10': 'unfinishedBackup'
    },
  ],
};

/// Descriptor for `LoadDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadDeviceDescriptor = $convert.base64Decode(
    'CgpMb2FkRGV2aWNlEhwKCW1uZW1vbmljcxgBIAMoCVIJbW5lbW9uaWNzEhAKA3BpbhgDIAEoCV'
    'IDcGluEjMKFXBhc3NwaHJhc2VfcHJvdGVjdGlvbhgEIAEoCFIUcGFzc3BocmFzZVByb3RlY3Rp'
    'b24SHgoIbGFuZ3VhZ2UYBSABKAlCAhgBUghsYW5ndWFnZRIUCgVsYWJlbBgGIAEoCVIFbGFiZW'
    'wSIwoNc2tpcF9jaGVja3N1bRgHIAEoCFIMc2tpcENoZWNrc3VtEh8KC3UyZl9jb3VudGVyGAgg'
    'ASgNUgp1MmZDb3VudGVyEiEKDG5lZWRzX2JhY2t1cBgJIAEoCFILbmVlZHNCYWNrdXASGwoJbm'
    '9fYmFja3VwGAogASgIUghub0JhY2t1cBIrChF1bmZpbmlzaGVkX2JhY2t1cBgLIAEoCFIQdW5m'
    'aW5pc2hlZEJhY2t1cA==');

@$core.Deprecated('Use resetDeviceDescriptor instead')
const ResetDevice$json = {
  '1': 'ResetDevice',
  '2': [
    {'1': 'strength', '3': 2, '4': 1, '5': 13, '7': '256', '10': 'strength'},
    {
      '1': 'passphrase_protection',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'passphraseProtection'
    },
    {'1': 'pin_protection', '3': 4, '4': 1, '5': 8, '10': 'pinProtection'},
    {
      '1': 'language',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'language',
    },
    {'1': 'label', '3': 6, '4': 1, '5': 9, '10': 'label'},
    {'1': 'u2f_counter', '3': 7, '4': 1, '5': 13, '10': 'u2fCounter'},
    {'1': 'skip_backup', '3': 8, '4': 1, '5': 8, '10': 'skipBackup'},
    {'1': 'no_backup', '3': 9, '4': 1, '5': 8, '10': 'noBackup'},
    {
      '1': 'backup_type',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.management.BackupType',
      '7': 'Bip39',
      '10': 'backupType'
    },
    {'1': 'entropy_check', '3': 11, '4': 1, '5': 8, '10': 'entropyCheck'},
    {
      '1': 'backup_method',
      '3': 12,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.management.BackupMethod',
      '7': 'Display',
      '10': 'backupMethod'
    },
  ],
  '9': [
    {'1': 1, '2': 2},
  ],
};

/// Descriptor for `ResetDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetDeviceDescriptor = $convert.base64Decode(
    'CgtSZXNldERldmljZRIfCghzdHJlbmd0aBgCIAEoDToDMjU2UghzdHJlbmd0aBIzChVwYXNzcG'
    'hyYXNlX3Byb3RlY3Rpb24YAyABKAhSFHBhc3NwaHJhc2VQcm90ZWN0aW9uEiUKDnBpbl9wcm90'
    'ZWN0aW9uGAQgASgIUg1waW5Qcm90ZWN0aW9uEh4KCGxhbmd1YWdlGAUgASgJQgIYAVIIbGFuZ3'
    'VhZ2USFAoFbGFiZWwYBiABKAlSBWxhYmVsEh8KC3UyZl9jb3VudGVyGAcgASgNUgp1MmZDb3Vu'
    'dGVyEh8KC3NraXBfYmFja3VwGAggASgIUgpza2lwQmFja3VwEhsKCW5vX2JhY2t1cBgJIAEoCF'
    'IIbm9CYWNrdXASUQoLYmFja3VwX3R5cGUYCiABKA4yKS5ody50cmV6b3IubWVzc2FnZXMubWFu'
    'YWdlbWVudC5CYWNrdXBUeXBlOgVCaXAzOVIKYmFja3VwVHlwZRIjCg1lbnRyb3B5X2NoZWNrGA'
    'sgASgIUgxlbnRyb3B5Q2hlY2sSWQoNYmFja3VwX21ldGhvZBgMIAEoDjIrLmh3LnRyZXpvci5t'
    'ZXNzYWdlcy5tYW5hZ2VtZW50LkJhY2t1cE1ldGhvZDoHRGlzcGxheVIMYmFja3VwTWV0aG9kSg'
    'QIARAC');

@$core.Deprecated('Use backupDeviceDescriptor instead')
const BackupDevice$json = {
  '1': 'BackupDevice',
  '2': [
    {'1': 'group_threshold', '3': 1, '4': 1, '5': 13, '10': 'groupThreshold'},
    {
      '1': 'groups',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.hw.trezor.messages.management.BackupDevice.Slip39Group',
      '10': 'groups'
    },
    {
      '1': 'backup_method',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.management.BackupMethod',
      '7': 'Display',
      '10': 'backupMethod'
    },
  ],
  '3': [BackupDevice_Slip39Group$json],
};

@$core.Deprecated('Use backupDeviceDescriptor instead')
const BackupDevice_Slip39Group$json = {
  '1': 'Slip39Group',
  '2': [
    {'1': 'member_threshold', '3': 1, '4': 2, '5': 13, '10': 'memberThreshold'},
    {'1': 'member_count', '3': 2, '4': 2, '5': 13, '10': 'memberCount'},
  ],
};

/// Descriptor for `BackupDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List backupDeviceDescriptor = $convert.base64Decode(
    'CgxCYWNrdXBEZXZpY2USJwoPZ3JvdXBfdGhyZXNob2xkGAEgASgNUg5ncm91cFRocmVzaG9sZB'
    'JPCgZncm91cHMYAiADKAsyNy5ody50cmV6b3IubWVzc2FnZXMubWFuYWdlbWVudC5CYWNrdXBE'
    'ZXZpY2UuU2xpcDM5R3JvdXBSBmdyb3VwcxJZCg1iYWNrdXBfbWV0aG9kGAMgASgOMisuaHcudH'
    'Jlem9yLm1lc3NhZ2VzLm1hbmFnZW1lbnQuQmFja3VwTWV0aG9kOgdEaXNwbGF5UgxiYWNrdXBN'
    'ZXRob2QaWwoLU2xpcDM5R3JvdXASKQoQbWVtYmVyX3RocmVzaG9sZBgBIAIoDVIPbWVtYmVyVG'
    'hyZXNob2xkEiEKDG1lbWJlcl9jb3VudBgCIAIoDVILbWVtYmVyQ291bnQ=');

@$core.Deprecated('Use entropyRequestDescriptor instead')
const EntropyRequest$json = {
  '1': 'EntropyRequest',
  '2': [
    {
      '1': 'entropy_commitment',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'entropyCommitment'
    },
    {'1': 'prev_entropy', '3': 2, '4': 1, '5': 12, '10': 'prevEntropy'},
  ],
};

/// Descriptor for `EntropyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entropyRequestDescriptor = $convert.base64Decode(
    'Cg5FbnRyb3B5UmVxdWVzdBItChJlbnRyb3B5X2NvbW1pdG1lbnQYASABKAxSEWVudHJvcHlDb2'
    '1taXRtZW50EiEKDHByZXZfZW50cm9weRgCIAEoDFILcHJldkVudHJvcHk=');

@$core.Deprecated('Use entropyAckDescriptor instead')
const EntropyAck$json = {
  '1': 'EntropyAck',
  '2': [
    {'1': 'entropy', '3': 1, '4': 2, '5': 12, '10': 'entropy'},
  ],
};

/// Descriptor for `EntropyAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entropyAckDescriptor = $convert
    .base64Decode('CgpFbnRyb3B5QWNrEhgKB2VudHJvcHkYASACKAxSB2VudHJvcHk=');

@$core.Deprecated('Use entropyCheckReadyDescriptor instead')
const EntropyCheckReady$json = {
  '1': 'EntropyCheckReady',
};

/// Descriptor for `EntropyCheckReady`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entropyCheckReadyDescriptor =
    $convert.base64Decode('ChFFbnRyb3B5Q2hlY2tSZWFkeQ==');

@$core.Deprecated('Use entropyCheckContinueDescriptor instead')
const EntropyCheckContinue$json = {
  '1': 'EntropyCheckContinue',
  '2': [
    {'1': 'finish', '3': 1, '4': 1, '5': 8, '7': 'false', '10': 'finish'},
  ],
};

/// Descriptor for `EntropyCheckContinue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entropyCheckContinueDescriptor = $convert.base64Decode(
    'ChRFbnRyb3B5Q2hlY2tDb250aW51ZRIdCgZmaW5pc2gYASABKAg6BWZhbHNlUgZmaW5pc2g=');

@$core.Deprecated('Use recoveryDeviceDescriptor instead')
const RecoveryDevice$json = {
  '1': 'RecoveryDevice',
  '2': [
    {'1': 'word_count', '3': 1, '4': 1, '5': 13, '10': 'wordCount'},
    {
      '1': 'passphrase_protection',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'passphraseProtection'
    },
    {'1': 'pin_protection', '3': 3, '4': 1, '5': 8, '10': 'pinProtection'},
    {
      '1': 'language',
      '3': 4,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'language',
    },
    {'1': 'label', '3': 5, '4': 1, '5': 9, '10': 'label'},
    {'1': 'enforce_wordlist', '3': 6, '4': 1, '5': 8, '10': 'enforceWordlist'},
    {
      '1': 'input_method',
      '3': 8,
      '4': 1,
      '5': 14,
      '6':
          '.hw.trezor.messages.management.RecoveryDevice.RecoveryDeviceInputMethod',
      '10': 'inputMethod'
    },
    {'1': 'u2f_counter', '3': 9, '4': 1, '5': 13, '10': 'u2fCounter'},
    {
      '1': 'type',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.management.RecoveryType',
      '7': 'NormalRecovery',
      '10': 'type'
    },
    {
      '1': 'backup_method',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.management.BackupMethod',
      '10': 'backupMethod'
    },
  ],
  '4': [RecoveryDevice_RecoveryDeviceInputMethod$json],
  '9': [
    {'1': 7, '2': 8},
  ],
};

@$core.Deprecated('Use recoveryDeviceDescriptor instead')
const RecoveryDevice_RecoveryDeviceInputMethod$json = {
  '1': 'RecoveryDeviceInputMethod',
  '2': [
    {'1': 'ScrambledWords', '2': 0},
    {'1': 'Matrix', '2': 1},
  ],
};

/// Descriptor for `RecoveryDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoveryDeviceDescriptor = $convert.base64Decode(
    'Cg5SZWNvdmVyeURldmljZRIdCgp3b3JkX2NvdW50GAEgASgNUgl3b3JkQ291bnQSMwoVcGFzc3'
    'BocmFzZV9wcm90ZWN0aW9uGAIgASgIUhRwYXNzcGhyYXNlUHJvdGVjdGlvbhIlCg5waW5fcHJv'
    'dGVjdGlvbhgDIAEoCFINcGluUHJvdGVjdGlvbhIeCghsYW5ndWFnZRgEIAEoCUICGAFSCGxhbm'
    'd1YWdlEhQKBWxhYmVsGAUgASgJUgVsYWJlbBIpChBlbmZvcmNlX3dvcmRsaXN0GAYgASgIUg9l'
    'bmZvcmNlV29yZGxpc3QSagoMaW5wdXRfbWV0aG9kGAggASgOMkcuaHcudHJlem9yLm1lc3NhZ2'
    'VzLm1hbmFnZW1lbnQuUmVjb3ZlcnlEZXZpY2UuUmVjb3ZlcnlEZXZpY2VJbnB1dE1ldGhvZFIL'
    'aW5wdXRNZXRob2QSHwoLdTJmX2NvdW50ZXIYCSABKA1SCnUyZkNvdW50ZXISTwoEdHlwZRgKIA'
    'EoDjIrLmh3LnRyZXpvci5tZXNzYWdlcy5tYW5hZ2VtZW50LlJlY292ZXJ5VHlwZToOTm9ybWFs'
    'UmVjb3ZlcnlSBHR5cGUSUAoNYmFja3VwX21ldGhvZBgLIAEoDjIrLmh3LnRyZXpvci5tZXNzYW'
    'dlcy5tYW5hZ2VtZW50LkJhY2t1cE1ldGhvZFIMYmFja3VwTWV0aG9kIjsKGVJlY292ZXJ5RGV2'
    'aWNlSW5wdXRNZXRob2QSEgoOU2NyYW1ibGVkV29yZHMQABIKCgZNYXRyaXgQAUoECAcQCA==');

@$core.Deprecated('Use wordRequestDescriptor instead')
const WordRequest$json = {
  '1': 'WordRequest',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.hw.trezor.messages.management.WordRequest.WordRequestType',
      '10': 'type'
    },
  ],
  '4': [WordRequest_WordRequestType$json],
};

@$core.Deprecated('Use wordRequestDescriptor instead')
const WordRequest_WordRequestType$json = {
  '1': 'WordRequestType',
  '2': [
    {'1': 'WordRequestType_Plain', '2': 0},
    {'1': 'WordRequestType_Matrix9', '2': 1},
    {'1': 'WordRequestType_Matrix6', '2': 2},
  ],
};

/// Descriptor for `WordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wordRequestDescriptor = $convert.base64Decode(
    'CgtXb3JkUmVxdWVzdBJOCgR0eXBlGAEgAigOMjouaHcudHJlem9yLm1lc3NhZ2VzLm1hbmFnZW'
    '1lbnQuV29yZFJlcXVlc3QuV29yZFJlcXVlc3RUeXBlUgR0eXBlImYKD1dvcmRSZXF1ZXN0VHlw'
    'ZRIZChVXb3JkUmVxdWVzdFR5cGVfUGxhaW4QABIbChdXb3JkUmVxdWVzdFR5cGVfTWF0cml4OR'
    'ABEhsKF1dvcmRSZXF1ZXN0VHlwZV9NYXRyaXg2EAI=');

@$core.Deprecated('Use wordAckDescriptor instead')
const WordAck$json = {
  '1': 'WordAck',
  '2': [
    {'1': 'word', '3': 1, '4': 2, '5': 9, '10': 'word'},
  ],
};

/// Descriptor for `WordAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wordAckDescriptor =
    $convert.base64Decode('CgdXb3JkQWNrEhIKBHdvcmQYASACKAlSBHdvcmQ=');

@$core.Deprecated('Use setU2FCounterDescriptor instead')
const SetU2FCounter$json = {
  '1': 'SetU2FCounter',
  '2': [
    {'1': 'u2f_counter', '3': 1, '4': 2, '5': 13, '10': 'u2fCounter'},
  ],
};

/// Descriptor for `SetU2FCounter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setU2FCounterDescriptor = $convert.base64Decode(
    'Cg1TZXRVMkZDb3VudGVyEh8KC3UyZl9jb3VudGVyGAEgAigNUgp1MmZDb3VudGVy');

@$core.Deprecated('Use getNextU2FCounterDescriptor instead')
const GetNextU2FCounter$json = {
  '1': 'GetNextU2FCounter',
};

/// Descriptor for `GetNextU2FCounter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNextU2FCounterDescriptor =
    $convert.base64Decode('ChFHZXROZXh0VTJGQ291bnRlcg==');

@$core.Deprecated('Use nextU2FCounterDescriptor instead')
const NextU2FCounter$json = {
  '1': 'NextU2FCounter',
  '2': [
    {'1': 'u2f_counter', '3': 1, '4': 2, '5': 13, '10': 'u2fCounter'},
  ],
};

/// Descriptor for `NextU2FCounter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nextU2FCounterDescriptor = $convert.base64Decode(
    'Cg5OZXh0VTJGQ291bnRlchIfCgt1MmZfY291bnRlchgBIAIoDVIKdTJmQ291bnRlcg==');

@$core.Deprecated('Use doPreauthorizedDescriptor instead')
const DoPreauthorized$json = {
  '1': 'DoPreauthorized',
};

/// Descriptor for `DoPreauthorized`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doPreauthorizedDescriptor =
    $convert.base64Decode('Cg9Eb1ByZWF1dGhvcml6ZWQ=');

@$core.Deprecated('Use preauthorizedRequestDescriptor instead')
const PreauthorizedRequest$json = {
  '1': 'PreauthorizedRequest',
};

/// Descriptor for `PreauthorizedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preauthorizedRequestDescriptor =
    $convert.base64Decode('ChRQcmVhdXRob3JpemVkUmVxdWVzdA==');

@$core.Deprecated('Use cancelAuthorizationDescriptor instead')
const CancelAuthorization$json = {
  '1': 'CancelAuthorization',
};

/// Descriptor for `CancelAuthorization`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelAuthorizationDescriptor =
    $convert.base64Decode('ChNDYW5jZWxBdXRob3JpemF0aW9u');

@$core.Deprecated('Use rebootToBootloaderDescriptor instead')
const RebootToBootloader$json = {
  '1': 'RebootToBootloader',
  '2': [
    {
      '1': 'boot_command',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.hw.trezor.messages.management.RebootToBootloader.BootCommand',
      '7': 'STOP_AND_WAIT',
      '10': 'bootCommand'
    },
    {'1': 'firmware_header', '3': 2, '4': 1, '5': 12, '10': 'firmwareHeader'},
  ],
  '4': [RebootToBootloader_BootCommand$json],
  '9': [
    {'1': 3, '2': 4},
  ],
};

@$core.Deprecated('Use rebootToBootloaderDescriptor instead')
const RebootToBootloader_BootCommand$json = {
  '1': 'BootCommand',
  '2': [
    {'1': 'STOP_AND_WAIT', '2': 0},
    {'1': 'INSTALL_UPGRADE', '2': 1},
  ],
};

/// Descriptor for `RebootToBootloader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rebootToBootloaderDescriptor = $convert.base64Decode(
    'ChJSZWJvb3RUb0Jvb3Rsb2FkZXISbwoMYm9vdF9jb21tYW5kGAEgASgOMj0uaHcudHJlem9yLm'
    '1lc3NhZ2VzLm1hbmFnZW1lbnQuUmVib290VG9Cb290bG9hZGVyLkJvb3RDb21tYW5kOg1TVE9Q'
    'X0FORF9XQUlUUgtib290Q29tbWFuZBInCg9maXJtd2FyZV9oZWFkZXIYAiABKAxSDmZpcm13YX'
    'JlSGVhZGVyIjUKC0Jvb3RDb21tYW5kEhEKDVNUT1BfQU5EX1dBSVQQABITCg9JTlNUQUxMX1VQ'
    'R1JBREUQAUoECAMQBA==');

@$core.Deprecated('Use getNonceDescriptor instead')
const GetNonce$json = {
  '1': 'GetNonce',
};

/// Descriptor for `GetNonce`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNonceDescriptor =
    $convert.base64Decode('CghHZXROb25jZQ==');

@$core.Deprecated('Use nonceDescriptor instead')
const Nonce$json = {
  '1': 'Nonce',
  '2': [
    {'1': 'nonce', '3': 1, '4': 2, '5': 12, '10': 'nonce'},
  ],
};

/// Descriptor for `Nonce`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nonceDescriptor =
    $convert.base64Decode('CgVOb25jZRIUCgVub25jZRgBIAIoDFIFbm9uY2U=');

@$core.Deprecated('Use unlockPathDescriptor instead')
const UnlockPath$json = {
  '1': 'UnlockPath',
  '2': [
    {'1': 'address_n', '3': 1, '4': 3, '5': 13, '10': 'addressN'},
    {'1': 'mac', '3': 2, '4': 1, '5': 12, '10': 'mac'},
  ],
};

/// Descriptor for `UnlockPath`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unlockPathDescriptor = $convert.base64Decode(
    'CgpVbmxvY2tQYXRoEhsKCWFkZHJlc3NfbhgBIAMoDVIIYWRkcmVzc04SEAoDbWFjGAIgASgMUg'
    'NtYWM=');

@$core.Deprecated('Use unlockedPathRequestDescriptor instead')
const UnlockedPathRequest$json = {
  '1': 'UnlockedPathRequest',
  '2': [
    {'1': 'mac', '3': 1, '4': 2, '5': 12, '10': 'mac'},
  ],
};

/// Descriptor for `UnlockedPathRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unlockedPathRequestDescriptor = $convert
    .base64Decode('ChNVbmxvY2tlZFBhdGhSZXF1ZXN0EhAKA21hYxgBIAIoDFIDbWFj');

@$core.Deprecated('Use showDeviceTutorialDescriptor instead')
const ShowDeviceTutorial$json = {
  '1': 'ShowDeviceTutorial',
};

/// Descriptor for `ShowDeviceTutorial`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List showDeviceTutorialDescriptor =
    $convert.base64Decode('ChJTaG93RGV2aWNlVHV0b3JpYWw=');

@$core.Deprecated('Use unlockBootloaderDescriptor instead')
const UnlockBootloader$json = {
  '1': 'UnlockBootloader',
};

/// Descriptor for `UnlockBootloader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unlockBootloaderDescriptor =
    $convert.base64Decode('ChBVbmxvY2tCb290bG9hZGVy');

@$core.Deprecated('Use setBrightnessDescriptor instead')
const SetBrightness$json = {
  '1': 'SetBrightness',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 13, '10': 'value'},
  ],
};

/// Descriptor for `SetBrightness`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setBrightnessDescriptor = $convert
    .base64Decode('Cg1TZXRCcmlnaHRuZXNzEhQKBXZhbHVlGAEgASgNUgV2YWx1ZQ==');

@$core.Deprecated('Use getSerialNumberDescriptor instead')
const GetSerialNumber$json = {
  '1': 'GetSerialNumber',
};

/// Descriptor for `GetSerialNumber`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSerialNumberDescriptor =
    $convert.base64Decode('Cg9HZXRTZXJpYWxOdW1iZXI=');

@$core.Deprecated('Use serialNumberDescriptor instead')
const SerialNumber$json = {
  '1': 'SerialNumber',
  '2': [
    {'1': 'serial_number', '3': 1, '4': 2, '5': 9, '10': 'serialNumber'},
  ],
};

/// Descriptor for `SerialNumber`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serialNumberDescriptor = $convert.base64Decode(
    'CgxTZXJpYWxOdW1iZXISIwoNc2VyaWFsX251bWJlchgBIAIoCVIMc2VyaWFsTnVtYmVy');
