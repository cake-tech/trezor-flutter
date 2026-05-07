///
//  Generated code. Do not modify.
//  source: messages-management.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class BackupType extends $pb.ProtobufEnum {
  static const BackupType Bip39 = BackupType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Bip39');
  static const BackupType Slip39_Basic = BackupType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Slip39_Basic');
  static const BackupType Slip39_Advanced = BackupType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Slip39_Advanced');
  static const BackupType Slip39_Single_Extendable = BackupType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Slip39_Single_Extendable');
  static const BackupType Slip39_Basic_Extendable = BackupType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Slip39_Basic_Extendable');
  static const BackupType Slip39_Advanced_Extendable = BackupType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Slip39_Advanced_Extendable');

  static const $core.List<BackupType> values = <BackupType> [
    Bip39,
    Slip39_Basic,
    Slip39_Advanced,
    Slip39_Single_Extendable,
    Slip39_Basic_Extendable,
    Slip39_Advanced_Extendable,
  ];

  static final $core.Map<$core.int, BackupType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BackupType? valueOf($core.int value) => _byValue[value];

  const BackupType._($core.int v, $core.String n) : super(v, n);
}

class BackupMethod extends $pb.ProtobufEnum {
  static const BackupMethod Display = BackupMethod._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Display');
  static const BackupMethod N4W1 = BackupMethod._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'N4W1');

  static const $core.List<BackupMethod> values = <BackupMethod> [
    Display,
    N4W1,
  ];

  static final $core.Map<$core.int, BackupMethod> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BackupMethod? valueOf($core.int value) => _byValue[value];

  const BackupMethod._($core.int v, $core.String n) : super(v, n);
}

class SafetyCheckLevel extends $pb.ProtobufEnum {
  static const SafetyCheckLevel Strict = SafetyCheckLevel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Strict');
  static const SafetyCheckLevel PromptAlways = SafetyCheckLevel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PromptAlways');
  static const SafetyCheckLevel PromptTemporarily = SafetyCheckLevel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PromptTemporarily');

  static const $core.List<SafetyCheckLevel> values = <SafetyCheckLevel> [
    Strict,
    PromptAlways,
    PromptTemporarily,
  ];

  static final $core.Map<$core.int, SafetyCheckLevel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SafetyCheckLevel? valueOf($core.int value) => _byValue[value];

  const SafetyCheckLevel._($core.int v, $core.String n) : super(v, n);
}

class DisplayRotation extends $pb.ProtobufEnum {
  static const DisplayRotation North = DisplayRotation._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'North');
  static const DisplayRotation East = DisplayRotation._(90, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'East');
  static const DisplayRotation South = DisplayRotation._(180, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'South');
  static const DisplayRotation West = DisplayRotation._(270, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'West');

  static const $core.List<DisplayRotation> values = <DisplayRotation> [
    North,
    East,
    South,
    West,
  ];

  static final $core.Map<$core.int, DisplayRotation> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DisplayRotation? valueOf($core.int value) => _byValue[value];

  const DisplayRotation._($core.int v, $core.String n) : super(v, n);
}

class HomescreenFormat extends $pb.ProtobufEnum {
  static const HomescreenFormat Toif = HomescreenFormat._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Toif');
  static const HomescreenFormat Jpeg = HomescreenFormat._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Jpeg');
  static const HomescreenFormat ToiG = HomescreenFormat._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ToiG');

  static const $core.List<HomescreenFormat> values = <HomescreenFormat> [
    Toif,
    Jpeg,
    ToiG,
  ];

  static final $core.Map<$core.int, HomescreenFormat> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HomescreenFormat? valueOf($core.int value) => _byValue[value];

  const HomescreenFormat._($core.int v, $core.String n) : super(v, n);
}

class RecoveryType extends $pb.ProtobufEnum {
  static const RecoveryType NormalRecovery = RecoveryType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NormalRecovery');
  static const RecoveryType DryRun = RecoveryType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DryRun');
  static const RecoveryType UnlockRepeatedBackup = RecoveryType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UnlockRepeatedBackup');

  static const $core.List<RecoveryType> values = <RecoveryType> [
    NormalRecovery,
    DryRun,
    UnlockRepeatedBackup,
  ];

  static final $core.Map<$core.int, RecoveryType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RecoveryType? valueOf($core.int value) => _byValue[value];

  const RecoveryType._($core.int v, $core.String n) : super(v, n);
}

class Features_BackupAvailability extends $pb.ProtobufEnum {
  static const Features_BackupAvailability NotAvailable = Features_BackupAvailability._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NotAvailable');
  static const Features_BackupAvailability Required = Features_BackupAvailability._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Required');
  static const Features_BackupAvailability Available = Features_BackupAvailability._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Available');

  static const $core.List<Features_BackupAvailability> values = <Features_BackupAvailability> [
    NotAvailable,
    Required,
    Available,
  ];

  static final $core.Map<$core.int, Features_BackupAvailability> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Features_BackupAvailability? valueOf($core.int value) => _byValue[value];

  const Features_BackupAvailability._($core.int v, $core.String n) : super(v, n);
}

class Features_RecoveryStatus extends $pb.ProtobufEnum {
  static const Features_RecoveryStatus Nothing = Features_RecoveryStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Nothing');
  static const Features_RecoveryStatus Recovery = Features_RecoveryStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Recovery');
  static const Features_RecoveryStatus Backup = Features_RecoveryStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Backup');

  static const $core.List<Features_RecoveryStatus> values = <Features_RecoveryStatus> [
    Nothing,
    Recovery,
    Backup,
  ];

  static final $core.Map<$core.int, Features_RecoveryStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Features_RecoveryStatus? valueOf($core.int value) => _byValue[value];

  const Features_RecoveryStatus._($core.int v, $core.String n) : super(v, n);
}

class Features_Capability extends $pb.ProtobufEnum {
  static const Features_Capability Capability_Bitcoin = Features_Capability._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Bitcoin');
  static const Features_Capability Capability_Bitcoin_like = Features_Capability._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Bitcoin_like');
  static const Features_Capability Capability_Binance = Features_Capability._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Binance');
  static const Features_Capability Capability_Cardano = Features_Capability._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Cardano');
  static const Features_Capability Capability_Crypto = Features_Capability._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Crypto');
  static const Features_Capability Capability_EOS = Features_Capability._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_EOS');
  static const Features_Capability Capability_Ethereum = Features_Capability._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Ethereum');
  static const Features_Capability Capability_Lisk = Features_Capability._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Lisk');
  static const Features_Capability Capability_Monero = Features_Capability._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Monero');
  static const Features_Capability Capability_NEM = Features_Capability._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_NEM');
  static const Features_Capability Capability_Ripple = Features_Capability._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Ripple');
  static const Features_Capability Capability_Stellar = Features_Capability._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Stellar');
  static const Features_Capability Capability_Tezos = Features_Capability._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Tezos');
  static const Features_Capability Capability_U2F = Features_Capability._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_U2F');
  static const Features_Capability Capability_Shamir = Features_Capability._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Shamir');
  static const Features_Capability Capability_ShamirGroups = Features_Capability._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_ShamirGroups');
  static const Features_Capability Capability_PassphraseEntry = Features_Capability._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_PassphraseEntry');
  static const Features_Capability Capability_Solana = Features_Capability._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Solana');
  static const Features_Capability Capability_Translations = Features_Capability._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Translations');
  static const Features_Capability Capability_Brightness = Features_Capability._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Brightness');
  static const Features_Capability Capability_Haptic = Features_Capability._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Haptic');
  static const Features_Capability Capability_BLE = Features_Capability._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_BLE');
  static const Features_Capability Capability_NFC = Features_Capability._(23, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_NFC');
  static const Features_Capability Capability_Tron = Features_Capability._(24, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_Tron');
  static const Features_Capability Capability_N4W1 = Features_Capability._(25, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Capability_N4W1');

  static const $core.List<Features_Capability> values = <Features_Capability> [
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

  static final $core.Map<$core.int, Features_Capability> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Features_Capability? valueOf($core.int value) => _byValue[value];

  const Features_Capability._($core.int v, $core.String n) : super(v, n);
}

class SdProtect_SdProtectOperationType extends $pb.ProtobufEnum {
  static const SdProtect_SdProtectOperationType DISABLE = SdProtect_SdProtectOperationType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISABLE');
  static const SdProtect_SdProtectOperationType ENABLE = SdProtect_SdProtectOperationType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ENABLE');
  static const SdProtect_SdProtectOperationType REFRESH = SdProtect_SdProtectOperationType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REFRESH');

  static const $core.List<SdProtect_SdProtectOperationType> values = <SdProtect_SdProtectOperationType> [
    DISABLE,
    ENABLE,
    REFRESH,
  ];

  static final $core.Map<$core.int, SdProtect_SdProtectOperationType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SdProtect_SdProtectOperationType? valueOf($core.int value) => _byValue[value];

  const SdProtect_SdProtectOperationType._($core.int v, $core.String n) : super(v, n);
}

class RecoveryDevice_RecoveryDeviceInputMethod extends $pb.ProtobufEnum {
  static const RecoveryDevice_RecoveryDeviceInputMethod ScrambledWords = RecoveryDevice_RecoveryDeviceInputMethod._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ScrambledWords');
  static const RecoveryDevice_RecoveryDeviceInputMethod Matrix = RecoveryDevice_RecoveryDeviceInputMethod._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Matrix');

  static const $core.List<RecoveryDevice_RecoveryDeviceInputMethod> values = <RecoveryDevice_RecoveryDeviceInputMethod> [
    ScrambledWords,
    Matrix,
  ];

  static final $core.Map<$core.int, RecoveryDevice_RecoveryDeviceInputMethod> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RecoveryDevice_RecoveryDeviceInputMethod? valueOf($core.int value) => _byValue[value];

  const RecoveryDevice_RecoveryDeviceInputMethod._($core.int v, $core.String n) : super(v, n);
}

class WordRequest_WordRequestType extends $pb.ProtobufEnum {
  static const WordRequest_WordRequestType WordRequestType_Plain = WordRequest_WordRequestType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WordRequestType_Plain');
  static const WordRequest_WordRequestType WordRequestType_Matrix9 = WordRequest_WordRequestType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WordRequestType_Matrix9');
  static const WordRequest_WordRequestType WordRequestType_Matrix6 = WordRequest_WordRequestType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WordRequestType_Matrix6');

  static const $core.List<WordRequest_WordRequestType> values = <WordRequest_WordRequestType> [
    WordRequestType_Plain,
    WordRequestType_Matrix9,
    WordRequestType_Matrix6,
  ];

  static final $core.Map<$core.int, WordRequest_WordRequestType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WordRequest_WordRequestType? valueOf($core.int value) => _byValue[value];

  const WordRequest_WordRequestType._($core.int v, $core.String n) : super(v, n);
}

class RebootToBootloader_BootCommand extends $pb.ProtobufEnum {
  static const RebootToBootloader_BootCommand STOP_AND_WAIT = RebootToBootloader_BootCommand._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STOP_AND_WAIT');
  static const RebootToBootloader_BootCommand INSTALL_UPGRADE = RebootToBootloader_BootCommand._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INSTALL_UPGRADE');

  static const $core.List<RebootToBootloader_BootCommand> values = <RebootToBootloader_BootCommand> [
    STOP_AND_WAIT,
    INSTALL_UPGRADE,
  ];

  static final $core.Map<$core.int, RebootToBootloader_BootCommand> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RebootToBootloader_BootCommand? valueOf($core.int value) => _byValue[value];

  const RebootToBootloader_BootCommand._($core.int v, $core.String n) : super(v, n);
}

