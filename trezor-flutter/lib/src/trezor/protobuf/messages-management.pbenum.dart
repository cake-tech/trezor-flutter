// This is a generated file - do not edit.
//
// Generated from messages-management.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// *
///  Type of the mnemonic backup given/received by the device during reset/recovery.
class BackupType extends $pb.ProtobufEnum {
  static const BackupType Bip39 =
      BackupType._(0, _omitEnumNames ? '' : 'Bip39');
  static const BackupType Slip39_Basic =
      BackupType._(1, _omitEnumNames ? '' : 'Slip39_Basic');
  static const BackupType Slip39_Advanced =
      BackupType._(2, _omitEnumNames ? '' : 'Slip39_Advanced');
  static const BackupType Slip39_Single_Extendable =
      BackupType._(3, _omitEnumNames ? '' : 'Slip39_Single_Extendable');
  static const BackupType Slip39_Basic_Extendable =
      BackupType._(4, _omitEnumNames ? '' : 'Slip39_Basic_Extendable');
  static const BackupType Slip39_Advanced_Extendable =
      BackupType._(5, _omitEnumNames ? '' : 'Slip39_Advanced_Extendable');

  static const $core.List<BackupType> values = <BackupType>[
    Bip39,
    Slip39_Basic,
    Slip39_Advanced,
    Slip39_Single_Extendable,
    Slip39_Basic_Extendable,
    Slip39_Advanced_Extendable,
  ];

  static final $core.List<BackupType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static BackupType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BackupType._(super.value, super.name);
}

/// *
///  Backup method of the mnemonic shares.
class BackupMethod extends $pb.ProtobufEnum {
  static const BackupMethod Display =
      BackupMethod._(0, _omitEnumNames ? '' : 'Display');
  static const BackupMethod N4W1 =
      BackupMethod._(1, _omitEnumNames ? '' : 'N4W1');

  static const $core.List<BackupMethod> values = <BackupMethod>[
    Display,
    N4W1,
  ];

  static final $core.List<BackupMethod?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static BackupMethod? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BackupMethod._(super.value, super.name);
}

/// *
///  Level of safety checks for unsafe actions like spending from invalid path namespace or setting high transaction fee.
class SafetyCheckLevel extends $pb.ProtobufEnum {
  static const SafetyCheckLevel Strict =
      SafetyCheckLevel._(0, _omitEnumNames ? '' : 'Strict');
  static const SafetyCheckLevel PromptAlways =
      SafetyCheckLevel._(1, _omitEnumNames ? '' : 'PromptAlways');
  static const SafetyCheckLevel PromptTemporarily =
      SafetyCheckLevel._(2, _omitEnumNames ? '' : 'PromptTemporarily');

  static const $core.List<SafetyCheckLevel> values = <SafetyCheckLevel>[
    Strict,
    PromptAlways,
    PromptTemporarily,
  ];

  static final $core.List<SafetyCheckLevel?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static SafetyCheckLevel? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SafetyCheckLevel._(super.value, super.name);
}

/// *
///  Allowed display rotation angles (in degrees from North)
class DisplayRotation extends $pb.ProtobufEnum {
  static const DisplayRotation North =
      DisplayRotation._(0, _omitEnumNames ? '' : 'North');
  static const DisplayRotation East =
      DisplayRotation._(90, _omitEnumNames ? '' : 'East');
  static const DisplayRotation South =
      DisplayRotation._(180, _omitEnumNames ? '' : 'South');
  static const DisplayRotation West =
      DisplayRotation._(270, _omitEnumNames ? '' : 'West');

  static const $core.List<DisplayRotation> values = <DisplayRotation>[
    North,
    East,
    South,
    West,
  ];

  static final $core.Map<$core.int, DisplayRotation> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static DisplayRotation? valueOf($core.int value) => _byValue[value];

  const DisplayRotation._(super.value, super.name);
}

/// *
///  Format of the homescreen image
class HomescreenFormat extends $pb.ProtobufEnum {
  static const HomescreenFormat Toif =
      HomescreenFormat._(1, _omitEnumNames ? '' : 'Toif');
  static const HomescreenFormat Jpeg =
      HomescreenFormat._(2, _omitEnumNames ? '' : 'Jpeg');
  static const HomescreenFormat ToiG =
      HomescreenFormat._(3, _omitEnumNames ? '' : 'ToiG');

  static const $core.List<HomescreenFormat> values = <HomescreenFormat>[
    Toif,
    Jpeg,
    ToiG,
  ];

  static final $core.List<HomescreenFormat?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static HomescreenFormat? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HomescreenFormat._(super.value, super.name);
}

class RecoveryType extends $pb.ProtobufEnum {
  static const RecoveryType NormalRecovery =
      RecoveryType._(0, _omitEnumNames ? '' : 'NormalRecovery');
  static const RecoveryType DryRun =
      RecoveryType._(1, _omitEnumNames ? '' : 'DryRun');
  static const RecoveryType UnlockRepeatedBackup =
      RecoveryType._(2, _omitEnumNames ? '' : 'UnlockRepeatedBackup');

  static const $core.List<RecoveryType> values = <RecoveryType>[
    NormalRecovery,
    DryRun,
    UnlockRepeatedBackup,
  ];

  static final $core.List<RecoveryType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static RecoveryType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RecoveryType._(super.value, super.name);
}

class Features_BackupAvailability extends $pb.ProtobufEnum {
  /// / Device is already backed up, or a previous backup has failed.
  static const Features_BackupAvailability NotAvailable =
      Features_BackupAvailability._(0, _omitEnumNames ? '' : 'NotAvailable');

  /// / Device is not backed up. Backup is required.
  static const Features_BackupAvailability Required =
      Features_BackupAvailability._(1, _omitEnumNames ? '' : 'Required');

  /// / Device is already backed up and can be backed up again.
  static const Features_BackupAvailability Available =
      Features_BackupAvailability._(2, _omitEnumNames ? '' : 'Available');

  static const $core.List<Features_BackupAvailability> values =
      <Features_BackupAvailability>[
    NotAvailable,
    Required,
    Available,
  ];

  static final $core.List<Features_BackupAvailability?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Features_BackupAvailability? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Features_BackupAvailability._(super.value, super.name);
}

class Features_RecoveryStatus extends $pb.ProtobufEnum {
  static const Features_RecoveryStatus Nothing =
      Features_RecoveryStatus._(0, _omitEnumNames ? '' : 'Nothing');
  static const Features_RecoveryStatus Recovery =
      Features_RecoveryStatus._(1, _omitEnumNames ? '' : 'Recovery');
  static const Features_RecoveryStatus Backup =
      Features_RecoveryStatus._(2, _omitEnumNames ? '' : 'Backup');

  static const $core.List<Features_RecoveryStatus> values =
      <Features_RecoveryStatus>[
    Nothing,
    Recovery,
    Backup,
  ];

  static final $core.List<Features_RecoveryStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Features_RecoveryStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Features_RecoveryStatus._(super.value, super.name);
}

class Features_Capability extends $pb.ProtobufEnum {
  static const Features_Capability Capability_Bitcoin =
      Features_Capability._(1, _omitEnumNames ? '' : 'Capability_Bitcoin');
  static const Features_Capability Capability_Bitcoin_like =
      Features_Capability._(2, _omitEnumNames ? '' : 'Capability_Bitcoin_like');
  static const Features_Capability Capability_Binance =
      Features_Capability._(3, _omitEnumNames ? '' : 'Capability_Binance');
  static const Features_Capability Capability_Cardano =
      Features_Capability._(4, _omitEnumNames ? '' : 'Capability_Cardano');
  static const Features_Capability Capability_Crypto =
      Features_Capability._(5, _omitEnumNames ? '' : 'Capability_Crypto');
  static const Features_Capability Capability_EOS =
      Features_Capability._(6, _omitEnumNames ? '' : 'Capability_EOS');
  static const Features_Capability Capability_Ethereum =
      Features_Capability._(7, _omitEnumNames ? '' : 'Capability_Ethereum');
  @$core.Deprecated('This enum value is deprecated')
  static const Features_Capability Capability_Lisk =
      Features_Capability._(8, _omitEnumNames ? '' : 'Capability_Lisk');
  static const Features_Capability Capability_Monero =
      Features_Capability._(9, _omitEnumNames ? '' : 'Capability_Monero');
  static const Features_Capability Capability_NEM =
      Features_Capability._(10, _omitEnumNames ? '' : 'Capability_NEM');
  static const Features_Capability Capability_Ripple =
      Features_Capability._(11, _omitEnumNames ? '' : 'Capability_Ripple');
  static const Features_Capability Capability_Stellar =
      Features_Capability._(12, _omitEnumNames ? '' : 'Capability_Stellar');
  static const Features_Capability Capability_Tezos =
      Features_Capability._(13, _omitEnumNames ? '' : 'Capability_Tezos');
  static const Features_Capability Capability_U2F =
      Features_Capability._(14, _omitEnumNames ? '' : 'Capability_U2F');
  static const Features_Capability Capability_Shamir =
      Features_Capability._(15, _omitEnumNames ? '' : 'Capability_Shamir');
  static const Features_Capability Capability_ShamirGroups =
      Features_Capability._(
          16, _omitEnumNames ? '' : 'Capability_ShamirGroups');
  static const Features_Capability Capability_PassphraseEntry =
      Features_Capability._(
          17, _omitEnumNames ? '' : 'Capability_PassphraseEntry');

  /// directly on the device
  static const Features_Capability Capability_Solana =
      Features_Capability._(18, _omitEnumNames ? '' : 'Capability_Solana');
  static const Features_Capability Capability_Translations =
      Features_Capability._(
          19, _omitEnumNames ? '' : 'Capability_Translations');
  static const Features_Capability Capability_Brightness =
      Features_Capability._(20, _omitEnumNames ? '' : 'Capability_Brightness');
  static const Features_Capability Capability_Haptic =
      Features_Capability._(21, _omitEnumNames ? '' : 'Capability_Haptic');
  static const Features_Capability Capability_BLE =
      Features_Capability._(22, _omitEnumNames ? '' : 'Capability_BLE');
  static const Features_Capability Capability_NFC =
      Features_Capability._(23, _omitEnumNames ? '' : 'Capability_NFC');
  static const Features_Capability Capability_Tron =
      Features_Capability._(24, _omitEnumNames ? '' : 'Capability_Tron');
  static const Features_Capability Capability_N4W1 =
      Features_Capability._(25, _omitEnumNames ? '' : 'Capability_N4W1');

  static const $core.List<Features_Capability> values = <Features_Capability>[
    Capability_Bitcoin,
    Capability_Bitcoin_like,
    Capability_Binance,
    Capability_Cardano,
    Capability_Crypto,
    Capability_EOS,
    Capability_Ethereum,
    Capability_Lisk,
    Capability_Monero,
    Capability_NEM,
    Capability_Ripple,
    Capability_Stellar,
    Capability_Tezos,
    Capability_U2F,
    Capability_Shamir,
    Capability_ShamirGroups,
    Capability_PassphraseEntry,
    Capability_Solana,
    Capability_Translations,
    Capability_Brightness,
    Capability_Haptic,
    Capability_BLE,
    Capability_NFC,
    Capability_Tron,
    Capability_N4W1,
  ];

  static final $core.List<Features_Capability?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 25);
  static Features_Capability? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Features_Capability._(super.value, super.name);
}

/// *
///  Structure representing SD card protection operation
class SdProtect_SdProtectOperationType extends $pb.ProtobufEnum {
  static const SdProtect_SdProtectOperationType DISABLE =
      SdProtect_SdProtectOperationType._(0, _omitEnumNames ? '' : 'DISABLE');
  static const SdProtect_SdProtectOperationType ENABLE =
      SdProtect_SdProtectOperationType._(1, _omitEnumNames ? '' : 'ENABLE');
  static const SdProtect_SdProtectOperationType REFRESH =
      SdProtect_SdProtectOperationType._(2, _omitEnumNames ? '' : 'REFRESH');

  static const $core.List<SdProtect_SdProtectOperationType> values =
      <SdProtect_SdProtectOperationType>[
    DISABLE,
    ENABLE,
    REFRESH,
  ];

  static final $core.List<SdProtect_SdProtectOperationType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static SdProtect_SdProtectOperationType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SdProtect_SdProtectOperationType._(super.value, super.name);
}

/// *
///  Type of recovery procedure. These should be used as bitmask, e.g.,
///  `RecoveryDeviceInputMethod_ScrambledWords | RecoveryDeviceInputMethod_Matrix`
///  listing every method supported by the host computer.
///
///  Note that Matrix recovery is the recommended recovery method. ScrambledWords
///  is allowed only for 24 word recovery, unless safety checks are disabled.
class RecoveryDevice_RecoveryDeviceInputMethod extends $pb.ProtobufEnum {
  /// use powers of two when extending this field
  static const RecoveryDevice_RecoveryDeviceInputMethod ScrambledWords =
      RecoveryDevice_RecoveryDeviceInputMethod._(
          0, _omitEnumNames ? '' : 'ScrambledWords');
  static const RecoveryDevice_RecoveryDeviceInputMethod Matrix =
      RecoveryDevice_RecoveryDeviceInputMethod._(
          1, _omitEnumNames ? '' : 'Matrix');

  static const $core.List<RecoveryDevice_RecoveryDeviceInputMethod> values =
      <RecoveryDevice_RecoveryDeviceInputMethod>[
    ScrambledWords,
    Matrix,
  ];

  static final $core.List<RecoveryDevice_RecoveryDeviceInputMethod?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static RecoveryDevice_RecoveryDeviceInputMethod? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RecoveryDevice_RecoveryDeviceInputMethod._(super.value, super.name);
}

/// *
///  Type of Recovery Word request
class WordRequest_WordRequestType extends $pb.ProtobufEnum {
  static const WordRequest_WordRequestType WordRequestType_Plain =
      WordRequest_WordRequestType._(
          0, _omitEnumNames ? '' : 'WordRequestType_Plain');
  static const WordRequest_WordRequestType WordRequestType_Matrix9 =
      WordRequest_WordRequestType._(
          1, _omitEnumNames ? '' : 'WordRequestType_Matrix9');
  static const WordRequest_WordRequestType WordRequestType_Matrix6 =
      WordRequest_WordRequestType._(
          2, _omitEnumNames ? '' : 'WordRequestType_Matrix6');

  static const $core.List<WordRequest_WordRequestType> values =
      <WordRequest_WordRequestType>[
    WordRequestType_Plain,
    WordRequestType_Matrix9,
    WordRequestType_Matrix6,
  ];

  static final $core.List<WordRequest_WordRequestType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static WordRequest_WordRequestType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WordRequest_WordRequestType._(super.value, super.name);
}

class RebootToBootloader_BootCommand extends $pb.ProtobufEnum {
  /// Go to bootloader menu
  static const RebootToBootloader_BootCommand STOP_AND_WAIT =
      RebootToBootloader_BootCommand._(
          0, _omitEnumNames ? '' : 'STOP_AND_WAIT');

  /// Connect to host and wait for firmware update
  static const RebootToBootloader_BootCommand INSTALL_UPGRADE =
      RebootToBootloader_BootCommand._(
          1, _omitEnumNames ? '' : 'INSTALL_UPGRADE');

  static const $core.List<RebootToBootloader_BootCommand> values =
      <RebootToBootloader_BootCommand>[
    STOP_AND_WAIT,
    INSTALL_UPGRADE,
  ];

  static final $core.List<RebootToBootloader_BootCommand?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static RebootToBootloader_BootCommand? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RebootToBootloader_BootCommand._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
