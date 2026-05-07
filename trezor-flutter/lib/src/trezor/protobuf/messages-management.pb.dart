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

import 'messages-management.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'messages-management.pbenum.dart';

/// *
///  Request: Reset device to default state and ask for device details
///  @start
///  @next Features
class Initialize extends $pb.GeneratedMessage {
  factory Initialize({
    $core.List<$core.int>? sessionId,
    @$core.Deprecated('This field is deprecated.') $core.bool? skipPassphrase,
    $core.bool? deriveCardano,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (skipPassphrase != null) result.skipPassphrase = skipPassphrase;
    if (deriveCardano != null) result.deriveCardano = deriveCardano;
    return result;
  }

  Initialize._();

  factory Initialize.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Initialize.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Initialize',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.OY)
    ..aOB(2, _omitFieldNames ? '' : 'SkipPassphrase')
    ..aOB(3, _omitFieldNames ? '' : 'deriveCardano')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Initialize clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Initialize copyWith(void Function(Initialize) updates) =>
      super.copyWith((message) => updates(message as Initialize)) as Initialize;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Initialize create() => Initialize._();
  @$core.override
  Initialize createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Initialize getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Initialize>(create);
  static Initialize? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get sessionId => $_getN(0);
  @$pb.TagNumber(1)
  set sessionId($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool get skipPassphrase => $_getBF(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set skipPassphrase($core.bool value) => $_setBool(1, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasSkipPassphrase() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearSkipPassphrase() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get deriveCardano => $_getBF(2);
  @$pb.TagNumber(3)
  set deriveCardano($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDeriveCardano() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeriveCardano() => $_clearField(3);
}

/// *
///  Request: Ask for device details (no device reset)
///  @start
///  @next Features
class GetFeatures extends $pb.GeneratedMessage {
  factory GetFeatures() => create();

  GetFeatures._();

  factory GetFeatures.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFeatures.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFeatures',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFeatures clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFeatures copyWith(void Function(GetFeatures) updates) =>
      super.copyWith((message) => updates(message as GetFeatures))
          as GetFeatures;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFeatures create() => GetFeatures._();
  @$core.override
  GetFeatures createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetFeatures getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFeatures>(create);
  static GetFeatures? _defaultInstance;
}

/// *
///  Response: Reports various information about the device
///  @end
class Features extends $pb.GeneratedMessage {
  factory Features({
    $core.String? vendor,
    $core.int? majorVersion,
    $core.int? minorVersion,
    $core.int? patchVersion,
    $core.bool? bootloaderMode,
    $core.String? deviceId,
    $core.bool? pinProtection,
    $core.bool? passphraseProtection,
    $core.String? language,
    $core.String? label,
    $core.bool? initialized,
    $core.List<$core.int>? revision,
    $core.List<$core.int>? bootloaderHash,
    $core.bool? imported,
    $core.bool? unlocked,
    @$core.Deprecated('This field is deprecated.') $core.bool? passphraseCached,
    $core.bool? firmwarePresent,
    Features_BackupAvailability? backupAvailability,
    $core.int? flags,
    $core.String? model,
    $core.int? fwMajor,
    $core.int? fwMinor,
    $core.int? fwPatch,
    $core.String? fwVendor,
    $core.bool? unfinishedBackup,
    $core.bool? noBackup,
    Features_RecoveryStatus? recoveryStatus,
    $core.Iterable<Features_Capability>? capabilities,
    BackupType? backupType,
    $core.bool? sdCardPresent,
    $core.bool? sdProtection,
    $core.bool? wipeCodeProtection,
    $core.List<$core.int>? sessionId,
    $core.bool? passphraseAlwaysOnDevice,
    SafetyCheckLevel? safetyChecks,
    $core.int? autoLockDelayMs,
    DisplayRotation? displayRotation,
    $core.bool? experimentalFeatures,
    $core.bool? busy,
    HomescreenFormat? homescreenFormat,
    $core.bool? hidePassphraseFromHost,
    $core.String? internalModel,
    $core.int? unitColor,
    $core.bool? unitBtconly,
    $core.int? homescreenWidth,
    $core.int? homescreenHeight,
    $core.bool? bootloaderLocked,
    $core.bool? languageVersionMatches,
    $core.int? unitPackaging,
    $core.bool? hapticFeedback,
    RecoveryType? recoveryType,
    $core.int? optigaSec,
    $core.int? soc,
    $core.bool? firmwareCorrupted,
    $core.int? autoLockDelayBatteryMs,
    $core.bool? led,
    $core.bool? usbConnected,
    $core.bool? wirelessConnected,
    $core.int? buildVersion,
    $core.int? fwBuild,
  }) {
    final result = create();
    if (vendor != null) result.vendor = vendor;
    if (majorVersion != null) result.majorVersion = majorVersion;
    if (minorVersion != null) result.minorVersion = minorVersion;
    if (patchVersion != null) result.patchVersion = patchVersion;
    if (bootloaderMode != null) result.bootloaderMode = bootloaderMode;
    if (deviceId != null) result.deviceId = deviceId;
    if (pinProtection != null) result.pinProtection = pinProtection;
    if (passphraseProtection != null)
      result.passphraseProtection = passphraseProtection;
    if (language != null) result.language = language;
    if (label != null) result.label = label;
    if (initialized != null) result.initialized = initialized;
    if (revision != null) result.revision = revision;
    if (bootloaderHash != null) result.bootloaderHash = bootloaderHash;
    if (imported != null) result.imported = imported;
    if (unlocked != null) result.unlocked = unlocked;
    if (passphraseCached != null) result.passphraseCached = passphraseCached;
    if (firmwarePresent != null) result.firmwarePresent = firmwarePresent;
    if (backupAvailability != null)
      result.backupAvailability = backupAvailability;
    if (flags != null) result.flags = flags;
    if (model != null) result.model = model;
    if (fwMajor != null) result.fwMajor = fwMajor;
    if (fwMinor != null) result.fwMinor = fwMinor;
    if (fwPatch != null) result.fwPatch = fwPatch;
    if (fwVendor != null) result.fwVendor = fwVendor;
    if (unfinishedBackup != null) result.unfinishedBackup = unfinishedBackup;
    if (noBackup != null) result.noBackup = noBackup;
    if (recoveryStatus != null) result.recoveryStatus = recoveryStatus;
    if (capabilities != null) result.capabilities.addAll(capabilities);
    if (backupType != null) result.backupType = backupType;
    if (sdCardPresent != null) result.sdCardPresent = sdCardPresent;
    if (sdProtection != null) result.sdProtection = sdProtection;
    if (wipeCodeProtection != null)
      result.wipeCodeProtection = wipeCodeProtection;
    if (sessionId != null) result.sessionId = sessionId;
    if (passphraseAlwaysOnDevice != null)
      result.passphraseAlwaysOnDevice = passphraseAlwaysOnDevice;
    if (safetyChecks != null) result.safetyChecks = safetyChecks;
    if (autoLockDelayMs != null) result.autoLockDelayMs = autoLockDelayMs;
    if (displayRotation != null) result.displayRotation = displayRotation;
    if (experimentalFeatures != null)
      result.experimentalFeatures = experimentalFeatures;
    if (busy != null) result.busy = busy;
    if (homescreenFormat != null) result.homescreenFormat = homescreenFormat;
    if (hidePassphraseFromHost != null)
      result.hidePassphraseFromHost = hidePassphraseFromHost;
    if (internalModel != null) result.internalModel = internalModel;
    if (unitColor != null) result.unitColor = unitColor;
    if (unitBtconly != null) result.unitBtconly = unitBtconly;
    if (homescreenWidth != null) result.homescreenWidth = homescreenWidth;
    if (homescreenHeight != null) result.homescreenHeight = homescreenHeight;
    if (bootloaderLocked != null) result.bootloaderLocked = bootloaderLocked;
    if (languageVersionMatches != null)
      result.languageVersionMatches = languageVersionMatches;
    if (unitPackaging != null) result.unitPackaging = unitPackaging;
    if (hapticFeedback != null) result.hapticFeedback = hapticFeedback;
    if (recoveryType != null) result.recoveryType = recoveryType;
    if (optigaSec != null) result.optigaSec = optigaSec;
    if (soc != null) result.soc = soc;
    if (firmwareCorrupted != null) result.firmwareCorrupted = firmwareCorrupted;
    if (autoLockDelayBatteryMs != null)
      result.autoLockDelayBatteryMs = autoLockDelayBatteryMs;
    if (led != null) result.led = led;
    if (usbConnected != null) result.usbConnected = usbConnected;
    if (wirelessConnected != null) result.wirelessConnected = wirelessConnected;
    if (buildVersion != null) result.buildVersion = buildVersion;
    if (fwBuild != null) result.fwBuild = fwBuild;
    return result;
  }

  Features._();

  factory Features.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Features.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Features',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'vendor')
    ..aI(2, _omitFieldNames ? '' : 'majorVersion',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'minorVersion',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'patchVersion',
        fieldType: $pb.PbFieldType.QU3)
    ..aOB(5, _omitFieldNames ? '' : 'bootloaderMode')
    ..aOS(6, _omitFieldNames ? '' : 'deviceId')
    ..aOB(7, _omitFieldNames ? '' : 'pinProtection')
    ..aOB(8, _omitFieldNames ? '' : 'passphraseProtection')
    ..aOS(9, _omitFieldNames ? '' : 'language')
    ..aOS(10, _omitFieldNames ? '' : 'label')
    ..aOB(12, _omitFieldNames ? '' : 'initialized')
    ..a<$core.List<$core.int>>(
        13, _omitFieldNames ? '' : 'revision', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        14, _omitFieldNames ? '' : 'bootloaderHash', $pb.PbFieldType.OY)
    ..aOB(15, _omitFieldNames ? '' : 'imported')
    ..aOB(16, _omitFieldNames ? '' : 'unlocked')
    ..aOB(17, _omitFieldNames ? '' : 'PassphraseCached')
    ..aOB(18, _omitFieldNames ? '' : 'firmwarePresent')
    ..aE<Features_BackupAvailability>(
        19, _omitFieldNames ? '' : 'backupAvailability',
        enumValues: Features_BackupAvailability.values)
    ..aI(20, _omitFieldNames ? '' : 'flags', fieldType: $pb.PbFieldType.OU3)
    ..aOS(21, _omitFieldNames ? '' : 'model')
    ..aI(22, _omitFieldNames ? '' : 'fwMajor', fieldType: $pb.PbFieldType.OU3)
    ..aI(23, _omitFieldNames ? '' : 'fwMinor', fieldType: $pb.PbFieldType.OU3)
    ..aI(24, _omitFieldNames ? '' : 'fwPatch', fieldType: $pb.PbFieldType.OU3)
    ..aOS(25, _omitFieldNames ? '' : 'fwVendor')
    ..aOB(27, _omitFieldNames ? '' : 'unfinishedBackup')
    ..aOB(28, _omitFieldNames ? '' : 'noBackup')
    ..aE<Features_RecoveryStatus>(29, _omitFieldNames ? '' : 'recoveryStatus',
        enumValues: Features_RecoveryStatus.values)
    ..pPE<Features_Capability>(30, _omitFieldNames ? '' : 'capabilities',
        enumValues: Features_Capability.values)
    ..aE<BackupType>(31, _omitFieldNames ? '' : 'backupType',
        enumValues: BackupType.values)
    ..aOB(32, _omitFieldNames ? '' : 'sdCardPresent')
    ..aOB(33, _omitFieldNames ? '' : 'sdProtection')
    ..aOB(34, _omitFieldNames ? '' : 'wipeCodeProtection')
    ..a<$core.List<$core.int>>(
        35, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.OY)
    ..aOB(36, _omitFieldNames ? '' : 'passphraseAlwaysOnDevice')
    ..aE<SafetyCheckLevel>(37, _omitFieldNames ? '' : 'safetyChecks',
        enumValues: SafetyCheckLevel.values)
    ..aI(38, _omitFieldNames ? '' : 'autoLockDelayMs',
        fieldType: $pb.PbFieldType.OU3)
    ..aE<DisplayRotation>(39, _omitFieldNames ? '' : 'displayRotation',
        enumValues: DisplayRotation.values)
    ..aOB(40, _omitFieldNames ? '' : 'experimentalFeatures')
    ..aOB(41, _omitFieldNames ? '' : 'busy')
    ..aE<HomescreenFormat>(42, _omitFieldNames ? '' : 'homescreenFormat',
        enumValues: HomescreenFormat.values)
    ..aOB(43, _omitFieldNames ? '' : 'hidePassphraseFromHost')
    ..aOS(44, _omitFieldNames ? '' : 'internalModel')
    ..aI(45, _omitFieldNames ? '' : 'unitColor', fieldType: $pb.PbFieldType.OU3)
    ..aOB(46, _omitFieldNames ? '' : 'unitBtconly')
    ..aI(47, _omitFieldNames ? '' : 'homescreenWidth',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(48, _omitFieldNames ? '' : 'homescreenHeight',
        fieldType: $pb.PbFieldType.OU3)
    ..aOB(49, _omitFieldNames ? '' : 'bootloaderLocked')
    ..a<$core.bool>(
        50, _omitFieldNames ? '' : 'languageVersionMatches', $pb.PbFieldType.OB,
        defaultOrMaker: true)
    ..aI(51, _omitFieldNames ? '' : 'unitPackaging',
        fieldType: $pb.PbFieldType.OU3)
    ..aOB(52, _omitFieldNames ? '' : 'hapticFeedback')
    ..aE<RecoveryType>(53, _omitFieldNames ? '' : 'recoveryType',
        enumValues: RecoveryType.values)
    ..aI(54, _omitFieldNames ? '' : 'optigaSec', fieldType: $pb.PbFieldType.OU3)
    ..aI(55, _omitFieldNames ? '' : 'soc', fieldType: $pb.PbFieldType.OU3)
    ..aOB(56, _omitFieldNames ? '' : 'firmwareCorrupted')
    ..aI(57, _omitFieldNames ? '' : 'autoLockDelayBatteryMs',
        fieldType: $pb.PbFieldType.OU3)
    ..aOB(58, _omitFieldNames ? '' : 'led')
    ..aOB(59, _omitFieldNames ? '' : 'usbConnected')
    ..aOB(60, _omitFieldNames ? '' : 'wirelessConnected')
    ..aI(61, _omitFieldNames ? '' : 'buildVersion',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(62, _omitFieldNames ? '' : 'fwBuild', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Features clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Features copyWith(void Function(Features) updates) =>
      super.copyWith((message) => updates(message as Features)) as Features;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Features create() => Features._();
  @$core.override
  Features createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Features getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Features>(create);
  static Features? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get vendor => $_getSZ(0);
  @$pb.TagNumber(1)
  set vendor($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVendor() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendor() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get majorVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set majorVersion($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMajorVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearMajorVersion() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get minorVersion => $_getIZ(2);
  @$pb.TagNumber(3)
  set minorVersion($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMinorVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinorVersion() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get patchVersion => $_getIZ(3);
  @$pb.TagNumber(4)
  set patchVersion($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPatchVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearPatchVersion() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get bootloaderMode => $_getBF(4);
  @$pb.TagNumber(5)
  set bootloaderMode($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBootloaderMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBootloaderMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get deviceId => $_getSZ(5);
  @$pb.TagNumber(6)
  set deviceId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDeviceId() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeviceId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get pinProtection => $_getBF(6);
  @$pb.TagNumber(7)
  set pinProtection($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPinProtection() => $_has(6);
  @$pb.TagNumber(7)
  void clearPinProtection() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get passphraseProtection => $_getBF(7);
  @$pb.TagNumber(8)
  set passphraseProtection($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasPassphraseProtection() => $_has(7);
  @$pb.TagNumber(8)
  void clearPassphraseProtection() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get language => $_getSZ(8);
  @$pb.TagNumber(9)
  set language($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasLanguage() => $_has(8);
  @$pb.TagNumber(9)
  void clearLanguage() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get label => $_getSZ(9);
  @$pb.TagNumber(10)
  set label($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasLabel() => $_has(9);
  @$pb.TagNumber(10)
  void clearLabel() => $_clearField(10);

  @$pb.TagNumber(12)
  $core.bool get initialized => $_getBF(10);
  @$pb.TagNumber(12)
  set initialized($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(12)
  $core.bool hasInitialized() => $_has(10);
  @$pb.TagNumber(12)
  void clearInitialized() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.int> get revision => $_getN(11);
  @$pb.TagNumber(13)
  set revision($core.List<$core.int> value) => $_setBytes(11, value);
  @$pb.TagNumber(13)
  $core.bool hasRevision() => $_has(11);
  @$pb.TagNumber(13)
  void clearRevision() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.int> get bootloaderHash => $_getN(12);
  @$pb.TagNumber(14)
  set bootloaderHash($core.List<$core.int> value) => $_setBytes(12, value);
  @$pb.TagNumber(14)
  $core.bool hasBootloaderHash() => $_has(12);
  @$pb.TagNumber(14)
  void clearBootloaderHash() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.bool get imported => $_getBF(13);
  @$pb.TagNumber(15)
  set imported($core.bool value) => $_setBool(13, value);
  @$pb.TagNumber(15)
  $core.bool hasImported() => $_has(13);
  @$pb.TagNumber(15)
  void clearImported() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.bool get unlocked => $_getBF(14);
  @$pb.TagNumber(16)
  set unlocked($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(16)
  $core.bool hasUnlocked() => $_has(14);
  @$pb.TagNumber(16)
  void clearUnlocked() => $_clearField(16);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(17)
  $core.bool get passphraseCached => $_getBF(15);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(17)
  set passphraseCached($core.bool value) => $_setBool(15, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(17)
  $core.bool hasPassphraseCached() => $_has(15);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(17)
  void clearPassphraseCached() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.bool get firmwarePresent => $_getBF(16);
  @$pb.TagNumber(18)
  set firmwarePresent($core.bool value) => $_setBool(16, value);
  @$pb.TagNumber(18)
  $core.bool hasFirmwarePresent() => $_has(16);
  @$pb.TagNumber(18)
  void clearFirmwarePresent() => $_clearField(18);

  @$pb.TagNumber(19)
  Features_BackupAvailability get backupAvailability => $_getN(17);
  @$pb.TagNumber(19)
  set backupAvailability(Features_BackupAvailability value) =>
      $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasBackupAvailability() => $_has(17);
  @$pb.TagNumber(19)
  void clearBackupAvailability() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get flags => $_getIZ(18);
  @$pb.TagNumber(20)
  set flags($core.int value) => $_setUnsignedInt32(18, value);
  @$pb.TagNumber(20)
  $core.bool hasFlags() => $_has(18);
  @$pb.TagNumber(20)
  void clearFlags() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get model => $_getSZ(19);
  @$pb.TagNumber(21)
  set model($core.String value) => $_setString(19, value);
  @$pb.TagNumber(21)
  $core.bool hasModel() => $_has(19);
  @$pb.TagNumber(21)
  void clearModel() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.int get fwMajor => $_getIZ(20);
  @$pb.TagNumber(22)
  set fwMajor($core.int value) => $_setUnsignedInt32(20, value);
  @$pb.TagNumber(22)
  $core.bool hasFwMajor() => $_has(20);
  @$pb.TagNumber(22)
  void clearFwMajor() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.int get fwMinor => $_getIZ(21);
  @$pb.TagNumber(23)
  set fwMinor($core.int value) => $_setUnsignedInt32(21, value);
  @$pb.TagNumber(23)
  $core.bool hasFwMinor() => $_has(21);
  @$pb.TagNumber(23)
  void clearFwMinor() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.int get fwPatch => $_getIZ(22);
  @$pb.TagNumber(24)
  set fwPatch($core.int value) => $_setUnsignedInt32(22, value);
  @$pb.TagNumber(24)
  $core.bool hasFwPatch() => $_has(22);
  @$pb.TagNumber(24)
  void clearFwPatch() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get fwVendor => $_getSZ(23);
  @$pb.TagNumber(25)
  set fwVendor($core.String value) => $_setString(23, value);
  @$pb.TagNumber(25)
  $core.bool hasFwVendor() => $_has(23);
  @$pb.TagNumber(25)
  void clearFwVendor() => $_clearField(25);

  /// optional bytes fw_vendor_keys = 26;                 // obsoleted, use fw_vendor
  @$pb.TagNumber(27)
  $core.bool get unfinishedBackup => $_getBF(24);
  @$pb.TagNumber(27)
  set unfinishedBackup($core.bool value) => $_setBool(24, value);
  @$pb.TagNumber(27)
  $core.bool hasUnfinishedBackup() => $_has(24);
  @$pb.TagNumber(27)
  void clearUnfinishedBackup() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.bool get noBackup => $_getBF(25);
  @$pb.TagNumber(28)
  set noBackup($core.bool value) => $_setBool(25, value);
  @$pb.TagNumber(28)
  $core.bool hasNoBackup() => $_has(25);
  @$pb.TagNumber(28)
  void clearNoBackup() => $_clearField(28);

  @$pb.TagNumber(29)
  Features_RecoveryStatus get recoveryStatus => $_getN(26);
  @$pb.TagNumber(29)
  set recoveryStatus(Features_RecoveryStatus value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasRecoveryStatus() => $_has(26);
  @$pb.TagNumber(29)
  void clearRecoveryStatus() => $_clearField(29);

  @$pb.TagNumber(30)
  $pb.PbList<Features_Capability> get capabilities => $_getList(27);

  @$pb.TagNumber(31)
  BackupType get backupType => $_getN(28);
  @$pb.TagNumber(31)
  set backupType(BackupType value) => $_setField(31, value);
  @$pb.TagNumber(31)
  $core.bool hasBackupType() => $_has(28);
  @$pb.TagNumber(31)
  void clearBackupType() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.bool get sdCardPresent => $_getBF(29);
  @$pb.TagNumber(32)
  set sdCardPresent($core.bool value) => $_setBool(29, value);
  @$pb.TagNumber(32)
  $core.bool hasSdCardPresent() => $_has(29);
  @$pb.TagNumber(32)
  void clearSdCardPresent() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.bool get sdProtection => $_getBF(30);
  @$pb.TagNumber(33)
  set sdProtection($core.bool value) => $_setBool(30, value);
  @$pb.TagNumber(33)
  $core.bool hasSdProtection() => $_has(30);
  @$pb.TagNumber(33)
  void clearSdProtection() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.bool get wipeCodeProtection => $_getBF(31);
  @$pb.TagNumber(34)
  set wipeCodeProtection($core.bool value) => $_setBool(31, value);
  @$pb.TagNumber(34)
  $core.bool hasWipeCodeProtection() => $_has(31);
  @$pb.TagNumber(34)
  void clearWipeCodeProtection() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.List<$core.int> get sessionId => $_getN(32);
  @$pb.TagNumber(35)
  set sessionId($core.List<$core.int> value) => $_setBytes(32, value);
  @$pb.TagNumber(35)
  $core.bool hasSessionId() => $_has(32);
  @$pb.TagNumber(35)
  void clearSessionId() => $_clearField(35);

  @$pb.TagNumber(36)
  $core.bool get passphraseAlwaysOnDevice => $_getBF(33);
  @$pb.TagNumber(36)
  set passphraseAlwaysOnDevice($core.bool value) => $_setBool(33, value);
  @$pb.TagNumber(36)
  $core.bool hasPassphraseAlwaysOnDevice() => $_has(33);
  @$pb.TagNumber(36)
  void clearPassphraseAlwaysOnDevice() => $_clearField(36);

  @$pb.TagNumber(37)
  SafetyCheckLevel get safetyChecks => $_getN(34);
  @$pb.TagNumber(37)
  set safetyChecks(SafetyCheckLevel value) => $_setField(37, value);
  @$pb.TagNumber(37)
  $core.bool hasSafetyChecks() => $_has(34);
  @$pb.TagNumber(37)
  void clearSafetyChecks() => $_clearField(37);

  /// namespace enforcement
  @$pb.TagNumber(38)
  $core.int get autoLockDelayMs => $_getIZ(35);
  @$pb.TagNumber(38)
  set autoLockDelayMs($core.int value) => $_setUnsignedInt32(35, value);
  @$pb.TagNumber(38)
  $core.bool hasAutoLockDelayMs() => $_has(35);
  @$pb.TagNumber(38)
  void clearAutoLockDelayMs() => $_clearField(38);

  @$pb.TagNumber(39)
  DisplayRotation get displayRotation => $_getN(36);
  @$pb.TagNumber(39)
  set displayRotation(DisplayRotation value) => $_setField(39, value);
  @$pb.TagNumber(39)
  $core.bool hasDisplayRotation() => $_has(36);
  @$pb.TagNumber(39)
  void clearDisplayRotation() => $_clearField(39);

  @$pb.TagNumber(40)
  $core.bool get experimentalFeatures => $_getBF(37);
  @$pb.TagNumber(40)
  set experimentalFeatures($core.bool value) => $_setBool(37, value);
  @$pb.TagNumber(40)
  $core.bool hasExperimentalFeatures() => $_has(37);
  @$pb.TagNumber(40)
  void clearExperimentalFeatures() => $_clearField(40);

  @$pb.TagNumber(41)
  $core.bool get busy => $_getBF(38);
  @$pb.TagNumber(41)
  set busy($core.bool value) => $_setBool(38, value);
  @$pb.TagNumber(41)
  $core.bool hasBusy() => $_has(38);
  @$pb.TagNumber(41)
  void clearBusy() => $_clearField(41);

  @$pb.TagNumber(42)
  HomescreenFormat get homescreenFormat => $_getN(39);
  @$pb.TagNumber(42)
  set homescreenFormat(HomescreenFormat value) => $_setField(42, value);
  @$pb.TagNumber(42)
  $core.bool hasHomescreenFormat() => $_has(39);
  @$pb.TagNumber(42)
  void clearHomescreenFormat() => $_clearField(42);

  @$pb.TagNumber(43)
  $core.bool get hidePassphraseFromHost => $_getBF(40);
  @$pb.TagNumber(43)
  set hidePassphraseFromHost($core.bool value) => $_setBool(40, value);
  @$pb.TagNumber(43)
  $core.bool hasHidePassphraseFromHost() => $_has(40);
  @$pb.TagNumber(43)
  void clearHidePassphraseFromHost() => $_clearField(43);

  @$pb.TagNumber(44)
  $core.String get internalModel => $_getSZ(41);
  @$pb.TagNumber(44)
  set internalModel($core.String value) => $_setString(41, value);
  @$pb.TagNumber(44)
  $core.bool hasInternalModel() => $_has(41);
  @$pb.TagNumber(44)
  void clearInternalModel() => $_clearField(44);

  @$pb.TagNumber(45)
  $core.int get unitColor => $_getIZ(42);
  @$pb.TagNumber(45)
  set unitColor($core.int value) => $_setUnsignedInt32(42, value);
  @$pb.TagNumber(45)
  $core.bool hasUnitColor() => $_has(42);
  @$pb.TagNumber(45)
  void clearUnitColor() => $_clearField(45);

  @$pb.TagNumber(46)
  $core.bool get unitBtconly => $_getBF(43);
  @$pb.TagNumber(46)
  set unitBtconly($core.bool value) => $_setBool(43, value);
  @$pb.TagNumber(46)
  $core.bool hasUnitBtconly() => $_has(43);
  @$pb.TagNumber(46)
  void clearUnitBtconly() => $_clearField(46);

  @$pb.TagNumber(47)
  $core.int get homescreenWidth => $_getIZ(44);
  @$pb.TagNumber(47)
  set homescreenWidth($core.int value) => $_setUnsignedInt32(44, value);
  @$pb.TagNumber(47)
  $core.bool hasHomescreenWidth() => $_has(44);
  @$pb.TagNumber(47)
  void clearHomescreenWidth() => $_clearField(47);

  @$pb.TagNumber(48)
  $core.int get homescreenHeight => $_getIZ(45);
  @$pb.TagNumber(48)
  set homescreenHeight($core.int value) => $_setUnsignedInt32(45, value);
  @$pb.TagNumber(48)
  $core.bool hasHomescreenHeight() => $_has(45);
  @$pb.TagNumber(48)
  void clearHomescreenHeight() => $_clearField(48);

  @$pb.TagNumber(49)
  $core.bool get bootloaderLocked => $_getBF(46);
  @$pb.TagNumber(49)
  set bootloaderLocked($core.bool value) => $_setBool(46, value);
  @$pb.TagNumber(49)
  $core.bool hasBootloaderLocked() => $_has(46);
  @$pb.TagNumber(49)
  void clearBootloaderLocked() => $_clearField(49);

  @$pb.TagNumber(50)
  $core.bool get languageVersionMatches => $_getB(47, true);
  @$pb.TagNumber(50)
  set languageVersionMatches($core.bool value) => $_setBool(47, value);
  @$pb.TagNumber(50)
  $core.bool hasLanguageVersionMatches() => $_has(47);
  @$pb.TagNumber(50)
  void clearLanguageVersionMatches() => $_clearField(50);

  @$pb.TagNumber(51)
  $core.int get unitPackaging => $_getIZ(48);
  @$pb.TagNumber(51)
  set unitPackaging($core.int value) => $_setUnsignedInt32(48, value);
  @$pb.TagNumber(51)
  $core.bool hasUnitPackaging() => $_has(48);
  @$pb.TagNumber(51)
  void clearUnitPackaging() => $_clearField(51);

  @$pb.TagNumber(52)
  $core.bool get hapticFeedback => $_getBF(49);
  @$pb.TagNumber(52)
  set hapticFeedback($core.bool value) => $_setBool(49, value);
  @$pb.TagNumber(52)
  $core.bool hasHapticFeedback() => $_has(49);
  @$pb.TagNumber(52)
  void clearHapticFeedback() => $_clearField(52);

  @$pb.TagNumber(53)
  RecoveryType get recoveryType => $_getN(50);
  @$pb.TagNumber(53)
  set recoveryType(RecoveryType value) => $_setField(53, value);
  @$pb.TagNumber(53)
  $core.bool hasRecoveryType() => $_has(50);
  @$pb.TagNumber(53)
  void clearRecoveryType() => $_clearField(53);

  /// NB: this works in conjunction with recovery_status
  @$pb.TagNumber(54)
  $core.int get optigaSec => $_getIZ(51);
  @$pb.TagNumber(54)
  set optigaSec($core.int value) => $_setUnsignedInt32(51, value);
  @$pb.TagNumber(54)
  $core.bool hasOptigaSec() => $_has(51);
  @$pb.TagNumber(54)
  void clearOptigaSec() => $_clearField(54);

  @$pb.TagNumber(55)
  $core.int get soc => $_getIZ(52);
  @$pb.TagNumber(55)
  set soc($core.int value) => $_setUnsignedInt32(52, value);
  @$pb.TagNumber(55)
  $core.bool hasSoc() => $_has(52);
  @$pb.TagNumber(55)
  void clearSoc() => $_clearField(55);

  @$pb.TagNumber(56)
  $core.bool get firmwareCorrupted => $_getBF(53);
  @$pb.TagNumber(56)
  set firmwareCorrupted($core.bool value) => $_setBool(53, value);
  @$pb.TagNumber(56)
  $core.bool hasFirmwareCorrupted() => $_has(53);
  @$pb.TagNumber(56)
  void clearFirmwareCorrupted() => $_clearField(56);

  @$pb.TagNumber(57)
  $core.int get autoLockDelayBatteryMs => $_getIZ(54);
  @$pb.TagNumber(57)
  set autoLockDelayBatteryMs($core.int value) => $_setUnsignedInt32(54, value);
  @$pb.TagNumber(57)
  $core.bool hasAutoLockDelayBatteryMs() => $_has(54);
  @$pb.TagNumber(57)
  void clearAutoLockDelayBatteryMs() => $_clearField(57);

  /// the battery-powered device locks itself
  @$pb.TagNumber(58)
  $core.bool get led => $_getBF(55);
  @$pb.TagNumber(58)
  set led($core.bool value) => $_setBool(55, value);
  @$pb.TagNumber(58)
  $core.bool hasLed() => $_has(55);
  @$pb.TagNumber(58)
  void clearLed() => $_clearField(58);

  @$pb.TagNumber(59)
  $core.bool get usbConnected => $_getBF(56);
  @$pb.TagNumber(59)
  set usbConnected($core.bool value) => $_setBool(56, value);
  @$pb.TagNumber(59)
  $core.bool hasUsbConnected() => $_has(56);
  @$pb.TagNumber(59)
  void clearUsbConnected() => $_clearField(59);

  @$pb.TagNumber(60)
  $core.bool get wirelessConnected => $_getBF(57);
  @$pb.TagNumber(60)
  set wirelessConnected($core.bool value) => $_setBool(57, value);
  @$pb.TagNumber(60)
  $core.bool hasWirelessConnected() => $_has(57);
  @$pb.TagNumber(60)
  void clearWirelessConnected() => $_clearField(60);

  @$pb.TagNumber(61)
  $core.int get buildVersion => $_getIZ(58);
  @$pb.TagNumber(61)
  set buildVersion($core.int value) => $_setUnsignedInt32(58, value);
  @$pb.TagNumber(61)
  $core.bool hasBuildVersion() => $_has(58);
  @$pb.TagNumber(61)
  void clearBuildVersion() => $_clearField(61);

  @$pb.TagNumber(62)
  $core.int get fwBuild => $_getIZ(59);
  @$pb.TagNumber(62)
  set fwBuild($core.int value) => $_setUnsignedInt32(59, value);
  @$pb.TagNumber(62)
  $core.bool hasFwBuild() => $_has(59);
  @$pb.TagNumber(62)
  void clearFwBuild() => $_clearField(62);
}

/// *
///  Request: soft-lock the device. Following actions will require PIN. Passphrases remain cached.
///  @start
///  @next Success
class LockDevice extends $pb.GeneratedMessage {
  factory LockDevice() => create();

  LockDevice._();

  factory LockDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LockDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LockDevice',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LockDevice clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LockDevice copyWith(void Function(LockDevice) updates) =>
      super.copyWith((message) => updates(message as LockDevice)) as LockDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LockDevice create() => LockDevice._();
  @$core.override
  LockDevice createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LockDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LockDevice>(create);
  static LockDevice? _defaultInstance;
}

/// *
///  Request: Show a "Do not disconnect" dialog instead of the standard homescreen.
///  @start
///  @next Success
class SetBusy extends $pb.GeneratedMessage {
  factory SetBusy({
    $core.int? expiryMs,
  }) {
    final result = create();
    if (expiryMs != null) result.expiryMs = expiryMs;
    return result;
  }

  SetBusy._();

  factory SetBusy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetBusy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetBusy',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'expiryMs', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetBusy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetBusy copyWith(void Function(SetBusy) updates) =>
      super.copyWith((message) => updates(message as SetBusy)) as SetBusy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetBusy create() => SetBusy._();
  @$core.override
  SetBusy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetBusy getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetBusy>(create);
  static SetBusy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get expiryMs => $_getIZ(0);
  @$pb.TagNumber(1)
  set expiryMs($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasExpiryMs() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpiryMs() => $_clearField(1);
}

/// *
///  Request: end the current sesson. Following actions must call Initialize again.
///  Cache for the current session is discarded, other sessions remain intact.
///  Device is not PIN-locked.
///  @start
///  @next Success
class EndSession extends $pb.GeneratedMessage {
  factory EndSession() => create();

  EndSession._();

  factory EndSession.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EndSession.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EndSession',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EndSession clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EndSession copyWith(void Function(EndSession) updates) =>
      super.copyWith((message) => updates(message as EndSession)) as EndSession;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EndSession create() => EndSession._();
  @$core.override
  EndSession createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EndSession getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EndSession>(create);
  static EndSession? _defaultInstance;
}

/// *
///  Request: change some property of the device, e.g. label or homescreen
///  @start
///  @next Success
///  @next DataChunkRequest
///  @next Failure
class ApplySettings extends $pb.GeneratedMessage {
  factory ApplySettings({
    @$core.Deprecated('This field is deprecated.') $core.String? language,
    $core.String? label,
    $core.bool? usePassphrase,
    $core.List<$core.int>? homescreen,
    @$core.Deprecated('This field is deprecated.') $core.int? passphraseSource,
    $core.int? autoLockDelayMs,
    DisplayRotation? displayRotation,
    $core.bool? passphraseAlwaysOnDevice,
    SafetyCheckLevel? safetyChecks,
    $core.bool? experimentalFeatures,
    $core.bool? hidePassphraseFromHost,
    $core.bool? hapticFeedback,
    $core.int? homescreenLength,
    $core.int? autoLockDelayBatteryMs,
  }) {
    final result = create();
    if (language != null) result.language = language;
    if (label != null) result.label = label;
    if (usePassphrase != null) result.usePassphrase = usePassphrase;
    if (homescreen != null) result.homescreen = homescreen;
    if (passphraseSource != null) result.passphraseSource = passphraseSource;
    if (autoLockDelayMs != null) result.autoLockDelayMs = autoLockDelayMs;
    if (displayRotation != null) result.displayRotation = displayRotation;
    if (passphraseAlwaysOnDevice != null)
      result.passphraseAlwaysOnDevice = passphraseAlwaysOnDevice;
    if (safetyChecks != null) result.safetyChecks = safetyChecks;
    if (experimentalFeatures != null)
      result.experimentalFeatures = experimentalFeatures;
    if (hidePassphraseFromHost != null)
      result.hidePassphraseFromHost = hidePassphraseFromHost;
    if (hapticFeedback != null) result.hapticFeedback = hapticFeedback;
    if (homescreenLength != null) result.homescreenLength = homescreenLength;
    if (autoLockDelayBatteryMs != null)
      result.autoLockDelayBatteryMs = autoLockDelayBatteryMs;
    return result;
  }

  ApplySettings._();

  factory ApplySettings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ApplySettings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApplySettings',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'language')
    ..aOS(2, _omitFieldNames ? '' : 'label')
    ..aOB(3, _omitFieldNames ? '' : 'usePassphrase')
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'homescreen', $pb.PbFieldType.OY)
    ..aI(5, _omitFieldNames ? '' : 'PassphraseSource',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'autoLockDelayMs',
        fieldType: $pb.PbFieldType.OU3)
    ..aE<DisplayRotation>(7, _omitFieldNames ? '' : 'displayRotation',
        enumValues: DisplayRotation.values)
    ..aOB(8, _omitFieldNames ? '' : 'passphraseAlwaysOnDevice')
    ..aE<SafetyCheckLevel>(9, _omitFieldNames ? '' : 'safetyChecks',
        enumValues: SafetyCheckLevel.values)
    ..aOB(10, _omitFieldNames ? '' : 'experimentalFeatures')
    ..aOB(11, _omitFieldNames ? '' : 'hidePassphraseFromHost')
    ..aOB(13, _omitFieldNames ? '' : 'hapticFeedback')
    ..aI(14, _omitFieldNames ? '' : 'homescreenLength',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(15, _omitFieldNames ? '' : 'autoLockDelayBatteryMs',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplySettings clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplySettings copyWith(void Function(ApplySettings) updates) =>
      super.copyWith((message) => updates(message as ApplySettings))
          as ApplySettings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplySettings create() => ApplySettings._();
  @$core.override
  ApplySettings createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ApplySettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ApplySettings>(create);
  static ApplySettings? _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.String get language => $_getSZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set language($core.String value) => $_setString(0, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasLanguage() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearLanguage() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get label => $_getSZ(1);
  @$pb.TagNumber(2)
  set label($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLabel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabel() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get usePassphrase => $_getBF(2);
  @$pb.TagNumber(3)
  set usePassphrase($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUsePassphrase() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsePassphrase() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get homescreen => $_getN(3);
  @$pb.TagNumber(4)
  set homescreen($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHomescreen() => $_has(3);
  @$pb.TagNumber(4)
  void clearHomescreen() => $_clearField(4);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.int get passphraseSource => $_getIZ(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set passphraseSource($core.int value) => $_setUnsignedInt32(4, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasPassphraseSource() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearPassphraseSource() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get autoLockDelayMs => $_getIZ(5);
  @$pb.TagNumber(6)
  set autoLockDelayMs($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAutoLockDelayMs() => $_has(5);
  @$pb.TagNumber(6)
  void clearAutoLockDelayMs() => $_clearField(6);

  @$pb.TagNumber(7)
  DisplayRotation get displayRotation => $_getN(6);
  @$pb.TagNumber(7)
  set displayRotation(DisplayRotation value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasDisplayRotation() => $_has(6);
  @$pb.TagNumber(7)
  void clearDisplayRotation() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get passphraseAlwaysOnDevice => $_getBF(7);
  @$pb.TagNumber(8)
  set passphraseAlwaysOnDevice($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasPassphraseAlwaysOnDevice() => $_has(7);
  @$pb.TagNumber(8)
  void clearPassphraseAlwaysOnDevice() => $_clearField(8);

  @$pb.TagNumber(9)
  SafetyCheckLevel get safetyChecks => $_getN(8);
  @$pb.TagNumber(9)
  set safetyChecks(SafetyCheckLevel value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasSafetyChecks() => $_has(8);
  @$pb.TagNumber(9)
  void clearSafetyChecks() => $_clearField(9);

  /// set to Prompt to limit path namespace enforcement
  @$pb.TagNumber(10)
  $core.bool get experimentalFeatures => $_getBF(9);
  @$pb.TagNumber(10)
  set experimentalFeatures($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasExperimentalFeatures() => $_has(9);
  @$pb.TagNumber(10)
  void clearExperimentalFeatures() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get hidePassphraseFromHost => $_getBF(10);
  @$pb.TagNumber(11)
  set hidePassphraseFromHost($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasHidePassphraseFromHost() => $_has(10);
  @$pb.TagNumber(11)
  void clearHidePassphraseFromHost() => $_clearField(11);

  @$pb.TagNumber(13)
  $core.bool get hapticFeedback => $_getBF(11);
  @$pb.TagNumber(13)
  set hapticFeedback($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(13)
  $core.bool hasHapticFeedback() => $_has(11);
  @$pb.TagNumber(13)
  void clearHapticFeedback() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get homescreenLength => $_getIZ(12);
  @$pb.TagNumber(14)
  set homescreenLength($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(14)
  $core.bool hasHomescreenLength() => $_has(12);
  @$pb.TagNumber(14)
  void clearHomescreenLength() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get autoLockDelayBatteryMs => $_getIZ(13);
  @$pb.TagNumber(15)
  set autoLockDelayBatteryMs($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(15)
  $core.bool hasAutoLockDelayBatteryMs() => $_has(13);
  @$pb.TagNumber(15)
  void clearAutoLockDelayBatteryMs() => $_clearField(15);
}

/// *
///  Request: change the device language via translation data.
///  Does not send the translation data itself, as they are too large for one message.
///  Device will request the translation data in chunks.
///  @start
///  @next DataChunkRequest
///  @next Failure
class ChangeLanguage extends $pb.GeneratedMessage {
  factory ChangeLanguage({
    $core.int? dataLength,
    $core.bool? showDisplay,
  }) {
    final result = create();
    if (dataLength != null) result.dataLength = dataLength;
    if (showDisplay != null) result.showDisplay = showDisplay;
    return result;
  }

  ChangeLanguage._();

  factory ChangeLanguage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChangeLanguage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChangeLanguage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'dataLength', fieldType: $pb.PbFieldType.QU3)
    ..aOB(2, _omitFieldNames ? '' : 'showDisplay');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangeLanguage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangeLanguage copyWith(void Function(ChangeLanguage) updates) =>
      super.copyWith((message) => updates(message as ChangeLanguage))
          as ChangeLanguage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangeLanguage create() => ChangeLanguage._();
  @$core.override
  ChangeLanguage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChangeLanguage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChangeLanguage>(create);
  static ChangeLanguage? _defaultInstance;

  /// byte length of the whole translation blob (set to 0 for default language - english)
  @$pb.TagNumber(1)
  $core.int get dataLength => $_getIZ(0);
  @$pb.TagNumber(1)
  set dataLength($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDataLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataLength() => $_clearField(1);

  /// Prompt the user on screen.
  /// In certain conditions (such as freshly installed device), the confirmation prompt
  /// is not mandatory. Setting show_display=false will skip the prompt if that's
  /// the case. If the device does not allow skipping the prompt, a request with
  /// show_display=false will return a failure. (This way the host can safely try
  /// to change the language without invoking a prompt.)
  /// Setting show_display to true will always show the prompt.
  /// Leaving the option unset will show the prompt only when necessary.
  @$pb.TagNumber(2)
  $core.bool get showDisplay => $_getBF(1);
  @$pb.TagNumber(2)
  set showDisplay($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasShowDisplay() => $_has(1);
  @$pb.TagNumber(2)
  void clearShowDisplay() => $_clearField(2);
}

/// *
///  Response: Device asks for more data from translation/homescreen image.
///  @end
///  @next DataChunkAck
class DataChunkRequest extends $pb.GeneratedMessage {
  factory DataChunkRequest({
    $core.int? dataLength,
    $core.int? dataOffset,
  }) {
    final result = create();
    if (dataLength != null) result.dataLength = dataLength;
    if (dataOffset != null) result.dataOffset = dataOffset;
    return result;
  }

  DataChunkRequest._();

  factory DataChunkRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DataChunkRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DataChunkRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'dataLength', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'dataOffset',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataChunkRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataChunkRequest copyWith(void Function(DataChunkRequest) updates) =>
      super.copyWith((message) => updates(message as DataChunkRequest))
          as DataChunkRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataChunkRequest create() => DataChunkRequest._();
  @$core.override
  DataChunkRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DataChunkRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DataChunkRequest>(create);
  static DataChunkRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get dataLength => $_getIZ(0);
  @$pb.TagNumber(1)
  set dataLength($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDataLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataLength() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get dataOffset => $_getIZ(1);
  @$pb.TagNumber(2)
  set dataOffset($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDataOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataOffset() => $_clearField(2);
}

/// *
///  Request: Translation/homescreen payload data.
///  @next DataChunkRequest
///  @next Success
class DataChunkAck extends $pb.GeneratedMessage {
  factory DataChunkAck({
    $core.List<$core.int>? dataChunk,
  }) {
    final result = create();
    if (dataChunk != null) result.dataChunk = dataChunk;
    return result;
  }

  DataChunkAck._();

  factory DataChunkAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DataChunkAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DataChunkAck',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'dataChunk', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataChunkAck clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataChunkAck copyWith(void Function(DataChunkAck) updates) =>
      super.copyWith((message) => updates(message as DataChunkAck))
          as DataChunkAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataChunkAck create() => DataChunkAck._();
  @$core.override
  DataChunkAck createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DataChunkAck getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DataChunkAck>(create);
  static DataChunkAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get dataChunk => $_getN(0);
  @$pb.TagNumber(1)
  set dataChunk($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDataChunk() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataChunk() => $_clearField(1);
}

/// *
///  Request: set flags of the device
///  @start
///  @next Success
///  @next Failure
class ApplyFlags extends $pb.GeneratedMessage {
  factory ApplyFlags({
    $core.int? flags,
  }) {
    final result = create();
    if (flags != null) result.flags = flags;
    return result;
  }

  ApplyFlags._();

  factory ApplyFlags.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ApplyFlags.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApplyFlags',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'flags', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplyFlags clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplyFlags copyWith(void Function(ApplyFlags) updates) =>
      super.copyWith((message) => updates(message as ApplyFlags)) as ApplyFlags;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplyFlags create() => ApplyFlags._();
  @$core.override
  ApplyFlags createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ApplyFlags getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ApplyFlags>(create);
  static ApplyFlags? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get flags => $_getIZ(0);
  @$pb.TagNumber(1)
  set flags($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFlags() => $_has(0);
  @$pb.TagNumber(1)
  void clearFlags() => $_clearField(1);
}

/// *
///  Request: Starts workflow for setting/changing/removing the PIN
///  @start
///  @next Success
///  @next Failure
class ChangePin extends $pb.GeneratedMessage {
  factory ChangePin({
    $core.bool? remove,
  }) {
    final result = create();
    if (remove != null) result.remove = remove;
    return result;
  }

  ChangePin._();

  factory ChangePin.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChangePin.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChangePin',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'remove')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangePin clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangePin copyWith(void Function(ChangePin) updates) =>
      super.copyWith((message) => updates(message as ChangePin)) as ChangePin;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangePin create() => ChangePin._();
  @$core.override
  ChangePin createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChangePin getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangePin>(create);
  static ChangePin? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get remove => $_getBF(0);
  @$pb.TagNumber(1)
  set remove($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRemove() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemove() => $_clearField(1);
}

/// *
///  Request: Starts workflow for setting/removing the wipe code
///  @start
///  @next Success
///  @next Failure
class ChangeWipeCode extends $pb.GeneratedMessage {
  factory ChangeWipeCode({
    $core.bool? remove,
  }) {
    final result = create();
    if (remove != null) result.remove = remove;
    return result;
  }

  ChangeWipeCode._();

  factory ChangeWipeCode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChangeWipeCode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChangeWipeCode',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'remove')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangeWipeCode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangeWipeCode copyWith(void Function(ChangeWipeCode) updates) =>
      super.copyWith((message) => updates(message as ChangeWipeCode))
          as ChangeWipeCode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangeWipeCode create() => ChangeWipeCode._();
  @$core.override
  ChangeWipeCode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChangeWipeCode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChangeWipeCode>(create);
  static ChangeWipeCode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get remove => $_getBF(0);
  @$pb.TagNumber(1)
  set remove($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRemove() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemove() => $_clearField(1);
}

/// *
///  Request: Starts workflow for enabling/regenerating/disabling SD card protection
///  @start
///  @next Success
///  @next Failure
class SdProtect extends $pb.GeneratedMessage {
  factory SdProtect({
    SdProtect_SdProtectOperationType? operation,
  }) {
    final result = create();
    if (operation != null) result.operation = operation;
    return result;
  }

  SdProtect._();

  factory SdProtect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SdProtect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SdProtect',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aE<SdProtect_SdProtectOperationType>(
        1, _omitFieldNames ? '' : 'operation',
        fieldType: $pb.PbFieldType.QE,
        enumValues: SdProtect_SdProtectOperationType.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SdProtect clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SdProtect copyWith(void Function(SdProtect) updates) =>
      super.copyWith((message) => updates(message as SdProtect)) as SdProtect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SdProtect create() => SdProtect._();
  @$core.override
  SdProtect createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SdProtect getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SdProtect>(create);
  static SdProtect? _defaultInstance;

  @$pb.TagNumber(1)
  SdProtect_SdProtectOperationType get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation(SdProtect_SdProtectOperationType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
}

/// *
///  Request: Test if the device is alive, device sends back the message in Success response
///  @start
///  @next Success
class Ping extends $pb.GeneratedMessage {
  factory Ping({
    $core.String? message,
    $core.bool? buttonProtection,
  }) {
    final result = create();
    if (message != null) result.message = message;
    if (buttonProtection != null) result.buttonProtection = buttonProtection;
    return result;
  }

  Ping._();

  factory Ping.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Ping.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Ping',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..aOB(2, _omitFieldNames ? '' : 'buttonProtection')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Ping clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Ping copyWith(void Function(Ping) updates) =>
      super.copyWith((message) => updates(message as Ping)) as Ping;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ping create() => Ping._();
  @$core.override
  Ping createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Ping getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ping>(create);
  static Ping? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get buttonProtection => $_getBF(1);
  @$pb.TagNumber(2)
  set buttonProtection($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasButtonProtection() => $_has(1);
  @$pb.TagNumber(2)
  void clearButtonProtection() => $_clearField(2);
}

/// *
///  Request: Abort last operation that required user interaction
///  @start
///  @next Failure
class Cancel extends $pb.GeneratedMessage {
  factory Cancel() => create();

  Cancel._();

  factory Cancel.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Cancel.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Cancel',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Cancel clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Cancel copyWith(void Function(Cancel) updates) =>
      super.copyWith((message) => updates(message as Cancel)) as Cancel;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cancel create() => Cancel._();
  @$core.override
  Cancel createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Cancel getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cancel>(create);
  static Cancel? _defaultInstance;
}

/// *
///  Request: Request a sample of random data generated by hardware RNG. May be used for testing.
///  @start
///  @next Entropy
///  @next Failure
class GetEntropy extends $pb.GeneratedMessage {
  factory GetEntropy({
    $core.int? size,
  }) {
    final result = create();
    if (size != null) result.size = size;
    return result;
  }

  GetEntropy._();

  factory GetEntropy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetEntropy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetEntropy',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'size', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetEntropy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetEntropy copyWith(void Function(GetEntropy) updates) =>
      super.copyWith((message) => updates(message as GetEntropy)) as GetEntropy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetEntropy create() => GetEntropy._();
  @$core.override
  GetEntropy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetEntropy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetEntropy>(create);
  static GetEntropy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get size => $_getIZ(0);
  @$pb.TagNumber(1)
  set size($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearSize() => $_clearField(1);
}

/// *
///  Response: Reply with random data generated by internal RNG
///  @end
class Entropy extends $pb.GeneratedMessage {
  factory Entropy({
    $core.List<$core.int>? entropy,
  }) {
    final result = create();
    if (entropy != null) result.entropy = entropy;
    return result;
  }

  Entropy._();

  factory Entropy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Entropy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Entropy',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'entropy', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Entropy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Entropy copyWith(void Function(Entropy) updates) =>
      super.copyWith((message) => updates(message as Entropy)) as Entropy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Entropy create() => Entropy._();
  @$core.override
  Entropy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Entropy getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Entropy>(create);
  static Entropy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get entropy => $_getN(0);
  @$pb.TagNumber(1)
  set entropy($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEntropy() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntropy() => $_clearField(1);
}

/// *
///  Request: Get a hash of the installed firmware combined with an optional challenge.
///  @start
///  @next FirmwareHash
///  @next Failure
class GetFirmwareHash extends $pb.GeneratedMessage {
  factory GetFirmwareHash({
    $core.List<$core.int>? challenge,
  }) {
    final result = create();
    if (challenge != null) result.challenge = challenge;
    return result;
  }

  GetFirmwareHash._();

  factory GetFirmwareHash.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFirmwareHash.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFirmwareHash',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'challenge', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFirmwareHash clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFirmwareHash copyWith(void Function(GetFirmwareHash) updates) =>
      super.copyWith((message) => updates(message as GetFirmwareHash))
          as GetFirmwareHash;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFirmwareHash create() => GetFirmwareHash._();
  @$core.override
  GetFirmwareHash createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetFirmwareHash getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFirmwareHash>(create);
  static GetFirmwareHash? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get challenge => $_getN(0);
  @$pb.TagNumber(1)
  set challenge($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => $_clearField(1);
}

/// *
///  Response: Hash of the installed firmware combined with the optional challenge.
///  @end
class FirmwareHash extends $pb.GeneratedMessage {
  factory FirmwareHash({
    $core.List<$core.int>? hash,
  }) {
    final result = create();
    if (hash != null) result.hash = hash;
    return result;
  }

  FirmwareHash._();

  factory FirmwareHash.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FirmwareHash.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FirmwareHash',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'hash', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FirmwareHash clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FirmwareHash copyWith(void Function(FirmwareHash) updates) =>
      super.copyWith((message) => updates(message as FirmwareHash))
          as FirmwareHash;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FirmwareHash create() => FirmwareHash._();
  @$core.override
  FirmwareHash createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FirmwareHash getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FirmwareHash>(create);
  static FirmwareHash? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => $_clearField(1);
}

/// *
///  Request: Request a signature of the provided challenge.
///  @start
///  @next AuthenticityProof
///  @next Failure
class AuthenticateDevice extends $pb.GeneratedMessage {
  factory AuthenticateDevice({
    $core.List<$core.int>? challenge,
  }) {
    final result = create();
    if (challenge != null) result.challenge = challenge;
    return result;
  }

  AuthenticateDevice._();

  factory AuthenticateDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AuthenticateDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthenticateDevice',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'challenge', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthenticateDevice clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthenticateDevice copyWith(void Function(AuthenticateDevice) updates) =>
      super.copyWith((message) => updates(message as AuthenticateDevice))
          as AuthenticateDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthenticateDevice create() => AuthenticateDevice._();
  @$core.override
  AuthenticateDevice createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AuthenticateDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthenticateDevice>(create);
  static AuthenticateDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get challenge => $_getN(0);
  @$pb.TagNumber(1)
  set challenge($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => $_clearField(1);
}

/// *
///  Response: Signature of the provided challenge along with a certificate issued by the Trezor company.
///  @end
class AuthenticityProof extends $pb.GeneratedMessage {
  factory AuthenticityProof({
    $core.Iterable<$core.List<$core.int>>? optigaCertificates,
    $core.List<$core.int>? optigaSignature,
    $core.Iterable<$core.List<$core.int>>? tropicCertificates,
    $core.List<$core.int>? tropicSignature,
    $core.Iterable<$core.List<$core.int>>? mcuCertificates,
    $core.List<$core.int>? mcuSignature,
  }) {
    final result = create();
    if (optigaCertificates != null)
      result.optigaCertificates.addAll(optigaCertificates);
    if (optigaSignature != null) result.optigaSignature = optigaSignature;
    if (tropicCertificates != null)
      result.tropicCertificates.addAll(tropicCertificates);
    if (tropicSignature != null) result.tropicSignature = tropicSignature;
    if (mcuCertificates != null) result.mcuCertificates.addAll(mcuCertificates);
    if (mcuSignature != null) result.mcuSignature = mcuSignature;
    return result;
  }

  AuthenticityProof._();

  factory AuthenticityProof.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AuthenticityProof.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthenticityProof',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'optigaCertificates', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'optigaSignature', $pb.PbFieldType.QY)
    ..p<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'tropicCertificates', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'tropicSignature', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'mcuCertificates', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(
        6, _omitFieldNames ? '' : 'mcuSignature', $pb.PbFieldType.OY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthenticityProof clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthenticityProof copyWith(void Function(AuthenticityProof) updates) =>
      super.copyWith((message) => updates(message as AuthenticityProof))
          as AuthenticityProof;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthenticityProof create() => AuthenticityProof._();
  @$core.override
  AuthenticityProof createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AuthenticityProof getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthenticityProof>(create);
  static AuthenticityProof? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.List<$core.int>> get optigaCertificates => $_getList(0);

  /// followed by intermediate CA certificates, the last of which is signed by
  /// Trezor company's root CA.
  @$pb.TagNumber(2)
  $core.List<$core.int> get optigaSignature => $_getN(1);
  @$pb.TagNumber(2)
  set optigaSignature($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOptigaSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptigaSignature() => $_clearField(2);

  /// challenge that should be verified using the Optiga device certificate.
  @$pb.TagNumber(3)
  $pb.PbList<$core.List<$core.int>> get tropicCertificates => $_getList(2);

  /// followed by intermediate CA certificates, the last of which is signed by
  /// Trezor company's root CA.
  @$pb.TagNumber(4)
  $core.List<$core.int> get tropicSignature => $_getN(3);
  @$pb.TagNumber(4)
  set tropicSignature($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTropicSignature() => $_has(3);
  @$pb.TagNumber(4)
  void clearTropicSignature() => $_clearField(4);

  /// challenge that should be verified using the Tropic device certificate.
  @$pb.TagNumber(5)
  $pb.PbList<$core.List<$core.int>> get mcuCertificates => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get mcuSignature => $_getN(5);
  @$pb.TagNumber(6)
  set mcuSignature($core.List<$core.int> value) => $_setBytes(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMcuSignature() => $_has(5);
  @$pb.TagNumber(6)
  void clearMcuSignature() => $_clearField(6);
}

/// *
///  Request: Request device to wipe all sensitive data and settings
///  @start
///  @next Success
///  @next Failure
class WipeDevice extends $pb.GeneratedMessage {
  factory WipeDevice() => create();

  WipeDevice._();

  factory WipeDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WipeDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WipeDevice',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WipeDevice clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WipeDevice copyWith(void Function(WipeDevice) updates) =>
      super.copyWith((message) => updates(message as WipeDevice)) as WipeDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WipeDevice create() => WipeDevice._();
  @$core.override
  WipeDevice createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WipeDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WipeDevice>(create);
  static WipeDevice? _defaultInstance;
}

/// *
///  Request: Load seed and related internal settings from the computer
///  @start
///  @next Success
///  @next Failure
class LoadDevice extends $pb.GeneratedMessage {
  factory LoadDevice({
    $core.Iterable<$core.String>? mnemonics,
    $core.String? pin,
    $core.bool? passphraseProtection,
    @$core.Deprecated('This field is deprecated.') $core.String? language,
    $core.String? label,
    $core.bool? skipChecksum,
    $core.int? u2fCounter,
    $core.bool? needsBackup,
    $core.bool? noBackup,
    $core.bool? unfinishedBackup,
  }) {
    final result = create();
    if (mnemonics != null) result.mnemonics.addAll(mnemonics);
    if (pin != null) result.pin = pin;
    if (passphraseProtection != null)
      result.passphraseProtection = passphraseProtection;
    if (language != null) result.language = language;
    if (label != null) result.label = label;
    if (skipChecksum != null) result.skipChecksum = skipChecksum;
    if (u2fCounter != null) result.u2fCounter = u2fCounter;
    if (needsBackup != null) result.needsBackup = needsBackup;
    if (noBackup != null) result.noBackup = noBackup;
    if (unfinishedBackup != null) result.unfinishedBackup = unfinishedBackup;
    return result;
  }

  LoadDevice._();

  factory LoadDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LoadDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LoadDevice',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'mnemonics')
    ..aOS(3, _omitFieldNames ? '' : 'pin')
    ..aOB(4, _omitFieldNames ? '' : 'passphraseProtection')
    ..aOS(5, _omitFieldNames ? '' : 'language')
    ..aOS(6, _omitFieldNames ? '' : 'label')
    ..aOB(7, _omitFieldNames ? '' : 'skipChecksum')
    ..aI(8, _omitFieldNames ? '' : 'u2fCounter', fieldType: $pb.PbFieldType.OU3)
    ..aOB(9, _omitFieldNames ? '' : 'needsBackup')
    ..aOB(10, _omitFieldNames ? '' : 'noBackup')
    ..aOB(11, _omitFieldNames ? '' : 'unfinishedBackup')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoadDevice clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoadDevice copyWith(void Function(LoadDevice) updates) =>
      super.copyWith((message) => updates(message as LoadDevice)) as LoadDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoadDevice create() => LoadDevice._();
  @$core.override
  LoadDevice createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LoadDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LoadDevice>(create);
  static LoadDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get mnemonics => $_getList(0);

  @$pb.TagNumber(3)
  $core.String get pin => $_getSZ(1);
  @$pb.TagNumber(3)
  set pin($core.String value) => $_setString(1, value);
  @$pb.TagNumber(3)
  $core.bool hasPin() => $_has(1);
  @$pb.TagNumber(3)
  void clearPin() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get passphraseProtection => $_getBF(2);
  @$pb.TagNumber(4)
  set passphraseProtection($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(4)
  $core.bool hasPassphraseProtection() => $_has(2);
  @$pb.TagNumber(4)
  void clearPassphraseProtection() => $_clearField(4);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.String get language => $_getSZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set language($core.String value) => $_setString(3, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasLanguage() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearLanguage() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get label => $_getSZ(4);
  @$pb.TagNumber(6)
  set label($core.String value) => $_setString(4, value);
  @$pb.TagNumber(6)
  $core.bool hasLabel() => $_has(4);
  @$pb.TagNumber(6)
  void clearLabel() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get skipChecksum => $_getBF(5);
  @$pb.TagNumber(7)
  set skipChecksum($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(7)
  $core.bool hasSkipChecksum() => $_has(5);
  @$pb.TagNumber(7)
  void clearSkipChecksum() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get u2fCounter => $_getIZ(6);
  @$pb.TagNumber(8)
  set u2fCounter($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(8)
  $core.bool hasU2fCounter() => $_has(6);
  @$pb.TagNumber(8)
  void clearU2fCounter() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get needsBackup => $_getBF(7);
  @$pb.TagNumber(9)
  set needsBackup($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(9)
  $core.bool hasNeedsBackup() => $_has(7);
  @$pb.TagNumber(9)
  void clearNeedsBackup() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get noBackup => $_getBF(8);
  @$pb.TagNumber(10)
  set noBackup($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(10)
  $core.bool hasNoBackup() => $_has(8);
  @$pb.TagNumber(10)
  void clearNoBackup() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get unfinishedBackup => $_getBF(9);
  @$pb.TagNumber(11)
  set unfinishedBackup($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(11)
  $core.bool hasUnfinishedBackup() => $_has(9);
  @$pb.TagNumber(11)
  void clearUnfinishedBackup() => $_clearField(11);
}

/// *
///  Request: Ask device to do initialization involving user interaction
///  @start
///  @next EntropyRequest
///  @next Failure
class ResetDevice extends $pb.GeneratedMessage {
  factory ResetDevice({
    $core.int? strength,
    $core.bool? passphraseProtection,
    $core.bool? pinProtection,
    @$core.Deprecated('This field is deprecated.') $core.String? language,
    $core.String? label,
    $core.int? u2fCounter,
    $core.bool? skipBackup,
    $core.bool? noBackup,
    BackupType? backupType,
    $core.bool? entropyCheck,
    BackupMethod? backupMethod,
  }) {
    final result = create();
    if (strength != null) result.strength = strength;
    if (passphraseProtection != null)
      result.passphraseProtection = passphraseProtection;
    if (pinProtection != null) result.pinProtection = pinProtection;
    if (language != null) result.language = language;
    if (label != null) result.label = label;
    if (u2fCounter != null) result.u2fCounter = u2fCounter;
    if (skipBackup != null) result.skipBackup = skipBackup;
    if (noBackup != null) result.noBackup = noBackup;
    if (backupType != null) result.backupType = backupType;
    if (entropyCheck != null) result.entropyCheck = entropyCheck;
    if (backupMethod != null) result.backupMethod = backupMethod;
    return result;
  }

  ResetDevice._();

  factory ResetDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResetDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResetDevice',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aI(2, _omitFieldNames ? '' : 'strength',
        fieldType: $pb.PbFieldType.OU3, defaultOrMaker: 256)
    ..aOB(3, _omitFieldNames ? '' : 'passphraseProtection')
    ..aOB(4, _omitFieldNames ? '' : 'pinProtection')
    ..aOS(5, _omitFieldNames ? '' : 'language')
    ..aOS(6, _omitFieldNames ? '' : 'label')
    ..aI(7, _omitFieldNames ? '' : 'u2fCounter', fieldType: $pb.PbFieldType.OU3)
    ..aOB(8, _omitFieldNames ? '' : 'skipBackup')
    ..aOB(9, _omitFieldNames ? '' : 'noBackup')
    ..aE<BackupType>(10, _omitFieldNames ? '' : 'backupType',
        defaultOrMaker: BackupType.Bip39, enumValues: BackupType.values)
    ..aOB(11, _omitFieldNames ? '' : 'entropyCheck')
    ..aE<BackupMethod>(12, _omitFieldNames ? '' : 'backupMethod',
        defaultOrMaker: BackupMethod.Display, enumValues: BackupMethod.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResetDevice clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResetDevice copyWith(void Function(ResetDevice) updates) =>
      super.copyWith((message) => updates(message as ResetDevice))
          as ResetDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResetDevice create() => ResetDevice._();
  @$core.override
  ResetDevice createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResetDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResetDevice>(create);
  static ResetDevice? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get strength => $_getI(0, 256);
  @$pb.TagNumber(2)
  set strength($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(2)
  $core.bool hasStrength() => $_has(0);
  @$pb.TagNumber(2)
  void clearStrength() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get passphraseProtection => $_getBF(1);
  @$pb.TagNumber(3)
  set passphraseProtection($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(3)
  $core.bool hasPassphraseProtection() => $_has(1);
  @$pb.TagNumber(3)
  void clearPassphraseProtection() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get pinProtection => $_getBF(2);
  @$pb.TagNumber(4)
  set pinProtection($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(4)
  $core.bool hasPinProtection() => $_has(2);
  @$pb.TagNumber(4)
  void clearPinProtection() => $_clearField(4);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.String get language => $_getSZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set language($core.String value) => $_setString(3, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasLanguage() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearLanguage() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get label => $_getSZ(4);
  @$pb.TagNumber(6)
  set label($core.String value) => $_setString(4, value);
  @$pb.TagNumber(6)
  $core.bool hasLabel() => $_has(4);
  @$pb.TagNumber(6)
  void clearLabel() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get u2fCounter => $_getIZ(5);
  @$pb.TagNumber(7)
  set u2fCounter($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(7)
  $core.bool hasU2fCounter() => $_has(5);
  @$pb.TagNumber(7)
  void clearU2fCounter() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get skipBackup => $_getBF(6);
  @$pb.TagNumber(8)
  set skipBackup($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(8)
  $core.bool hasSkipBackup() => $_has(6);
  @$pb.TagNumber(8)
  void clearSkipBackup() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get noBackup => $_getBF(7);
  @$pb.TagNumber(9)
  set noBackup($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(9)
  $core.bool hasNoBackup() => $_has(7);
  @$pb.TagNumber(9)
  void clearNoBackup() => $_clearField(9);

  @$pb.TagNumber(10)
  BackupType get backupType => $_getN(8);
  @$pb.TagNumber(10)
  set backupType(BackupType value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasBackupType() => $_has(8);
  @$pb.TagNumber(10)
  void clearBackupType() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get entropyCheck => $_getBF(9);
  @$pb.TagNumber(11)
  set entropyCheck($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(11)
  $core.bool hasEntropyCheck() => $_has(9);
  @$pb.TagNumber(11)
  void clearEntropyCheck() => $_clearField(11);

  @$pb.TagNumber(12)
  BackupMethod get backupMethod => $_getN(10);
  @$pb.TagNumber(12)
  set backupMethod(BackupMethod value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasBackupMethod() => $_has(10);
  @$pb.TagNumber(12)
  void clearBackupMethod() => $_clearField(12);
}

class BackupDevice_Slip39Group extends $pb.GeneratedMessage {
  factory BackupDevice_Slip39Group({
    $core.int? memberThreshold,
    $core.int? memberCount,
  }) {
    final result = create();
    if (memberThreshold != null) result.memberThreshold = memberThreshold;
    if (memberCount != null) result.memberCount = memberCount;
    return result;
  }

  BackupDevice_Slip39Group._();

  factory BackupDevice_Slip39Group.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BackupDevice_Slip39Group.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BackupDevice.Slip39Group',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'memberThreshold',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'memberCount',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupDevice_Slip39Group clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupDevice_Slip39Group copyWith(
          void Function(BackupDevice_Slip39Group) updates) =>
      super.copyWith((message) => updates(message as BackupDevice_Slip39Group))
          as BackupDevice_Slip39Group;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackupDevice_Slip39Group create() => BackupDevice_Slip39Group._();
  @$core.override
  BackupDevice_Slip39Group createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BackupDevice_Slip39Group getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BackupDevice_Slip39Group>(create);
  static BackupDevice_Slip39Group? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get memberThreshold => $_getIZ(0);
  @$pb.TagNumber(1)
  set memberThreshold($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMemberThreshold() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemberThreshold() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get memberCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set memberCount($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMemberCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemberCount() => $_clearField(2);
}

/// *
///  Request: Perform backup of the device seed if not backed up using ResetDevice
///  @start
///  @next Success
class BackupDevice extends $pb.GeneratedMessage {
  factory BackupDevice({
    $core.int? groupThreshold,
    $core.Iterable<BackupDevice_Slip39Group>? groups,
    BackupMethod? backupMethod,
  }) {
    final result = create();
    if (groupThreshold != null) result.groupThreshold = groupThreshold;
    if (groups != null) result.groups.addAll(groups);
    if (backupMethod != null) result.backupMethod = backupMethod;
    return result;
  }

  BackupDevice._();

  factory BackupDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BackupDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BackupDevice',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'groupThreshold',
        fieldType: $pb.PbFieldType.OU3)
    ..pPM<BackupDevice_Slip39Group>(2, _omitFieldNames ? '' : 'groups',
        subBuilder: BackupDevice_Slip39Group.create)
    ..aE<BackupMethod>(3, _omitFieldNames ? '' : 'backupMethod',
        defaultOrMaker: BackupMethod.Display, enumValues: BackupMethod.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupDevice clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackupDevice copyWith(void Function(BackupDevice) updates) =>
      super.copyWith((message) => updates(message as BackupDevice))
          as BackupDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackupDevice create() => BackupDevice._();
  @$core.override
  BackupDevice createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BackupDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BackupDevice>(create);
  static BackupDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get groupThreshold => $_getIZ(0);
  @$pb.TagNumber(1)
  set groupThreshold($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGroupThreshold() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupThreshold() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<BackupDevice_Slip39Group> get groups => $_getList(1);

  @$pb.TagNumber(3)
  BackupMethod get backupMethod => $_getN(2);
  @$pb.TagNumber(3)
  set backupMethod(BackupMethod value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasBackupMethod() => $_has(2);
  @$pb.TagNumber(3)
  void clearBackupMethod() => $_clearField(3);
}

/// *
///  Response: Ask for additional entropy from host computer
///  @next EntropyAck
class EntropyRequest extends $pb.GeneratedMessage {
  factory EntropyRequest({
    $core.List<$core.int>? entropyCommitment,
    $core.List<$core.int>? prevEntropy,
  }) {
    final result = create();
    if (entropyCommitment != null) result.entropyCommitment = entropyCommitment;
    if (prevEntropy != null) result.prevEntropy = prevEntropy;
    return result;
  }

  EntropyRequest._();

  factory EntropyRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EntropyRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EntropyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'entropyCommitment', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'prevEntropy', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntropyRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntropyRequest copyWith(void Function(EntropyRequest) updates) =>
      super.copyWith((message) => updates(message as EntropyRequest))
          as EntropyRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntropyRequest create() => EntropyRequest._();
  @$core.override
  EntropyRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EntropyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EntropyRequest>(create);
  static EntropyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get entropyCommitment => $_getN(0);
  @$pb.TagNumber(1)
  set entropyCommitment($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEntropyCommitment() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntropyCommitment() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get prevEntropy => $_getN(1);
  @$pb.TagNumber(2)
  set prevEntropy($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPrevEntropy() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrevEntropy() => $_clearField(2);
}

/// *
///  Request: Provide additional entropy for seed generation function
///  @next Success
///  @next EntropyCheckReady
class EntropyAck extends $pb.GeneratedMessage {
  factory EntropyAck({
    $core.List<$core.int>? entropy,
  }) {
    final result = create();
    if (entropy != null) result.entropy = entropy;
    return result;
  }

  EntropyAck._();

  factory EntropyAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EntropyAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EntropyAck',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'entropy', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntropyAck clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntropyAck copyWith(void Function(EntropyAck) updates) =>
      super.copyWith((message) => updates(message as EntropyAck)) as EntropyAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntropyAck create() => EntropyAck._();
  @$core.override
  EntropyAck createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EntropyAck getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EntropyAck>(create);
  static EntropyAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get entropy => $_getN(0);
  @$pb.TagNumber(1)
  set entropy($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEntropy() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntropy() => $_clearField(1);
}

/// *
///  Response: Trezor is ready for the next phase of the entropy check protocol.
///  @next EntropyCheckContinue
///  @next GetPublicKey
class EntropyCheckReady extends $pb.GeneratedMessage {
  factory EntropyCheckReady() => create();

  EntropyCheckReady._();

  factory EntropyCheckReady.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EntropyCheckReady.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EntropyCheckReady',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntropyCheckReady clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntropyCheckReady copyWith(void Function(EntropyCheckReady) updates) =>
      super.copyWith((message) => updates(message as EntropyCheckReady))
          as EntropyCheckReady;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntropyCheckReady create() => EntropyCheckReady._();
  @$core.override
  EntropyCheckReady createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EntropyCheckReady getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EntropyCheckReady>(create);
  static EntropyCheckReady? _defaultInstance;
}

/// *
///  Request: Proceed with the next phase of the entropy check protocol, asking Trezor to either reveal its internal
///  entropy or to finish and store the seed.
///  @next Success
///  @next EntropyRequest
class EntropyCheckContinue extends $pb.GeneratedMessage {
  factory EntropyCheckContinue({
    $core.bool? finish,
  }) {
    final result = create();
    if (finish != null) result.finish = finish;
    return result;
  }

  EntropyCheckContinue._();

  factory EntropyCheckContinue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EntropyCheckContinue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EntropyCheckContinue',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'finish')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntropyCheckContinue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntropyCheckContinue copyWith(void Function(EntropyCheckContinue) updates) =>
      super.copyWith((message) => updates(message as EntropyCheckContinue))
          as EntropyCheckContinue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntropyCheckContinue create() => EntropyCheckContinue._();
  @$core.override
  EntropyCheckContinue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EntropyCheckContinue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EntropyCheckContinue>(create);
  static EntropyCheckContinue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get finish => $_getBF(0);
  @$pb.TagNumber(1)
  set finish($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFinish() => $_has(0);
  @$pb.TagNumber(1)
  void clearFinish() => $_clearField(1);
}

/// *
///  Request: Start recovery workflow asking user for specific words of mnemonic
///  Used to recovery device safely even on untrusted computer.
///  @start
///  @next WordRequest
class RecoveryDevice extends $pb.GeneratedMessage {
  factory RecoveryDevice({
    $core.int? wordCount,
    $core.bool? passphraseProtection,
    $core.bool? pinProtection,
    @$core.Deprecated('This field is deprecated.') $core.String? language,
    $core.String? label,
    $core.bool? enforceWordlist,
    RecoveryDevice_RecoveryDeviceInputMethod? inputMethod,
    $core.int? u2fCounter,
    RecoveryType? type,
    BackupMethod? backupMethod,
  }) {
    final result = create();
    if (wordCount != null) result.wordCount = wordCount;
    if (passphraseProtection != null)
      result.passphraseProtection = passphraseProtection;
    if (pinProtection != null) result.pinProtection = pinProtection;
    if (language != null) result.language = language;
    if (label != null) result.label = label;
    if (enforceWordlist != null) result.enforceWordlist = enforceWordlist;
    if (inputMethod != null) result.inputMethod = inputMethod;
    if (u2fCounter != null) result.u2fCounter = u2fCounter;
    if (type != null) result.type = type;
    if (backupMethod != null) result.backupMethod = backupMethod;
    return result;
  }

  RecoveryDevice._();

  factory RecoveryDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecoveryDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecoveryDevice',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'wordCount', fieldType: $pb.PbFieldType.OU3)
    ..aOB(2, _omitFieldNames ? '' : 'passphraseProtection')
    ..aOB(3, _omitFieldNames ? '' : 'pinProtection')
    ..aOS(4, _omitFieldNames ? '' : 'language')
    ..aOS(5, _omitFieldNames ? '' : 'label')
    ..aOB(6, _omitFieldNames ? '' : 'enforceWordlist')
    ..aE<RecoveryDevice_RecoveryDeviceInputMethod>(
        8, _omitFieldNames ? '' : 'inputMethod',
        enumValues: RecoveryDevice_RecoveryDeviceInputMethod.values)
    ..aI(9, _omitFieldNames ? '' : 'u2fCounter', fieldType: $pb.PbFieldType.OU3)
    ..aE<RecoveryType>(10, _omitFieldNames ? '' : 'type',
        defaultOrMaker: RecoveryType.NormalRecovery,
        enumValues: RecoveryType.values)
    ..aE<BackupMethod>(11, _omitFieldNames ? '' : 'backupMethod',
        enumValues: BackupMethod.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecoveryDevice clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecoveryDevice copyWith(void Function(RecoveryDevice) updates) =>
      super.copyWith((message) => updates(message as RecoveryDevice))
          as RecoveryDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecoveryDevice create() => RecoveryDevice._();
  @$core.override
  RecoveryDevice createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecoveryDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecoveryDevice>(create);
  static RecoveryDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get wordCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set wordCount($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWordCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearWordCount() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get passphraseProtection => $_getBF(1);
  @$pb.TagNumber(2)
  set passphraseProtection($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPassphraseProtection() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassphraseProtection() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get pinProtection => $_getBF(2);
  @$pb.TagNumber(3)
  set pinProtection($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPinProtection() => $_has(2);
  @$pb.TagNumber(3)
  void clearPinProtection() => $_clearField(3);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.String get language => $_getSZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set language($core.String value) => $_setString(3, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasLanguage() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearLanguage() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get label => $_getSZ(4);
  @$pb.TagNumber(5)
  set label($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLabel() => $_has(4);
  @$pb.TagNumber(5)
  void clearLabel() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get enforceWordlist => $_getBF(5);
  @$pb.TagNumber(6)
  set enforceWordlist($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasEnforceWordlist() => $_has(5);
  @$pb.TagNumber(6)
  void clearEnforceWordlist() => $_clearField(6);

  @$pb.TagNumber(8)
  RecoveryDevice_RecoveryDeviceInputMethod get inputMethod => $_getN(6);
  @$pb.TagNumber(8)
  set inputMethod(RecoveryDevice_RecoveryDeviceInputMethod value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasInputMethod() => $_has(6);
  @$pb.TagNumber(8)
  void clearInputMethod() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get u2fCounter => $_getIZ(7);
  @$pb.TagNumber(9)
  set u2fCounter($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(9)
  $core.bool hasU2fCounter() => $_has(7);
  @$pb.TagNumber(9)
  void clearU2fCounter() => $_clearField(9);

  @$pb.TagNumber(10)
  RecoveryType get type => $_getN(8);
  @$pb.TagNumber(10)
  set type(RecoveryType value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasType() => $_has(8);
  @$pb.TagNumber(10)
  void clearType() => $_clearField(10);

  @$pb.TagNumber(11)
  BackupMethod get backupMethod => $_getN(9);
  @$pb.TagNumber(11)
  set backupMethod(BackupMethod value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasBackupMethod() => $_has(9);
  @$pb.TagNumber(11)
  void clearBackupMethod() => $_clearField(11);
}

/// *
///  Response: Device is waiting for user to enter word of the mnemonic
///  Its position is shown only on device's internal display.
///  @next WordAck
class WordRequest extends $pb.GeneratedMessage {
  factory WordRequest({
    WordRequest_WordRequestType? type,
  }) {
    final result = create();
    if (type != null) result.type = type;
    return result;
  }

  WordRequest._();

  factory WordRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WordRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WordRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aE<WordRequest_WordRequestType>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE,
        enumValues: WordRequest_WordRequestType.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WordRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WordRequest copyWith(void Function(WordRequest) updates) =>
      super.copyWith((message) => updates(message as WordRequest))
          as WordRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WordRequest create() => WordRequest._();
  @$core.override
  WordRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WordRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WordRequest>(create);
  static WordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  WordRequest_WordRequestType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(WordRequest_WordRequestType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

/// *
///  Request: Computer replies with word from the mnemonic
///  @next WordRequest
///  @next Success
///  @next Failure
class WordAck extends $pb.GeneratedMessage {
  factory WordAck({
    $core.String? word,
  }) {
    final result = create();
    if (word != null) result.word = word;
    return result;
  }

  WordAck._();

  factory WordAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WordAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WordAck',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'word');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WordAck clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WordAck copyWith(void Function(WordAck) updates) =>
      super.copyWith((message) => updates(message as WordAck)) as WordAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WordAck create() => WordAck._();
  @$core.override
  WordAck createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WordAck getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WordAck>(create);
  static WordAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get word => $_getSZ(0);
  @$pb.TagNumber(1)
  set word($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWord() => $_has(0);
  @$pb.TagNumber(1)
  void clearWord() => $_clearField(1);
}

/// *
///  Request: Set U2F counter
///  @start
///  @next Success
class SetU2FCounter extends $pb.GeneratedMessage {
  factory SetU2FCounter({
    $core.int? u2fCounter,
  }) {
    final result = create();
    if (u2fCounter != null) result.u2fCounter = u2fCounter;
    return result;
  }

  SetU2FCounter._();

  factory SetU2FCounter.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetU2FCounter.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetU2FCounter',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'u2fCounter',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetU2FCounter clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetU2FCounter copyWith(void Function(SetU2FCounter) updates) =>
      super.copyWith((message) => updates(message as SetU2FCounter))
          as SetU2FCounter;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetU2FCounter create() => SetU2FCounter._();
  @$core.override
  SetU2FCounter createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetU2FCounter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetU2FCounter>(create);
  static SetU2FCounter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get u2fCounter => $_getIZ(0);
  @$pb.TagNumber(1)
  set u2fCounter($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasU2fCounter() => $_has(0);
  @$pb.TagNumber(1)
  void clearU2fCounter() => $_clearField(1);
}

/// *
///  Request: Set U2F counter
///  @start
///  @next NextU2FCounter
class GetNextU2FCounter extends $pb.GeneratedMessage {
  factory GetNextU2FCounter() => create();

  GetNextU2FCounter._();

  factory GetNextU2FCounter.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetNextU2FCounter.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetNextU2FCounter',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNextU2FCounter clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNextU2FCounter copyWith(void Function(GetNextU2FCounter) updates) =>
      super.copyWith((message) => updates(message as GetNextU2FCounter))
          as GetNextU2FCounter;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNextU2FCounter create() => GetNextU2FCounter._();
  @$core.override
  GetNextU2FCounter createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetNextU2FCounter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetNextU2FCounter>(create);
  static GetNextU2FCounter? _defaultInstance;
}

/// *
///  Request: Set U2F counter
///  @end
class NextU2FCounter extends $pb.GeneratedMessage {
  factory NextU2FCounter({
    $core.int? u2fCounter,
  }) {
    final result = create();
    if (u2fCounter != null) result.u2fCounter = u2fCounter;
    return result;
  }

  NextU2FCounter._();

  factory NextU2FCounter.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NextU2FCounter.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NextU2FCounter',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'u2fCounter',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NextU2FCounter clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NextU2FCounter copyWith(void Function(NextU2FCounter) updates) =>
      super.copyWith((message) => updates(message as NextU2FCounter))
          as NextU2FCounter;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NextU2FCounter create() => NextU2FCounter._();
  @$core.override
  NextU2FCounter createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NextU2FCounter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NextU2FCounter>(create);
  static NextU2FCounter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get u2fCounter => $_getIZ(0);
  @$pb.TagNumber(1)
  set u2fCounter($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasU2fCounter() => $_has(0);
  @$pb.TagNumber(1)
  void clearU2fCounter() => $_clearField(1);
}

/// *
///  Request: Ask device to prepare for a preauthorized operation.
///  @start
///  @next PreauthorizedRequest
///  @next Failure
class DoPreauthorized extends $pb.GeneratedMessage {
  factory DoPreauthorized() => create();

  DoPreauthorized._();

  factory DoPreauthorized.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoPreauthorized.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoPreauthorized',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoPreauthorized clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoPreauthorized copyWith(void Function(DoPreauthorized) updates) =>
      super.copyWith((message) => updates(message as DoPreauthorized))
          as DoPreauthorized;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoPreauthorized create() => DoPreauthorized._();
  @$core.override
  DoPreauthorized createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoPreauthorized getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoPreauthorized>(create);
  static DoPreauthorized? _defaultInstance;
}

/// *
///  Request: Device awaits a preauthorized operation.
///  @start
///  @next SignTx
///  @next GetOwnershipProof
class PreauthorizedRequest extends $pb.GeneratedMessage {
  factory PreauthorizedRequest() => create();

  PreauthorizedRequest._();

  factory PreauthorizedRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PreauthorizedRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PreauthorizedRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreauthorizedRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PreauthorizedRequest copyWith(void Function(PreauthorizedRequest) updates) =>
      super.copyWith((message) => updates(message as PreauthorizedRequest))
          as PreauthorizedRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreauthorizedRequest create() => PreauthorizedRequest._();
  @$core.override
  PreauthorizedRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PreauthorizedRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PreauthorizedRequest>(create);
  static PreauthorizedRequest? _defaultInstance;
}

/// *
///  Request: Cancel any outstanding authorization in the current session.
///  @start
///  @next Success
///  @next Failure
class CancelAuthorization extends $pb.GeneratedMessage {
  factory CancelAuthorization() => create();

  CancelAuthorization._();

  factory CancelAuthorization.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CancelAuthorization.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CancelAuthorization',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CancelAuthorization clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CancelAuthorization copyWith(void Function(CancelAuthorization) updates) =>
      super.copyWith((message) => updates(message as CancelAuthorization))
          as CancelAuthorization;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelAuthorization create() => CancelAuthorization._();
  @$core.override
  CancelAuthorization createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CancelAuthorization getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CancelAuthorization>(create);
  static CancelAuthorization? _defaultInstance;
}

/// *
///  Request: Reboot firmware to bootloader
///  @start
///  @next Success
///  @next DataChunkRequest
class RebootToBootloader extends $pb.GeneratedMessage {
  factory RebootToBootloader({
    RebootToBootloader_BootCommand? bootCommand,
    $core.List<$core.int>? firmwareHeader,
  }) {
    final result = create();
    if (bootCommand != null) result.bootCommand = bootCommand;
    if (firmwareHeader != null) result.firmwareHeader = firmwareHeader;
    return result;
  }

  RebootToBootloader._();

  factory RebootToBootloader.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RebootToBootloader.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RebootToBootloader',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aE<RebootToBootloader_BootCommand>(
        1, _omitFieldNames ? '' : 'bootCommand',
        defaultOrMaker: RebootToBootloader_BootCommand.STOP_AND_WAIT,
        enumValues: RebootToBootloader_BootCommand.values)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'firmwareHeader', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RebootToBootloader clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RebootToBootloader copyWith(void Function(RebootToBootloader) updates) =>
      super.copyWith((message) => updates(message as RebootToBootloader))
          as RebootToBootloader;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RebootToBootloader create() => RebootToBootloader._();
  @$core.override
  RebootToBootloader createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RebootToBootloader getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RebootToBootloader>(create);
  static RebootToBootloader? _defaultInstance;

  /// Action to be performed after rebooting to bootloader
  @$pb.TagNumber(1)
  RebootToBootloader_BootCommand get bootCommand => $_getN(0);
  @$pb.TagNumber(1)
  set bootCommand(RebootToBootloader_BootCommand value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBootCommand() => $_has(0);
  @$pb.TagNumber(1)
  void clearBootCommand() => $_clearField(1);

  /// Firmware header to be flashed after rebooting to bootloader
  @$pb.TagNumber(2)
  $core.List<$core.int> get firmwareHeader => $_getN(1);
  @$pb.TagNumber(2)
  set firmwareHeader($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFirmwareHeader() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirmwareHeader() => $_clearField(2);
}

/// *
///  Request: Ask device to generate a random nonce and store it in the session's cache
///  @start
///  @next Nonce
class GetNonce extends $pb.GeneratedMessage {
  factory GetNonce() => create();

  GetNonce._();

  factory GetNonce.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetNonce.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetNonce',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNonce clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNonce copyWith(void Function(GetNonce) updates) =>
      super.copyWith((message) => updates(message as GetNonce)) as GetNonce;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNonce create() => GetNonce._();
  @$core.override
  GetNonce createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetNonce getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNonce>(create);
  static GetNonce? _defaultInstance;
}

/// *
///  Response: Contains a random nonce
///  @end
class Nonce extends $pb.GeneratedMessage {
  factory Nonce({
    $core.List<$core.int>? nonce,
  }) {
    final result = create();
    if (nonce != null) result.nonce = nonce;
    return result;
  }

  Nonce._();

  factory Nonce.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Nonce.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Nonce',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Nonce clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Nonce copyWith(void Function(Nonce) updates) =>
      super.copyWith((message) => updates(message as Nonce)) as Nonce;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Nonce create() => Nonce._();
  @$core.override
  Nonce createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Nonce getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Nonce>(create);
  static Nonce? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get nonce => $_getN(0);
  @$pb.TagNumber(1)
  set nonce($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => $_clearField(1);
}

/// *
///  Request: Ask device to unlock a subtree of the keychain.
///  @start
///  @next UnlockedPathRequest
///  @next Failure
class UnlockPath extends $pb.GeneratedMessage {
  factory UnlockPath({
    $core.Iterable<$core.int>? addressN,
    $core.List<$core.int>? mac,
  }) {
    final result = create();
    if (addressN != null) result.addressN.addAll(addressN);
    if (mac != null) result.mac = mac;
    return result;
  }

  UnlockPath._();

  factory UnlockPath.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UnlockPath.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UnlockPath',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'mac', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UnlockPath clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UnlockPath copyWith(void Function(UnlockPath) updates) =>
      super.copyWith((message) => updates(message as UnlockPath)) as UnlockPath;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnlockPath create() => UnlockPath._();
  @$core.override
  UnlockPath createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UnlockPath getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UnlockPath>(create);
  static UnlockPath? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get addressN => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get mac => $_getN(1);
  @$pb.TagNumber(2)
  set mac($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMac() => $_has(1);
  @$pb.TagNumber(2)
  void clearMac() => $_clearField(2);
}

/// *
///  Request: Device awaits an operation.
///  @start
///  @next SignTx
///  @next GetPublicKey
///  @next GetAddress
class UnlockedPathRequest extends $pb.GeneratedMessage {
  factory UnlockedPathRequest({
    $core.List<$core.int>? mac,
  }) {
    final result = create();
    if (mac != null) result.mac = mac;
    return result;
  }

  UnlockedPathRequest._();

  factory UnlockedPathRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UnlockedPathRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UnlockedPathRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'mac', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UnlockedPathRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UnlockedPathRequest copyWith(void Function(UnlockedPathRequest) updates) =>
      super.copyWith((message) => updates(message as UnlockedPathRequest))
          as UnlockedPathRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnlockedPathRequest create() => UnlockedPathRequest._();
  @$core.override
  UnlockedPathRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UnlockedPathRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UnlockedPathRequest>(create);
  static UnlockedPathRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get mac => $_getN(0);
  @$pb.TagNumber(1)
  set mac($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMac() => $_has(0);
  @$pb.TagNumber(1)
  void clearMac() => $_clearField(1);
}

/// *
///  Request: Show tutorial screens on the device
///  @start
///  @next Success
class ShowDeviceTutorial extends $pb.GeneratedMessage {
  factory ShowDeviceTutorial() => create();

  ShowDeviceTutorial._();

  factory ShowDeviceTutorial.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ShowDeviceTutorial.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ShowDeviceTutorial',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShowDeviceTutorial clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShowDeviceTutorial copyWith(void Function(ShowDeviceTutorial) updates) =>
      super.copyWith((message) => updates(message as ShowDeviceTutorial))
          as ShowDeviceTutorial;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShowDeviceTutorial create() => ShowDeviceTutorial._();
  @$core.override
  ShowDeviceTutorial createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ShowDeviceTutorial getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShowDeviceTutorial>(create);
  static ShowDeviceTutorial? _defaultInstance;
}

/// *
///  Request: Unlocks bootloader, !irreversible!
///  @start
///  @next Success
///  @next Failure
class UnlockBootloader extends $pb.GeneratedMessage {
  factory UnlockBootloader() => create();

  UnlockBootloader._();

  factory UnlockBootloader.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UnlockBootloader.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UnlockBootloader',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UnlockBootloader clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UnlockBootloader copyWith(void Function(UnlockBootloader) updates) =>
      super.copyWith((message) => updates(message as UnlockBootloader))
          as UnlockBootloader;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnlockBootloader create() => UnlockBootloader._();
  @$core.override
  UnlockBootloader createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UnlockBootloader getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UnlockBootloader>(create);
  static UnlockBootloader? _defaultInstance;
}

/// *
///  Request: Set device brightness
///  @start
///  @next Success
class SetBrightness extends $pb.GeneratedMessage {
  factory SetBrightness({
    $core.int? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  SetBrightness._();

  factory SetBrightness.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetBrightness.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetBrightness',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'value', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetBrightness clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetBrightness copyWith(void Function(SetBrightness) updates) =>
      super.copyWith((message) => updates(message as SetBrightness))
          as SetBrightness;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetBrightness create() => SetBrightness._();
  @$core.override
  SetBrightness createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetBrightness getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetBrightness>(create);
  static SetBrightness? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// *
///  Request: Get unit serial number
///  @start
///  @next SerialNumber
class GetSerialNumber extends $pb.GeneratedMessage {
  factory GetSerialNumber() => create();

  GetSerialNumber._();

  factory GetSerialNumber.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetSerialNumber.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetSerialNumber',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSerialNumber clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSerialNumber copyWith(void Function(GetSerialNumber) updates) =>
      super.copyWith((message) => updates(message as GetSerialNumber))
          as GetSerialNumber;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSerialNumber create() => GetSerialNumber._();
  @$core.override
  GetSerialNumber createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetSerialNumber getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSerialNumber>(create);
  static GetSerialNumber? _defaultInstance;
}

/// *
///  Response: contains unit serial number
///  @end
class SerialNumber extends $pb.GeneratedMessage {
  factory SerialNumber({
    $core.String? serialNumber,
  }) {
    final result = create();
    if (serialNumber != null) result.serialNumber = serialNumber;
    return result;
  }

  SerialNumber._();

  factory SerialNumber.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SerialNumber.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SerialNumber',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.management'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'serialNumber');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SerialNumber clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SerialNumber copyWith(void Function(SerialNumber) updates) =>
      super.copyWith((message) => updates(message as SerialNumber))
          as SerialNumber;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SerialNumber create() => SerialNumber._();
  @$core.override
  SerialNumber createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SerialNumber getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SerialNumber>(create);
  static SerialNumber? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serialNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set serialNumber($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSerialNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearSerialNumber() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
