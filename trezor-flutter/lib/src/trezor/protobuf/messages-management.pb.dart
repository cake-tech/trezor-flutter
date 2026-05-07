///
//  Generated code. Do not modify.
//  source: messages-management.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'messages-management.pbenum.dart';

export 'messages-management.pbenum.dart';

class Initialize extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Initialize', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', $pb.PbFieldType.OY)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SkipPassphrase')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deriveCardano')
    ..hasRequiredFields = false
  ;

  Initialize._() : super();
  factory Initialize({
    $core.List<$core.int>? sessionId,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? skipPassphrase,
    $core.bool? deriveCardano,
  }) {
    final _result = create();
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (skipPassphrase != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.skipPassphrase = skipPassphrase;
    }
    if (deriveCardano != null) {
      _result.deriveCardano = deriveCardano;
    }
    return _result;
  }
  factory Initialize.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Initialize.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Initialize clone() => Initialize()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Initialize copyWith(void Function(Initialize) updates) => super.copyWith((message) => updates(message as Initialize)) as Initialize; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Initialize create() => Initialize._();
  Initialize createEmptyInstance() => create();
  static $pb.PbList<Initialize> createRepeated() => $pb.PbList<Initialize>();
  @$core.pragma('dart2js:noInline')
  static Initialize getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Initialize>(create);
  static Initialize? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get sessionId => $_getN(0);
  @$pb.TagNumber(1)
  set sessionId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool get skipPassphrase => $_getBF(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set skipPassphrase($core.bool v) { $_setBool(1, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasSkipPassphrase() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearSkipPassphrase() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get deriveCardano => $_getBF(2);
  @$pb.TagNumber(3)
  set deriveCardano($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeriveCardano() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeriveCardano() => clearField(3);
}

class GetFeatures extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFeatures', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetFeatures._() : super();
  factory GetFeatures() => create();
  factory GetFeatures.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFeatures.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFeatures clone() => GetFeatures()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFeatures copyWith(void Function(GetFeatures) updates) => super.copyWith((message) => updates(message as GetFeatures)) as GetFeatures; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFeatures create() => GetFeatures._();
  GetFeatures createEmptyInstance() => create();
  static $pb.PbList<GetFeatures> createRepeated() => $pb.PbList<GetFeatures>();
  @$core.pragma('dart2js:noInline')
  static GetFeatures getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFeatures>(create);
  static GetFeatures? _defaultInstance;
}

class Features extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Features', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vendor')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'majorVersion', $pb.PbFieldType.QU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minorVersion', $pb.PbFieldType.QU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'patchVersion', $pb.PbFieldType.QU3)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bootloaderMode')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pinProtection')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passphraseProtection')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'language')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'initialized')
    ..a<$core.List<$core.int>>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'revision', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bootloaderHash', $pb.PbFieldType.OY)
    ..aOB(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imported')
    ..aOB(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unlocked')
    ..aOB(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PassphraseCached')
    ..aOB(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firmwarePresent')
    ..e<Features_BackupAvailability>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backupAvailability', $pb.PbFieldType.OE, defaultOrMaker: Features_BackupAvailability.NotAvailable, valueOf: Features_BackupAvailability.valueOf, enumValues: Features_BackupAvailability.values)
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flags', $pb.PbFieldType.OU3)
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'model')
    ..a<$core.int>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fwMajor', $pb.PbFieldType.OU3)
    ..a<$core.int>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fwMinor', $pb.PbFieldType.OU3)
    ..a<$core.int>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fwPatch', $pb.PbFieldType.OU3)
    ..aOS(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fwVendor')
    ..aOB(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unfinishedBackup')
    ..aOB(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noBackup')
    ..e<Features_RecoveryStatus>(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recoveryStatus', $pb.PbFieldType.OE, defaultOrMaker: Features_RecoveryStatus.Nothing, valueOf: Features_RecoveryStatus.valueOf, enumValues: Features_RecoveryStatus.values)
    ..pc<Features_Capability>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'capabilities', $pb.PbFieldType.PE, valueOf: Features_Capability.valueOf, enumValues: Features_Capability.values, defaultEnumValue: Features_Capability.Capability_Bitcoin)
    ..e<BackupType>(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backupType', $pb.PbFieldType.OE, defaultOrMaker: BackupType.Bip39, valueOf: BackupType.valueOf, enumValues: BackupType.values)
    ..aOB(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sdCardPresent')
    ..aOB(33, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sdProtection')
    ..aOB(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wipeCodeProtection')
    ..a<$core.List<$core.int>>(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', $pb.PbFieldType.OY)
    ..aOB(36, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passphraseAlwaysOnDevice')
    ..e<SafetyCheckLevel>(37, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'safetyChecks', $pb.PbFieldType.OE, defaultOrMaker: SafetyCheckLevel.Strict, valueOf: SafetyCheckLevel.valueOf, enumValues: SafetyCheckLevel.values)
    ..a<$core.int>(38, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autoLockDelayMs', $pb.PbFieldType.OU3)
    ..e<DisplayRotation>(39, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'displayRotation', $pb.PbFieldType.OE, defaultOrMaker: DisplayRotation.North, valueOf: DisplayRotation.valueOf, enumValues: DisplayRotation.values)
    ..aOB(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'experimentalFeatures')
    ..aOB(41, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'busy')
    ..e<HomescreenFormat>(42, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'homescreenFormat', $pb.PbFieldType.OE, defaultOrMaker: HomescreenFormat.Toif, valueOf: HomescreenFormat.valueOf, enumValues: HomescreenFormat.values)
    ..aOB(43, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidePassphraseFromHost')
    ..aOS(44, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'internalModel')
    ..a<$core.int>(45, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unitColor', $pb.PbFieldType.OU3)
    ..aOB(46, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unitBtconly')
    ..a<$core.int>(47, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'homescreenWidth', $pb.PbFieldType.OU3)
    ..a<$core.int>(48, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'homescreenHeight', $pb.PbFieldType.OU3)
    ..aOB(49, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bootloaderLocked')
    ..a<$core.bool>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'languageVersionMatches', $pb.PbFieldType.OB, defaultOrMaker: true)
    ..a<$core.int>(51, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unitPackaging', $pb.PbFieldType.OU3)
    ..aOB(52, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hapticFeedback')
    ..e<RecoveryType>(53, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recoveryType', $pb.PbFieldType.OE, defaultOrMaker: RecoveryType.NormalRecovery, valueOf: RecoveryType.valueOf, enumValues: RecoveryType.values)
    ..a<$core.int>(54, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optigaSec', $pb.PbFieldType.OU3)
    ..a<$core.int>(55, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'soc', $pb.PbFieldType.OU3)
    ..aOB(56, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firmwareCorrupted')
    ..a<$core.int>(57, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autoLockDelayBatteryMs', $pb.PbFieldType.OU3)
    ..aOB(58, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'led')
    ..aOB(59, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'usbConnected')
    ..aOB(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wirelessConnected')
    ..a<$core.int>(61, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buildVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(62, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fwBuild', $pb.PbFieldType.OU3)
  ;

  Features._() : super();
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
  @$core.Deprecated('This field is deprecated.')
    $core.bool? passphraseCached,
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
    final _result = create();
    if (vendor != null) {
      _result.vendor = vendor;
    }
    if (majorVersion != null) {
      _result.majorVersion = majorVersion;
    }
    if (minorVersion != null) {
      _result.minorVersion = minorVersion;
    }
    if (patchVersion != null) {
      _result.patchVersion = patchVersion;
    }
    if (bootloaderMode != null) {
      _result.bootloaderMode = bootloaderMode;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (pinProtection != null) {
      _result.pinProtection = pinProtection;
    }
    if (passphraseProtection != null) {
      _result.passphraseProtection = passphraseProtection;
    }
    if (language != null) {
      _result.language = language;
    }
    if (label != null) {
      _result.label = label;
    }
    if (initialized != null) {
      _result.initialized = initialized;
    }
    if (revision != null) {
      _result.revision = revision;
    }
    if (bootloaderHash != null) {
      _result.bootloaderHash = bootloaderHash;
    }
    if (imported != null) {
      _result.imported = imported;
    }
    if (unlocked != null) {
      _result.unlocked = unlocked;
    }
    if (passphraseCached != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.passphraseCached = passphraseCached;
    }
    if (firmwarePresent != null) {
      _result.firmwarePresent = firmwarePresent;
    }
    if (backupAvailability != null) {
      _result.backupAvailability = backupAvailability;
    }
    if (flags != null) {
      _result.flags = flags;
    }
    if (model != null) {
      _result.model = model;
    }
    if (fwMajor != null) {
      _result.fwMajor = fwMajor;
    }
    if (fwMinor != null) {
      _result.fwMinor = fwMinor;
    }
    if (fwPatch != null) {
      _result.fwPatch = fwPatch;
    }
    if (fwVendor != null) {
      _result.fwVendor = fwVendor;
    }
    if (unfinishedBackup != null) {
      _result.unfinishedBackup = unfinishedBackup;
    }
    if (noBackup != null) {
      _result.noBackup = noBackup;
    }
    if (recoveryStatus != null) {
      _result.recoveryStatus = recoveryStatus;
    }
    if (capabilities != null) {
      _result.capabilities.addAll(capabilities);
    }
    if (backupType != null) {
      _result.backupType = backupType;
    }
    if (sdCardPresent != null) {
      _result.sdCardPresent = sdCardPresent;
    }
    if (sdProtection != null) {
      _result.sdProtection = sdProtection;
    }
    if (wipeCodeProtection != null) {
      _result.wipeCodeProtection = wipeCodeProtection;
    }
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (passphraseAlwaysOnDevice != null) {
      _result.passphraseAlwaysOnDevice = passphraseAlwaysOnDevice;
    }
    if (safetyChecks != null) {
      _result.safetyChecks = safetyChecks;
    }
    if (autoLockDelayMs != null) {
      _result.autoLockDelayMs = autoLockDelayMs;
    }
    if (displayRotation != null) {
      _result.displayRotation = displayRotation;
    }
    if (experimentalFeatures != null) {
      _result.experimentalFeatures = experimentalFeatures;
    }
    if (busy != null) {
      _result.busy = busy;
    }
    if (homescreenFormat != null) {
      _result.homescreenFormat = homescreenFormat;
    }
    if (hidePassphraseFromHost != null) {
      _result.hidePassphraseFromHost = hidePassphraseFromHost;
    }
    if (internalModel != null) {
      _result.internalModel = internalModel;
    }
    if (unitColor != null) {
      _result.unitColor = unitColor;
    }
    if (unitBtconly != null) {
      _result.unitBtconly = unitBtconly;
    }
    if (homescreenWidth != null) {
      _result.homescreenWidth = homescreenWidth;
    }
    if (homescreenHeight != null) {
      _result.homescreenHeight = homescreenHeight;
    }
    if (bootloaderLocked != null) {
      _result.bootloaderLocked = bootloaderLocked;
    }
    if (languageVersionMatches != null) {
      _result.languageVersionMatches = languageVersionMatches;
    }
    if (unitPackaging != null) {
      _result.unitPackaging = unitPackaging;
    }
    if (hapticFeedback != null) {
      _result.hapticFeedback = hapticFeedback;
    }
    if (recoveryType != null) {
      _result.recoveryType = recoveryType;
    }
    if (optigaSec != null) {
      _result.optigaSec = optigaSec;
    }
    if (soc != null) {
      _result.soc = soc;
    }
    if (firmwareCorrupted != null) {
      _result.firmwareCorrupted = firmwareCorrupted;
    }
    if (autoLockDelayBatteryMs != null) {
      _result.autoLockDelayBatteryMs = autoLockDelayBatteryMs;
    }
    if (led != null) {
      _result.led = led;
    }
    if (usbConnected != null) {
      _result.usbConnected = usbConnected;
    }
    if (wirelessConnected != null) {
      _result.wirelessConnected = wirelessConnected;
    }
    if (buildVersion != null) {
      _result.buildVersion = buildVersion;
    }
    if (fwBuild != null) {
      _result.fwBuild = fwBuild;
    }
    return _result;
  }
  factory Features.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Features.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Features clone() => Features()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Features copyWith(void Function(Features) updates) => super.copyWith((message) => updates(message as Features)) as Features; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Features create() => Features._();
  Features createEmptyInstance() => create();
  static $pb.PbList<Features> createRepeated() => $pb.PbList<Features>();
  @$core.pragma('dart2js:noInline')
  static Features getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Features>(create);
  static Features? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get vendor => $_getSZ(0);
  @$pb.TagNumber(1)
  set vendor($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVendor() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendor() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get majorVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set majorVersion($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMajorVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearMajorVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get minorVersion => $_getIZ(2);
  @$pb.TagNumber(3)
  set minorVersion($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMinorVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinorVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get patchVersion => $_getIZ(3);
  @$pb.TagNumber(4)
  set patchVersion($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPatchVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearPatchVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get bootloaderMode => $_getBF(4);
  @$pb.TagNumber(5)
  set bootloaderMode($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBootloaderMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBootloaderMode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get deviceId => $_getSZ(5);
  @$pb.TagNumber(6)
  set deviceId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDeviceId() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeviceId() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get pinProtection => $_getBF(6);
  @$pb.TagNumber(7)
  set pinProtection($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPinProtection() => $_has(6);
  @$pb.TagNumber(7)
  void clearPinProtection() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get passphraseProtection => $_getBF(7);
  @$pb.TagNumber(8)
  set passphraseProtection($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPassphraseProtection() => $_has(7);
  @$pb.TagNumber(8)
  void clearPassphraseProtection() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get language => $_getSZ(8);
  @$pb.TagNumber(9)
  set language($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLanguage() => $_has(8);
  @$pb.TagNumber(9)
  void clearLanguage() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get label => $_getSZ(9);
  @$pb.TagNumber(10)
  set label($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLabel() => $_has(9);
  @$pb.TagNumber(10)
  void clearLabel() => clearField(10);

  @$pb.TagNumber(12)
  $core.bool get initialized => $_getBF(10);
  @$pb.TagNumber(12)
  set initialized($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasInitialized() => $_has(10);
  @$pb.TagNumber(12)
  void clearInitialized() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.int> get revision => $_getN(11);
  @$pb.TagNumber(13)
  set revision($core.List<$core.int> v) { $_setBytes(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasRevision() => $_has(11);
  @$pb.TagNumber(13)
  void clearRevision() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.int> get bootloaderHash => $_getN(12);
  @$pb.TagNumber(14)
  set bootloaderHash($core.List<$core.int> v) { $_setBytes(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasBootloaderHash() => $_has(12);
  @$pb.TagNumber(14)
  void clearBootloaderHash() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get imported => $_getBF(13);
  @$pb.TagNumber(15)
  set imported($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasImported() => $_has(13);
  @$pb.TagNumber(15)
  void clearImported() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get unlocked => $_getBF(14);
  @$pb.TagNumber(16)
  set unlocked($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(16)
  $core.bool hasUnlocked() => $_has(14);
  @$pb.TagNumber(16)
  void clearUnlocked() => clearField(16);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(17)
  $core.bool get passphraseCached => $_getBF(15);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(17)
  set passphraseCached($core.bool v) { $_setBool(15, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(17)
  $core.bool hasPassphraseCached() => $_has(15);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(17)
  void clearPassphraseCached() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get firmwarePresent => $_getBF(16);
  @$pb.TagNumber(18)
  set firmwarePresent($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(18)
  $core.bool hasFirmwarePresent() => $_has(16);
  @$pb.TagNumber(18)
  void clearFirmwarePresent() => clearField(18);

  @$pb.TagNumber(19)
  Features_BackupAvailability get backupAvailability => $_getN(17);
  @$pb.TagNumber(19)
  set backupAvailability(Features_BackupAvailability v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasBackupAvailability() => $_has(17);
  @$pb.TagNumber(19)
  void clearBackupAvailability() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get flags => $_getIZ(18);
  @$pb.TagNumber(20)
  set flags($core.int v) { $_setUnsignedInt32(18, v); }
  @$pb.TagNumber(20)
  $core.bool hasFlags() => $_has(18);
  @$pb.TagNumber(20)
  void clearFlags() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get model => $_getSZ(19);
  @$pb.TagNumber(21)
  set model($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(21)
  $core.bool hasModel() => $_has(19);
  @$pb.TagNumber(21)
  void clearModel() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get fwMajor => $_getIZ(20);
  @$pb.TagNumber(22)
  set fwMajor($core.int v) { $_setUnsignedInt32(20, v); }
  @$pb.TagNumber(22)
  $core.bool hasFwMajor() => $_has(20);
  @$pb.TagNumber(22)
  void clearFwMajor() => clearField(22);

  @$pb.TagNumber(23)
  $core.int get fwMinor => $_getIZ(21);
  @$pb.TagNumber(23)
  set fwMinor($core.int v) { $_setUnsignedInt32(21, v); }
  @$pb.TagNumber(23)
  $core.bool hasFwMinor() => $_has(21);
  @$pb.TagNumber(23)
  void clearFwMinor() => clearField(23);

  @$pb.TagNumber(24)
  $core.int get fwPatch => $_getIZ(22);
  @$pb.TagNumber(24)
  set fwPatch($core.int v) { $_setUnsignedInt32(22, v); }
  @$pb.TagNumber(24)
  $core.bool hasFwPatch() => $_has(22);
  @$pb.TagNumber(24)
  void clearFwPatch() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get fwVendor => $_getSZ(23);
  @$pb.TagNumber(25)
  set fwVendor($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(25)
  $core.bool hasFwVendor() => $_has(23);
  @$pb.TagNumber(25)
  void clearFwVendor() => clearField(25);

  @$pb.TagNumber(27)
  $core.bool get unfinishedBackup => $_getBF(24);
  @$pb.TagNumber(27)
  set unfinishedBackup($core.bool v) { $_setBool(24, v); }
  @$pb.TagNumber(27)
  $core.bool hasUnfinishedBackup() => $_has(24);
  @$pb.TagNumber(27)
  void clearUnfinishedBackup() => clearField(27);

  @$pb.TagNumber(28)
  $core.bool get noBackup => $_getBF(25);
  @$pb.TagNumber(28)
  set noBackup($core.bool v) { $_setBool(25, v); }
  @$pb.TagNumber(28)
  $core.bool hasNoBackup() => $_has(25);
  @$pb.TagNumber(28)
  void clearNoBackup() => clearField(28);

  @$pb.TagNumber(29)
  Features_RecoveryStatus get recoveryStatus => $_getN(26);
  @$pb.TagNumber(29)
  set recoveryStatus(Features_RecoveryStatus v) { setField(29, v); }
  @$pb.TagNumber(29)
  $core.bool hasRecoveryStatus() => $_has(26);
  @$pb.TagNumber(29)
  void clearRecoveryStatus() => clearField(29);

  @$pb.TagNumber(30)
  $core.List<Features_Capability> get capabilities => $_getList(27);

  @$pb.TagNumber(31)
  BackupType get backupType => $_getN(28);
  @$pb.TagNumber(31)
  set backupType(BackupType v) { setField(31, v); }
  @$pb.TagNumber(31)
  $core.bool hasBackupType() => $_has(28);
  @$pb.TagNumber(31)
  void clearBackupType() => clearField(31);

  @$pb.TagNumber(32)
  $core.bool get sdCardPresent => $_getBF(29);
  @$pb.TagNumber(32)
  set sdCardPresent($core.bool v) { $_setBool(29, v); }
  @$pb.TagNumber(32)
  $core.bool hasSdCardPresent() => $_has(29);
  @$pb.TagNumber(32)
  void clearSdCardPresent() => clearField(32);

  @$pb.TagNumber(33)
  $core.bool get sdProtection => $_getBF(30);
  @$pb.TagNumber(33)
  set sdProtection($core.bool v) { $_setBool(30, v); }
  @$pb.TagNumber(33)
  $core.bool hasSdProtection() => $_has(30);
  @$pb.TagNumber(33)
  void clearSdProtection() => clearField(33);

  @$pb.TagNumber(34)
  $core.bool get wipeCodeProtection => $_getBF(31);
  @$pb.TagNumber(34)
  set wipeCodeProtection($core.bool v) { $_setBool(31, v); }
  @$pb.TagNumber(34)
  $core.bool hasWipeCodeProtection() => $_has(31);
  @$pb.TagNumber(34)
  void clearWipeCodeProtection() => clearField(34);

  @$pb.TagNumber(35)
  $core.List<$core.int> get sessionId => $_getN(32);
  @$pb.TagNumber(35)
  set sessionId($core.List<$core.int> v) { $_setBytes(32, v); }
  @$pb.TagNumber(35)
  $core.bool hasSessionId() => $_has(32);
  @$pb.TagNumber(35)
  void clearSessionId() => clearField(35);

  @$pb.TagNumber(36)
  $core.bool get passphraseAlwaysOnDevice => $_getBF(33);
  @$pb.TagNumber(36)
  set passphraseAlwaysOnDevice($core.bool v) { $_setBool(33, v); }
  @$pb.TagNumber(36)
  $core.bool hasPassphraseAlwaysOnDevice() => $_has(33);
  @$pb.TagNumber(36)
  void clearPassphraseAlwaysOnDevice() => clearField(36);

  @$pb.TagNumber(37)
  SafetyCheckLevel get safetyChecks => $_getN(34);
  @$pb.TagNumber(37)
  set safetyChecks(SafetyCheckLevel v) { setField(37, v); }
  @$pb.TagNumber(37)
  $core.bool hasSafetyChecks() => $_has(34);
  @$pb.TagNumber(37)
  void clearSafetyChecks() => clearField(37);

  @$pb.TagNumber(38)
  $core.int get autoLockDelayMs => $_getIZ(35);
  @$pb.TagNumber(38)
  set autoLockDelayMs($core.int v) { $_setUnsignedInt32(35, v); }
  @$pb.TagNumber(38)
  $core.bool hasAutoLockDelayMs() => $_has(35);
  @$pb.TagNumber(38)
  void clearAutoLockDelayMs() => clearField(38);

  @$pb.TagNumber(39)
  DisplayRotation get displayRotation => $_getN(36);
  @$pb.TagNumber(39)
  set displayRotation(DisplayRotation v) { setField(39, v); }
  @$pb.TagNumber(39)
  $core.bool hasDisplayRotation() => $_has(36);
  @$pb.TagNumber(39)
  void clearDisplayRotation() => clearField(39);

  @$pb.TagNumber(40)
  $core.bool get experimentalFeatures => $_getBF(37);
  @$pb.TagNumber(40)
  set experimentalFeatures($core.bool v) { $_setBool(37, v); }
  @$pb.TagNumber(40)
  $core.bool hasExperimentalFeatures() => $_has(37);
  @$pb.TagNumber(40)
  void clearExperimentalFeatures() => clearField(40);

  @$pb.TagNumber(41)
  $core.bool get busy => $_getBF(38);
  @$pb.TagNumber(41)
  set busy($core.bool v) { $_setBool(38, v); }
  @$pb.TagNumber(41)
  $core.bool hasBusy() => $_has(38);
  @$pb.TagNumber(41)
  void clearBusy() => clearField(41);

  @$pb.TagNumber(42)
  HomescreenFormat get homescreenFormat => $_getN(39);
  @$pb.TagNumber(42)
  set homescreenFormat(HomescreenFormat v) { setField(42, v); }
  @$pb.TagNumber(42)
  $core.bool hasHomescreenFormat() => $_has(39);
  @$pb.TagNumber(42)
  void clearHomescreenFormat() => clearField(42);

  @$pb.TagNumber(43)
  $core.bool get hidePassphraseFromHost => $_getBF(40);
  @$pb.TagNumber(43)
  set hidePassphraseFromHost($core.bool v) { $_setBool(40, v); }
  @$pb.TagNumber(43)
  $core.bool hasHidePassphraseFromHost() => $_has(40);
  @$pb.TagNumber(43)
  void clearHidePassphraseFromHost() => clearField(43);

  @$pb.TagNumber(44)
  $core.String get internalModel => $_getSZ(41);
  @$pb.TagNumber(44)
  set internalModel($core.String v) { $_setString(41, v); }
  @$pb.TagNumber(44)
  $core.bool hasInternalModel() => $_has(41);
  @$pb.TagNumber(44)
  void clearInternalModel() => clearField(44);

  @$pb.TagNumber(45)
  $core.int get unitColor => $_getIZ(42);
  @$pb.TagNumber(45)
  set unitColor($core.int v) { $_setUnsignedInt32(42, v); }
  @$pb.TagNumber(45)
  $core.bool hasUnitColor() => $_has(42);
  @$pb.TagNumber(45)
  void clearUnitColor() => clearField(45);

  @$pb.TagNumber(46)
  $core.bool get unitBtconly => $_getBF(43);
  @$pb.TagNumber(46)
  set unitBtconly($core.bool v) { $_setBool(43, v); }
  @$pb.TagNumber(46)
  $core.bool hasUnitBtconly() => $_has(43);
  @$pb.TagNumber(46)
  void clearUnitBtconly() => clearField(46);

  @$pb.TagNumber(47)
  $core.int get homescreenWidth => $_getIZ(44);
  @$pb.TagNumber(47)
  set homescreenWidth($core.int v) { $_setUnsignedInt32(44, v); }
  @$pb.TagNumber(47)
  $core.bool hasHomescreenWidth() => $_has(44);
  @$pb.TagNumber(47)
  void clearHomescreenWidth() => clearField(47);

  @$pb.TagNumber(48)
  $core.int get homescreenHeight => $_getIZ(45);
  @$pb.TagNumber(48)
  set homescreenHeight($core.int v) { $_setUnsignedInt32(45, v); }
  @$pb.TagNumber(48)
  $core.bool hasHomescreenHeight() => $_has(45);
  @$pb.TagNumber(48)
  void clearHomescreenHeight() => clearField(48);

  @$pb.TagNumber(49)
  $core.bool get bootloaderLocked => $_getBF(46);
  @$pb.TagNumber(49)
  set bootloaderLocked($core.bool v) { $_setBool(46, v); }
  @$pb.TagNumber(49)
  $core.bool hasBootloaderLocked() => $_has(46);
  @$pb.TagNumber(49)
  void clearBootloaderLocked() => clearField(49);

  @$pb.TagNumber(50)
  $core.bool get languageVersionMatches => $_getB(47, true);
  @$pb.TagNumber(50)
  set languageVersionMatches($core.bool v) { $_setBool(47, v); }
  @$pb.TagNumber(50)
  $core.bool hasLanguageVersionMatches() => $_has(47);
  @$pb.TagNumber(50)
  void clearLanguageVersionMatches() => clearField(50);

  @$pb.TagNumber(51)
  $core.int get unitPackaging => $_getIZ(48);
  @$pb.TagNumber(51)
  set unitPackaging($core.int v) { $_setUnsignedInt32(48, v); }
  @$pb.TagNumber(51)
  $core.bool hasUnitPackaging() => $_has(48);
  @$pb.TagNumber(51)
  void clearUnitPackaging() => clearField(51);

  @$pb.TagNumber(52)
  $core.bool get hapticFeedback => $_getBF(49);
  @$pb.TagNumber(52)
  set hapticFeedback($core.bool v) { $_setBool(49, v); }
  @$pb.TagNumber(52)
  $core.bool hasHapticFeedback() => $_has(49);
  @$pb.TagNumber(52)
  void clearHapticFeedback() => clearField(52);

  @$pb.TagNumber(53)
  RecoveryType get recoveryType => $_getN(50);
  @$pb.TagNumber(53)
  set recoveryType(RecoveryType v) { setField(53, v); }
  @$pb.TagNumber(53)
  $core.bool hasRecoveryType() => $_has(50);
  @$pb.TagNumber(53)
  void clearRecoveryType() => clearField(53);

  @$pb.TagNumber(54)
  $core.int get optigaSec => $_getIZ(51);
  @$pb.TagNumber(54)
  set optigaSec($core.int v) { $_setUnsignedInt32(51, v); }
  @$pb.TagNumber(54)
  $core.bool hasOptigaSec() => $_has(51);
  @$pb.TagNumber(54)
  void clearOptigaSec() => clearField(54);

  @$pb.TagNumber(55)
  $core.int get soc => $_getIZ(52);
  @$pb.TagNumber(55)
  set soc($core.int v) { $_setUnsignedInt32(52, v); }
  @$pb.TagNumber(55)
  $core.bool hasSoc() => $_has(52);
  @$pb.TagNumber(55)
  void clearSoc() => clearField(55);

  @$pb.TagNumber(56)
  $core.bool get firmwareCorrupted => $_getBF(53);
  @$pb.TagNumber(56)
  set firmwareCorrupted($core.bool v) { $_setBool(53, v); }
  @$pb.TagNumber(56)
  $core.bool hasFirmwareCorrupted() => $_has(53);
  @$pb.TagNumber(56)
  void clearFirmwareCorrupted() => clearField(56);

  @$pb.TagNumber(57)
  $core.int get autoLockDelayBatteryMs => $_getIZ(54);
  @$pb.TagNumber(57)
  set autoLockDelayBatteryMs($core.int v) { $_setUnsignedInt32(54, v); }
  @$pb.TagNumber(57)
  $core.bool hasAutoLockDelayBatteryMs() => $_has(54);
  @$pb.TagNumber(57)
  void clearAutoLockDelayBatteryMs() => clearField(57);

  @$pb.TagNumber(58)
  $core.bool get led => $_getBF(55);
  @$pb.TagNumber(58)
  set led($core.bool v) { $_setBool(55, v); }
  @$pb.TagNumber(58)
  $core.bool hasLed() => $_has(55);
  @$pb.TagNumber(58)
  void clearLed() => clearField(58);

  @$pb.TagNumber(59)
  $core.bool get usbConnected => $_getBF(56);
  @$pb.TagNumber(59)
  set usbConnected($core.bool v) { $_setBool(56, v); }
  @$pb.TagNumber(59)
  $core.bool hasUsbConnected() => $_has(56);
  @$pb.TagNumber(59)
  void clearUsbConnected() => clearField(59);

  @$pb.TagNumber(60)
  $core.bool get wirelessConnected => $_getBF(57);
  @$pb.TagNumber(60)
  set wirelessConnected($core.bool v) { $_setBool(57, v); }
  @$pb.TagNumber(60)
  $core.bool hasWirelessConnected() => $_has(57);
  @$pb.TagNumber(60)
  void clearWirelessConnected() => clearField(60);

  @$pb.TagNumber(61)
  $core.int get buildVersion => $_getIZ(58);
  @$pb.TagNumber(61)
  set buildVersion($core.int v) { $_setUnsignedInt32(58, v); }
  @$pb.TagNumber(61)
  $core.bool hasBuildVersion() => $_has(58);
  @$pb.TagNumber(61)
  void clearBuildVersion() => clearField(61);

  @$pb.TagNumber(62)
  $core.int get fwBuild => $_getIZ(59);
  @$pb.TagNumber(62)
  set fwBuild($core.int v) { $_setUnsignedInt32(59, v); }
  @$pb.TagNumber(62)
  $core.bool hasFwBuild() => $_has(59);
  @$pb.TagNumber(62)
  void clearFwBuild() => clearField(62);
}

class LockDevice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LockDevice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  LockDevice._() : super();
  factory LockDevice() => create();
  factory LockDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LockDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LockDevice clone() => LockDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LockDevice copyWith(void Function(LockDevice) updates) => super.copyWith((message) => updates(message as LockDevice)) as LockDevice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LockDevice create() => LockDevice._();
  LockDevice createEmptyInstance() => create();
  static $pb.PbList<LockDevice> createRepeated() => $pb.PbList<LockDevice>();
  @$core.pragma('dart2js:noInline')
  static LockDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LockDevice>(create);
  static LockDevice? _defaultInstance;
}

class SetBusy extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetBusy', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiryMs', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SetBusy._() : super();
  factory SetBusy({
    $core.int? expiryMs,
  }) {
    final _result = create();
    if (expiryMs != null) {
      _result.expiryMs = expiryMs;
    }
    return _result;
  }
  factory SetBusy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetBusy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetBusy clone() => SetBusy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetBusy copyWith(void Function(SetBusy) updates) => super.copyWith((message) => updates(message as SetBusy)) as SetBusy; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetBusy create() => SetBusy._();
  SetBusy createEmptyInstance() => create();
  static $pb.PbList<SetBusy> createRepeated() => $pb.PbList<SetBusy>();
  @$core.pragma('dart2js:noInline')
  static SetBusy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetBusy>(create);
  static SetBusy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get expiryMs => $_getIZ(0);
  @$pb.TagNumber(1)
  set expiryMs($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpiryMs() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpiryMs() => clearField(1);
}

class EndSession extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EndSession', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EndSession._() : super();
  factory EndSession() => create();
  factory EndSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EndSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EndSession clone() => EndSession()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EndSession copyWith(void Function(EndSession) updates) => super.copyWith((message) => updates(message as EndSession)) as EndSession; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EndSession create() => EndSession._();
  EndSession createEmptyInstance() => create();
  static $pb.PbList<EndSession> createRepeated() => $pb.PbList<EndSession>();
  @$core.pragma('dart2js:noInline')
  static EndSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EndSession>(create);
  static EndSession? _defaultInstance;
}

class ApplySettings extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApplySettings', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'language')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'usePassphrase')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'homescreen', $pb.PbFieldType.OY)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PassphraseSource', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autoLockDelayMs', $pb.PbFieldType.OU3)
    ..e<DisplayRotation>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'displayRotation', $pb.PbFieldType.OE, defaultOrMaker: DisplayRotation.North, valueOf: DisplayRotation.valueOf, enumValues: DisplayRotation.values)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passphraseAlwaysOnDevice')
    ..e<SafetyCheckLevel>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'safetyChecks', $pb.PbFieldType.OE, defaultOrMaker: SafetyCheckLevel.Strict, valueOf: SafetyCheckLevel.valueOf, enumValues: SafetyCheckLevel.values)
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'experimentalFeatures')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidePassphraseFromHost')
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hapticFeedback')
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'homescreenLength', $pb.PbFieldType.OU3)
    ..a<$core.int>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autoLockDelayBatteryMs', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ApplySettings._() : super();
  factory ApplySettings({
  @$core.Deprecated('This field is deprecated.')
    $core.String? language,
    $core.String? label,
    $core.bool? usePassphrase,
    $core.List<$core.int>? homescreen,
  @$core.Deprecated('This field is deprecated.')
    $core.int? passphraseSource,
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
    final _result = create();
    if (language != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.language = language;
    }
    if (label != null) {
      _result.label = label;
    }
    if (usePassphrase != null) {
      _result.usePassphrase = usePassphrase;
    }
    if (homescreen != null) {
      _result.homescreen = homescreen;
    }
    if (passphraseSource != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.passphraseSource = passphraseSource;
    }
    if (autoLockDelayMs != null) {
      _result.autoLockDelayMs = autoLockDelayMs;
    }
    if (displayRotation != null) {
      _result.displayRotation = displayRotation;
    }
    if (passphraseAlwaysOnDevice != null) {
      _result.passphraseAlwaysOnDevice = passphraseAlwaysOnDevice;
    }
    if (safetyChecks != null) {
      _result.safetyChecks = safetyChecks;
    }
    if (experimentalFeatures != null) {
      _result.experimentalFeatures = experimentalFeatures;
    }
    if (hidePassphraseFromHost != null) {
      _result.hidePassphraseFromHost = hidePassphraseFromHost;
    }
    if (hapticFeedback != null) {
      _result.hapticFeedback = hapticFeedback;
    }
    if (homescreenLength != null) {
      _result.homescreenLength = homescreenLength;
    }
    if (autoLockDelayBatteryMs != null) {
      _result.autoLockDelayBatteryMs = autoLockDelayBatteryMs;
    }
    return _result;
  }
  factory ApplySettings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplySettings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplySettings clone() => ApplySettings()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplySettings copyWith(void Function(ApplySettings) updates) => super.copyWith((message) => updates(message as ApplySettings)) as ApplySettings; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplySettings create() => ApplySettings._();
  ApplySettings createEmptyInstance() => create();
  static $pb.PbList<ApplySettings> createRepeated() => $pb.PbList<ApplySettings>();
  @$core.pragma('dart2js:noInline')
  static ApplySettings getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplySettings>(create);
  static ApplySettings? _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.String get language => $_getSZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set language($core.String v) { $_setString(0, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasLanguage() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearLanguage() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get label => $_getSZ(1);
  @$pb.TagNumber(2)
  set label($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLabel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabel() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get usePassphrase => $_getBF(2);
  @$pb.TagNumber(3)
  set usePassphrase($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUsePassphrase() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsePassphrase() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get homescreen => $_getN(3);
  @$pb.TagNumber(4)
  set homescreen($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHomescreen() => $_has(3);
  @$pb.TagNumber(4)
  void clearHomescreen() => clearField(4);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.int get passphraseSource => $_getIZ(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set passphraseSource($core.int v) { $_setUnsignedInt32(4, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasPassphraseSource() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearPassphraseSource() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get autoLockDelayMs => $_getIZ(5);
  @$pb.TagNumber(6)
  set autoLockDelayMs($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAutoLockDelayMs() => $_has(5);
  @$pb.TagNumber(6)
  void clearAutoLockDelayMs() => clearField(6);

  @$pb.TagNumber(7)
  DisplayRotation get displayRotation => $_getN(6);
  @$pb.TagNumber(7)
  set displayRotation(DisplayRotation v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasDisplayRotation() => $_has(6);
  @$pb.TagNumber(7)
  void clearDisplayRotation() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get passphraseAlwaysOnDevice => $_getBF(7);
  @$pb.TagNumber(8)
  set passphraseAlwaysOnDevice($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPassphraseAlwaysOnDevice() => $_has(7);
  @$pb.TagNumber(8)
  void clearPassphraseAlwaysOnDevice() => clearField(8);

  @$pb.TagNumber(9)
  SafetyCheckLevel get safetyChecks => $_getN(8);
  @$pb.TagNumber(9)
  set safetyChecks(SafetyCheckLevel v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasSafetyChecks() => $_has(8);
  @$pb.TagNumber(9)
  void clearSafetyChecks() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get experimentalFeatures => $_getBF(9);
  @$pb.TagNumber(10)
  set experimentalFeatures($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasExperimentalFeatures() => $_has(9);
  @$pb.TagNumber(10)
  void clearExperimentalFeatures() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get hidePassphraseFromHost => $_getBF(10);
  @$pb.TagNumber(11)
  set hidePassphraseFromHost($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasHidePassphraseFromHost() => $_has(10);
  @$pb.TagNumber(11)
  void clearHidePassphraseFromHost() => clearField(11);

  @$pb.TagNumber(13)
  $core.bool get hapticFeedback => $_getBF(11);
  @$pb.TagNumber(13)
  set hapticFeedback($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasHapticFeedback() => $_has(11);
  @$pb.TagNumber(13)
  void clearHapticFeedback() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get homescreenLength => $_getIZ(12);
  @$pb.TagNumber(14)
  set homescreenLength($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasHomescreenLength() => $_has(12);
  @$pb.TagNumber(14)
  void clearHomescreenLength() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get autoLockDelayBatteryMs => $_getIZ(13);
  @$pb.TagNumber(15)
  set autoLockDelayBatteryMs($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasAutoLockDelayBatteryMs() => $_has(13);
  @$pb.TagNumber(15)
  void clearAutoLockDelayBatteryMs() => clearField(15);
}

class ChangeLanguage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChangeLanguage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataLength', $pb.PbFieldType.QU3)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'showDisplay')
  ;

  ChangeLanguage._() : super();
  factory ChangeLanguage({
    $core.int? dataLength,
    $core.bool? showDisplay,
  }) {
    final _result = create();
    if (dataLength != null) {
      _result.dataLength = dataLength;
    }
    if (showDisplay != null) {
      _result.showDisplay = showDisplay;
    }
    return _result;
  }
  factory ChangeLanguage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangeLanguage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChangeLanguage clone() => ChangeLanguage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChangeLanguage copyWith(void Function(ChangeLanguage) updates) => super.copyWith((message) => updates(message as ChangeLanguage)) as ChangeLanguage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangeLanguage create() => ChangeLanguage._();
  ChangeLanguage createEmptyInstance() => create();
  static $pb.PbList<ChangeLanguage> createRepeated() => $pb.PbList<ChangeLanguage>();
  @$core.pragma('dart2js:noInline')
  static ChangeLanguage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangeLanguage>(create);
  static ChangeLanguage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get dataLength => $_getIZ(0);
  @$pb.TagNumber(1)
  set dataLength($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataLength() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get showDisplay => $_getBF(1);
  @$pb.TagNumber(2)
  set showDisplay($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShowDisplay() => $_has(1);
  @$pb.TagNumber(2)
  void clearShowDisplay() => clearField(2);
}

class DataChunkRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DataChunkRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataLength', $pb.PbFieldType.QU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataOffset', $pb.PbFieldType.QU3)
  ;

  DataChunkRequest._() : super();
  factory DataChunkRequest({
    $core.int? dataLength,
    $core.int? dataOffset,
  }) {
    final _result = create();
    if (dataLength != null) {
      _result.dataLength = dataLength;
    }
    if (dataOffset != null) {
      _result.dataOffset = dataOffset;
    }
    return _result;
  }
  factory DataChunkRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataChunkRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataChunkRequest clone() => DataChunkRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataChunkRequest copyWith(void Function(DataChunkRequest) updates) => super.copyWith((message) => updates(message as DataChunkRequest)) as DataChunkRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DataChunkRequest create() => DataChunkRequest._();
  DataChunkRequest createEmptyInstance() => create();
  static $pb.PbList<DataChunkRequest> createRepeated() => $pb.PbList<DataChunkRequest>();
  @$core.pragma('dart2js:noInline')
  static DataChunkRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataChunkRequest>(create);
  static DataChunkRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get dataLength => $_getIZ(0);
  @$pb.TagNumber(1)
  set dataLength($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataLength() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get dataOffset => $_getIZ(1);
  @$pb.TagNumber(2)
  set dataOffset($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDataOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataOffset() => clearField(2);
}

class DataChunkAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DataChunkAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataChunk', $pb.PbFieldType.QY)
  ;

  DataChunkAck._() : super();
  factory DataChunkAck({
    $core.List<$core.int>? dataChunk,
  }) {
    final _result = create();
    if (dataChunk != null) {
      _result.dataChunk = dataChunk;
    }
    return _result;
  }
  factory DataChunkAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataChunkAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataChunkAck clone() => DataChunkAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataChunkAck copyWith(void Function(DataChunkAck) updates) => super.copyWith((message) => updates(message as DataChunkAck)) as DataChunkAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DataChunkAck create() => DataChunkAck._();
  DataChunkAck createEmptyInstance() => create();
  static $pb.PbList<DataChunkAck> createRepeated() => $pb.PbList<DataChunkAck>();
  @$core.pragma('dart2js:noInline')
  static DataChunkAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataChunkAck>(create);
  static DataChunkAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get dataChunk => $_getN(0);
  @$pb.TagNumber(1)
  set dataChunk($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataChunk() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataChunk() => clearField(1);
}

class ApplyFlags extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApplyFlags', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flags', $pb.PbFieldType.QU3)
  ;

  ApplyFlags._() : super();
  factory ApplyFlags({
    $core.int? flags,
  }) {
    final _result = create();
    if (flags != null) {
      _result.flags = flags;
    }
    return _result;
  }
  factory ApplyFlags.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyFlags.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplyFlags clone() => ApplyFlags()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplyFlags copyWith(void Function(ApplyFlags) updates) => super.copyWith((message) => updates(message as ApplyFlags)) as ApplyFlags; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyFlags create() => ApplyFlags._();
  ApplyFlags createEmptyInstance() => create();
  static $pb.PbList<ApplyFlags> createRepeated() => $pb.PbList<ApplyFlags>();
  @$core.pragma('dart2js:noInline')
  static ApplyFlags getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplyFlags>(create);
  static ApplyFlags? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get flags => $_getIZ(0);
  @$pb.TagNumber(1)
  set flags($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFlags() => $_has(0);
  @$pb.TagNumber(1)
  void clearFlags() => clearField(1);
}

class ChangePin extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChangePin', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remove')
    ..hasRequiredFields = false
  ;

  ChangePin._() : super();
  factory ChangePin({
    $core.bool? remove,
  }) {
    final _result = create();
    if (remove != null) {
      _result.remove = remove;
    }
    return _result;
  }
  factory ChangePin.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangePin.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChangePin clone() => ChangePin()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChangePin copyWith(void Function(ChangePin) updates) => super.copyWith((message) => updates(message as ChangePin)) as ChangePin; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangePin create() => ChangePin._();
  ChangePin createEmptyInstance() => create();
  static $pb.PbList<ChangePin> createRepeated() => $pb.PbList<ChangePin>();
  @$core.pragma('dart2js:noInline')
  static ChangePin getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangePin>(create);
  static ChangePin? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get remove => $_getBF(0);
  @$pb.TagNumber(1)
  set remove($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemove() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemove() => clearField(1);
}

class ChangeWipeCode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChangeWipeCode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remove')
    ..hasRequiredFields = false
  ;

  ChangeWipeCode._() : super();
  factory ChangeWipeCode({
    $core.bool? remove,
  }) {
    final _result = create();
    if (remove != null) {
      _result.remove = remove;
    }
    return _result;
  }
  factory ChangeWipeCode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangeWipeCode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChangeWipeCode clone() => ChangeWipeCode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChangeWipeCode copyWith(void Function(ChangeWipeCode) updates) => super.copyWith((message) => updates(message as ChangeWipeCode)) as ChangeWipeCode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangeWipeCode create() => ChangeWipeCode._();
  ChangeWipeCode createEmptyInstance() => create();
  static $pb.PbList<ChangeWipeCode> createRepeated() => $pb.PbList<ChangeWipeCode>();
  @$core.pragma('dart2js:noInline')
  static ChangeWipeCode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangeWipeCode>(create);
  static ChangeWipeCode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get remove => $_getBF(0);
  @$pb.TagNumber(1)
  set remove($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemove() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemove() => clearField(1);
}

class SdProtect extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SdProtect', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..e<SdProtect_SdProtectOperationType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operation', $pb.PbFieldType.QE, defaultOrMaker: SdProtect_SdProtectOperationType.DISABLE, valueOf: SdProtect_SdProtectOperationType.valueOf, enumValues: SdProtect_SdProtectOperationType.values)
  ;

  SdProtect._() : super();
  factory SdProtect({
    SdProtect_SdProtectOperationType? operation,
  }) {
    final _result = create();
    if (operation != null) {
      _result.operation = operation;
    }
    return _result;
  }
  factory SdProtect.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SdProtect.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SdProtect clone() => SdProtect()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SdProtect copyWith(void Function(SdProtect) updates) => super.copyWith((message) => updates(message as SdProtect)) as SdProtect; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SdProtect create() => SdProtect._();
  SdProtect createEmptyInstance() => create();
  static $pb.PbList<SdProtect> createRepeated() => $pb.PbList<SdProtect>();
  @$core.pragma('dart2js:noInline')
  static SdProtect getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SdProtect>(create);
  static SdProtect? _defaultInstance;

  @$pb.TagNumber(1)
  SdProtect_SdProtectOperationType get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation(SdProtect_SdProtectOperationType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => clearField(1);
}

class Ping extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Ping', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buttonProtection')
    ..hasRequiredFields = false
  ;

  Ping._() : super();
  factory Ping({
    $core.String? message,
    $core.bool? buttonProtection,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    if (buttonProtection != null) {
      _result.buttonProtection = buttonProtection;
    }
    return _result;
  }
  factory Ping.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ping.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ping clone() => Ping()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ping copyWith(void Function(Ping) updates) => super.copyWith((message) => updates(message as Ping)) as Ping; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Ping create() => Ping._();
  Ping createEmptyInstance() => create();
  static $pb.PbList<Ping> createRepeated() => $pb.PbList<Ping>();
  @$core.pragma('dart2js:noInline')
  static Ping getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ping>(create);
  static Ping? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get buttonProtection => $_getBF(1);
  @$pb.TagNumber(2)
  set buttonProtection($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasButtonProtection() => $_has(1);
  @$pb.TagNumber(2)
  void clearButtonProtection() => clearField(2);
}

class Cancel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Cancel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Cancel._() : super();
  factory Cancel() => create();
  factory Cancel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cancel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cancel clone() => Cancel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cancel copyWith(void Function(Cancel) updates) => super.copyWith((message) => updates(message as Cancel)) as Cancel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Cancel create() => Cancel._();
  Cancel createEmptyInstance() => create();
  static $pb.PbList<Cancel> createRepeated() => $pb.PbList<Cancel>();
  @$core.pragma('dart2js:noInline')
  static Cancel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cancel>(create);
  static Cancel? _defaultInstance;
}

class GetEntropy extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetEntropy', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size', $pb.PbFieldType.QU3)
  ;

  GetEntropy._() : super();
  factory GetEntropy({
    $core.int? size,
  }) {
    final _result = create();
    if (size != null) {
      _result.size = size;
    }
    return _result;
  }
  factory GetEntropy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEntropy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEntropy clone() => GetEntropy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEntropy copyWith(void Function(GetEntropy) updates) => super.copyWith((message) => updates(message as GetEntropy)) as GetEntropy; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetEntropy create() => GetEntropy._();
  GetEntropy createEmptyInstance() => create();
  static $pb.PbList<GetEntropy> createRepeated() => $pb.PbList<GetEntropy>();
  @$core.pragma('dart2js:noInline')
  static GetEntropy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEntropy>(create);
  static GetEntropy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get size => $_getIZ(0);
  @$pb.TagNumber(1)
  set size($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearSize() => clearField(1);
}

class Entropy extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Entropy', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entropy', $pb.PbFieldType.QY)
  ;

  Entropy._() : super();
  factory Entropy({
    $core.List<$core.int>? entropy,
  }) {
    final _result = create();
    if (entropy != null) {
      _result.entropy = entropy;
    }
    return _result;
  }
  factory Entropy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Entropy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Entropy clone() => Entropy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Entropy copyWith(void Function(Entropy) updates) => super.copyWith((message) => updates(message as Entropy)) as Entropy; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Entropy create() => Entropy._();
  Entropy createEmptyInstance() => create();
  static $pb.PbList<Entropy> createRepeated() => $pb.PbList<Entropy>();
  @$core.pragma('dart2js:noInline')
  static Entropy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Entropy>(create);
  static Entropy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get entropy => $_getN(0);
  @$pb.TagNumber(1)
  set entropy($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntropy() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntropy() => clearField(1);
}

class GetFirmwareHash extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFirmwareHash', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'challenge', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetFirmwareHash._() : super();
  factory GetFirmwareHash({
    $core.List<$core.int>? challenge,
  }) {
    final _result = create();
    if (challenge != null) {
      _result.challenge = challenge;
    }
    return _result;
  }
  factory GetFirmwareHash.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFirmwareHash.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFirmwareHash clone() => GetFirmwareHash()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFirmwareHash copyWith(void Function(GetFirmwareHash) updates) => super.copyWith((message) => updates(message as GetFirmwareHash)) as GetFirmwareHash; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFirmwareHash create() => GetFirmwareHash._();
  GetFirmwareHash createEmptyInstance() => create();
  static $pb.PbList<GetFirmwareHash> createRepeated() => $pb.PbList<GetFirmwareHash>();
  @$core.pragma('dart2js:noInline')
  static GetFirmwareHash getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFirmwareHash>(create);
  static GetFirmwareHash? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get challenge => $_getN(0);
  @$pb.TagNumber(1)
  set challenge($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => clearField(1);
}

class FirmwareHash extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FirmwareHash', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash', $pb.PbFieldType.QY)
  ;

  FirmwareHash._() : super();
  factory FirmwareHash({
    $core.List<$core.int>? hash,
  }) {
    final _result = create();
    if (hash != null) {
      _result.hash = hash;
    }
    return _result;
  }
  factory FirmwareHash.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FirmwareHash.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FirmwareHash clone() => FirmwareHash()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FirmwareHash copyWith(void Function(FirmwareHash) updates) => super.copyWith((message) => updates(message as FirmwareHash)) as FirmwareHash; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FirmwareHash create() => FirmwareHash._();
  FirmwareHash createEmptyInstance() => create();
  static $pb.PbList<FirmwareHash> createRepeated() => $pb.PbList<FirmwareHash>();
  @$core.pragma('dart2js:noInline')
  static FirmwareHash getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FirmwareHash>(create);
  static FirmwareHash? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);
}

class AuthenticateDevice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticateDevice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'challenge', $pb.PbFieldType.QY)
  ;

  AuthenticateDevice._() : super();
  factory AuthenticateDevice({
    $core.List<$core.int>? challenge,
  }) {
    final _result = create();
    if (challenge != null) {
      _result.challenge = challenge;
    }
    return _result;
  }
  factory AuthenticateDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticateDevice clone() => AuthenticateDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticateDevice copyWith(void Function(AuthenticateDevice) updates) => super.copyWith((message) => updates(message as AuthenticateDevice)) as AuthenticateDevice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateDevice create() => AuthenticateDevice._();
  AuthenticateDevice createEmptyInstance() => create();
  static $pb.PbList<AuthenticateDevice> createRepeated() => $pb.PbList<AuthenticateDevice>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticateDevice>(create);
  static AuthenticateDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get challenge => $_getN(0);
  @$pb.TagNumber(1)
  set challenge($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => clearField(1);
}

class AuthenticityProof extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticityProof', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optigaCertificates', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optigaSignature', $pb.PbFieldType.QY)
    ..p<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tropicCertificates', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tropicSignature', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mcuCertificates', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mcuSignature', $pb.PbFieldType.OY)
  ;

  AuthenticityProof._() : super();
  factory AuthenticityProof({
    $core.Iterable<$core.List<$core.int>>? optigaCertificates,
    $core.List<$core.int>? optigaSignature,
    $core.Iterable<$core.List<$core.int>>? tropicCertificates,
    $core.List<$core.int>? tropicSignature,
    $core.Iterable<$core.List<$core.int>>? mcuCertificates,
    $core.List<$core.int>? mcuSignature,
  }) {
    final _result = create();
    if (optigaCertificates != null) {
      _result.optigaCertificates.addAll(optigaCertificates);
    }
    if (optigaSignature != null) {
      _result.optigaSignature = optigaSignature;
    }
    if (tropicCertificates != null) {
      _result.tropicCertificates.addAll(tropicCertificates);
    }
    if (tropicSignature != null) {
      _result.tropicSignature = tropicSignature;
    }
    if (mcuCertificates != null) {
      _result.mcuCertificates.addAll(mcuCertificates);
    }
    if (mcuSignature != null) {
      _result.mcuSignature = mcuSignature;
    }
    return _result;
  }
  factory AuthenticityProof.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticityProof.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticityProof clone() => AuthenticityProof()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticityProof copyWith(void Function(AuthenticityProof) updates) => super.copyWith((message) => updates(message as AuthenticityProof)) as AuthenticityProof; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticityProof create() => AuthenticityProof._();
  AuthenticityProof createEmptyInstance() => create();
  static $pb.PbList<AuthenticityProof> createRepeated() => $pb.PbList<AuthenticityProof>();
  @$core.pragma('dart2js:noInline')
  static AuthenticityProof getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticityProof>(create);
  static AuthenticityProof? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get optigaCertificates => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get optigaSignature => $_getN(1);
  @$pb.TagNumber(2)
  set optigaSignature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOptigaSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptigaSignature() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get tropicCertificates => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get tropicSignature => $_getN(3);
  @$pb.TagNumber(4)
  set tropicSignature($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTropicSignature() => $_has(3);
  @$pb.TagNumber(4)
  void clearTropicSignature() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.List<$core.int>> get mcuCertificates => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get mcuSignature => $_getN(5);
  @$pb.TagNumber(6)
  set mcuSignature($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMcuSignature() => $_has(5);
  @$pb.TagNumber(6)
  void clearMcuSignature() => clearField(6);
}

class WipeDevice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WipeDevice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WipeDevice._() : super();
  factory WipeDevice() => create();
  factory WipeDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WipeDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WipeDevice clone() => WipeDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WipeDevice copyWith(void Function(WipeDevice) updates) => super.copyWith((message) => updates(message as WipeDevice)) as WipeDevice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WipeDevice create() => WipeDevice._();
  WipeDevice createEmptyInstance() => create();
  static $pb.PbList<WipeDevice> createRepeated() => $pb.PbList<WipeDevice>();
  @$core.pragma('dart2js:noInline')
  static WipeDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WipeDevice>(create);
  static WipeDevice? _defaultInstance;
}

class LoadDevice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadDevice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mnemonics')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pin')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passphraseProtection')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'language')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skipChecksum')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'u2fCounter', $pb.PbFieldType.OU3)
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'needsBackup')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noBackup')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unfinishedBackup')
    ..hasRequiredFields = false
  ;

  LoadDevice._() : super();
  factory LoadDevice({
    $core.Iterable<$core.String>? mnemonics,
    $core.String? pin,
    $core.bool? passphraseProtection,
  @$core.Deprecated('This field is deprecated.')
    $core.String? language,
    $core.String? label,
    $core.bool? skipChecksum,
    $core.int? u2fCounter,
    $core.bool? needsBackup,
    $core.bool? noBackup,
    $core.bool? unfinishedBackup,
  }) {
    final _result = create();
    if (mnemonics != null) {
      _result.mnemonics.addAll(mnemonics);
    }
    if (pin != null) {
      _result.pin = pin;
    }
    if (passphraseProtection != null) {
      _result.passphraseProtection = passphraseProtection;
    }
    if (language != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.language = language;
    }
    if (label != null) {
      _result.label = label;
    }
    if (skipChecksum != null) {
      _result.skipChecksum = skipChecksum;
    }
    if (u2fCounter != null) {
      _result.u2fCounter = u2fCounter;
    }
    if (needsBackup != null) {
      _result.needsBackup = needsBackup;
    }
    if (noBackup != null) {
      _result.noBackup = noBackup;
    }
    if (unfinishedBackup != null) {
      _result.unfinishedBackup = unfinishedBackup;
    }
    return _result;
  }
  factory LoadDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadDevice clone() => LoadDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadDevice copyWith(void Function(LoadDevice) updates) => super.copyWith((message) => updates(message as LoadDevice)) as LoadDevice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadDevice create() => LoadDevice._();
  LoadDevice createEmptyInstance() => create();
  static $pb.PbList<LoadDevice> createRepeated() => $pb.PbList<LoadDevice>();
  @$core.pragma('dart2js:noInline')
  static LoadDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadDevice>(create);
  static LoadDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get mnemonics => $_getList(0);

  @$pb.TagNumber(3)
  $core.String get pin => $_getSZ(1);
  @$pb.TagNumber(3)
  set pin($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasPin() => $_has(1);
  @$pb.TagNumber(3)
  void clearPin() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get passphraseProtection => $_getBF(2);
  @$pb.TagNumber(4)
  set passphraseProtection($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassphraseProtection() => $_has(2);
  @$pb.TagNumber(4)
  void clearPassphraseProtection() => clearField(4);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.String get language => $_getSZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set language($core.String v) { $_setString(3, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasLanguage() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearLanguage() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get label => $_getSZ(4);
  @$pb.TagNumber(6)
  set label($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasLabel() => $_has(4);
  @$pb.TagNumber(6)
  void clearLabel() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get skipChecksum => $_getBF(5);
  @$pb.TagNumber(7)
  set skipChecksum($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasSkipChecksum() => $_has(5);
  @$pb.TagNumber(7)
  void clearSkipChecksum() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get u2fCounter => $_getIZ(6);
  @$pb.TagNumber(8)
  set u2fCounter($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasU2fCounter() => $_has(6);
  @$pb.TagNumber(8)
  void clearU2fCounter() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get needsBackup => $_getBF(7);
  @$pb.TagNumber(9)
  set needsBackup($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasNeedsBackup() => $_has(7);
  @$pb.TagNumber(9)
  void clearNeedsBackup() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get noBackup => $_getBF(8);
  @$pb.TagNumber(10)
  set noBackup($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasNoBackup() => $_has(8);
  @$pb.TagNumber(10)
  void clearNoBackup() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get unfinishedBackup => $_getBF(9);
  @$pb.TagNumber(11)
  set unfinishedBackup($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasUnfinishedBackup() => $_has(9);
  @$pb.TagNumber(11)
  void clearUnfinishedBackup() => clearField(11);
}

class ResetDevice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResetDevice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'strength', $pb.PbFieldType.OU3, defaultOrMaker: 256)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passphraseProtection')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pinProtection')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'language')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'u2fCounter', $pb.PbFieldType.OU3)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skipBackup')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noBackup')
    ..e<BackupType>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backupType', $pb.PbFieldType.OE, defaultOrMaker: BackupType.Bip39, valueOf: BackupType.valueOf, enumValues: BackupType.values)
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entropyCheck')
    ..e<BackupMethod>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backupMethod', $pb.PbFieldType.OE, defaultOrMaker: BackupMethod.Display, valueOf: BackupMethod.valueOf, enumValues: BackupMethod.values)
    ..hasRequiredFields = false
  ;

  ResetDevice._() : super();
  factory ResetDevice({
    $core.int? strength,
    $core.bool? passphraseProtection,
    $core.bool? pinProtection,
  @$core.Deprecated('This field is deprecated.')
    $core.String? language,
    $core.String? label,
    $core.int? u2fCounter,
    $core.bool? skipBackup,
    $core.bool? noBackup,
    BackupType? backupType,
    $core.bool? entropyCheck,
    BackupMethod? backupMethod,
  }) {
    final _result = create();
    if (strength != null) {
      _result.strength = strength;
    }
    if (passphraseProtection != null) {
      _result.passphraseProtection = passphraseProtection;
    }
    if (pinProtection != null) {
      _result.pinProtection = pinProtection;
    }
    if (language != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.language = language;
    }
    if (label != null) {
      _result.label = label;
    }
    if (u2fCounter != null) {
      _result.u2fCounter = u2fCounter;
    }
    if (skipBackup != null) {
      _result.skipBackup = skipBackup;
    }
    if (noBackup != null) {
      _result.noBackup = noBackup;
    }
    if (backupType != null) {
      _result.backupType = backupType;
    }
    if (entropyCheck != null) {
      _result.entropyCheck = entropyCheck;
    }
    if (backupMethod != null) {
      _result.backupMethod = backupMethod;
    }
    return _result;
  }
  factory ResetDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResetDevice clone() => ResetDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResetDevice copyWith(void Function(ResetDevice) updates) => super.copyWith((message) => updates(message as ResetDevice)) as ResetDevice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetDevice create() => ResetDevice._();
  ResetDevice createEmptyInstance() => create();
  static $pb.PbList<ResetDevice> createRepeated() => $pb.PbList<ResetDevice>();
  @$core.pragma('dart2js:noInline')
  static ResetDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetDevice>(create);
  static ResetDevice? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get strength => $_getI(0, 256);
  @$pb.TagNumber(2)
  set strength($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasStrength() => $_has(0);
  @$pb.TagNumber(2)
  void clearStrength() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get passphraseProtection => $_getBF(1);
  @$pb.TagNumber(3)
  set passphraseProtection($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassphraseProtection() => $_has(1);
  @$pb.TagNumber(3)
  void clearPassphraseProtection() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get pinProtection => $_getBF(2);
  @$pb.TagNumber(4)
  set pinProtection($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasPinProtection() => $_has(2);
  @$pb.TagNumber(4)
  void clearPinProtection() => clearField(4);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.String get language => $_getSZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set language($core.String v) { $_setString(3, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasLanguage() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearLanguage() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get label => $_getSZ(4);
  @$pb.TagNumber(6)
  set label($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasLabel() => $_has(4);
  @$pb.TagNumber(6)
  void clearLabel() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get u2fCounter => $_getIZ(5);
  @$pb.TagNumber(7)
  set u2fCounter($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasU2fCounter() => $_has(5);
  @$pb.TagNumber(7)
  void clearU2fCounter() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get skipBackup => $_getBF(6);
  @$pb.TagNumber(8)
  set skipBackup($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasSkipBackup() => $_has(6);
  @$pb.TagNumber(8)
  void clearSkipBackup() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get noBackup => $_getBF(7);
  @$pb.TagNumber(9)
  set noBackup($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasNoBackup() => $_has(7);
  @$pb.TagNumber(9)
  void clearNoBackup() => clearField(9);

  @$pb.TagNumber(10)
  BackupType get backupType => $_getN(8);
  @$pb.TagNumber(10)
  set backupType(BackupType v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasBackupType() => $_has(8);
  @$pb.TagNumber(10)
  void clearBackupType() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get entropyCheck => $_getBF(9);
  @$pb.TagNumber(11)
  set entropyCheck($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasEntropyCheck() => $_has(9);
  @$pb.TagNumber(11)
  void clearEntropyCheck() => clearField(11);

  @$pb.TagNumber(12)
  BackupMethod get backupMethod => $_getN(10);
  @$pb.TagNumber(12)
  set backupMethod(BackupMethod v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasBackupMethod() => $_has(10);
  @$pb.TagNumber(12)
  void clearBackupMethod() => clearField(12);
}

class BackupDevice_Slip39Group extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BackupDevice.Slip39Group', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memberThreshold', $pb.PbFieldType.QU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memberCount', $pb.PbFieldType.QU3)
  ;

  BackupDevice_Slip39Group._() : super();
  factory BackupDevice_Slip39Group({
    $core.int? memberThreshold,
    $core.int? memberCount,
  }) {
    final _result = create();
    if (memberThreshold != null) {
      _result.memberThreshold = memberThreshold;
    }
    if (memberCount != null) {
      _result.memberCount = memberCount;
    }
    return _result;
  }
  factory BackupDevice_Slip39Group.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BackupDevice_Slip39Group.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BackupDevice_Slip39Group clone() => BackupDevice_Slip39Group()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BackupDevice_Slip39Group copyWith(void Function(BackupDevice_Slip39Group) updates) => super.copyWith((message) => updates(message as BackupDevice_Slip39Group)) as BackupDevice_Slip39Group; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BackupDevice_Slip39Group create() => BackupDevice_Slip39Group._();
  BackupDevice_Slip39Group createEmptyInstance() => create();
  static $pb.PbList<BackupDevice_Slip39Group> createRepeated() => $pb.PbList<BackupDevice_Slip39Group>();
  @$core.pragma('dart2js:noInline')
  static BackupDevice_Slip39Group getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BackupDevice_Slip39Group>(create);
  static BackupDevice_Slip39Group? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get memberThreshold => $_getIZ(0);
  @$pb.TagNumber(1)
  set memberThreshold($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMemberThreshold() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemberThreshold() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get memberCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set memberCount($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMemberCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemberCount() => clearField(2);
}

class BackupDevice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BackupDevice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupThreshold', $pb.PbFieldType.OU3)
    ..pc<BackupDevice_Slip39Group>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groups', $pb.PbFieldType.PM, subBuilder: BackupDevice_Slip39Group.create)
    ..e<BackupMethod>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backupMethod', $pb.PbFieldType.OE, defaultOrMaker: BackupMethod.Display, valueOf: BackupMethod.valueOf, enumValues: BackupMethod.values)
  ;

  BackupDevice._() : super();
  factory BackupDevice({
    $core.int? groupThreshold,
    $core.Iterable<BackupDevice_Slip39Group>? groups,
    BackupMethod? backupMethod,
  }) {
    final _result = create();
    if (groupThreshold != null) {
      _result.groupThreshold = groupThreshold;
    }
    if (groups != null) {
      _result.groups.addAll(groups);
    }
    if (backupMethod != null) {
      _result.backupMethod = backupMethod;
    }
    return _result;
  }
  factory BackupDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BackupDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BackupDevice clone() => BackupDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BackupDevice copyWith(void Function(BackupDevice) updates) => super.copyWith((message) => updates(message as BackupDevice)) as BackupDevice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BackupDevice create() => BackupDevice._();
  BackupDevice createEmptyInstance() => create();
  static $pb.PbList<BackupDevice> createRepeated() => $pb.PbList<BackupDevice>();
  @$core.pragma('dart2js:noInline')
  static BackupDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BackupDevice>(create);
  static BackupDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get groupThreshold => $_getIZ(0);
  @$pb.TagNumber(1)
  set groupThreshold($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupThreshold() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupThreshold() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<BackupDevice_Slip39Group> get groups => $_getList(1);

  @$pb.TagNumber(3)
  BackupMethod get backupMethod => $_getN(2);
  @$pb.TagNumber(3)
  set backupMethod(BackupMethod v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBackupMethod() => $_has(2);
  @$pb.TagNumber(3)
  void clearBackupMethod() => clearField(3);
}

class EntropyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EntropyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entropyCommitment', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prevEntropy', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  EntropyRequest._() : super();
  factory EntropyRequest({
    $core.List<$core.int>? entropyCommitment,
    $core.List<$core.int>? prevEntropy,
  }) {
    final _result = create();
    if (entropyCommitment != null) {
      _result.entropyCommitment = entropyCommitment;
    }
    if (prevEntropy != null) {
      _result.prevEntropy = prevEntropy;
    }
    return _result;
  }
  factory EntropyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EntropyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EntropyRequest clone() => EntropyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EntropyRequest copyWith(void Function(EntropyRequest) updates) => super.copyWith((message) => updates(message as EntropyRequest)) as EntropyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EntropyRequest create() => EntropyRequest._();
  EntropyRequest createEmptyInstance() => create();
  static $pb.PbList<EntropyRequest> createRepeated() => $pb.PbList<EntropyRequest>();
  @$core.pragma('dart2js:noInline')
  static EntropyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntropyRequest>(create);
  static EntropyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get entropyCommitment => $_getN(0);
  @$pb.TagNumber(1)
  set entropyCommitment($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntropyCommitment() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntropyCommitment() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get prevEntropy => $_getN(1);
  @$pb.TagNumber(2)
  set prevEntropy($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrevEntropy() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrevEntropy() => clearField(2);
}

class EntropyAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EntropyAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entropy', $pb.PbFieldType.QY)
  ;

  EntropyAck._() : super();
  factory EntropyAck({
    $core.List<$core.int>? entropy,
  }) {
    final _result = create();
    if (entropy != null) {
      _result.entropy = entropy;
    }
    return _result;
  }
  factory EntropyAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EntropyAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EntropyAck clone() => EntropyAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EntropyAck copyWith(void Function(EntropyAck) updates) => super.copyWith((message) => updates(message as EntropyAck)) as EntropyAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EntropyAck create() => EntropyAck._();
  EntropyAck createEmptyInstance() => create();
  static $pb.PbList<EntropyAck> createRepeated() => $pb.PbList<EntropyAck>();
  @$core.pragma('dart2js:noInline')
  static EntropyAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntropyAck>(create);
  static EntropyAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get entropy => $_getN(0);
  @$pb.TagNumber(1)
  set entropy($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntropy() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntropy() => clearField(1);
}

class EntropyCheckReady extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EntropyCheckReady', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EntropyCheckReady._() : super();
  factory EntropyCheckReady() => create();
  factory EntropyCheckReady.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EntropyCheckReady.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EntropyCheckReady clone() => EntropyCheckReady()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EntropyCheckReady copyWith(void Function(EntropyCheckReady) updates) => super.copyWith((message) => updates(message as EntropyCheckReady)) as EntropyCheckReady; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EntropyCheckReady create() => EntropyCheckReady._();
  EntropyCheckReady createEmptyInstance() => create();
  static $pb.PbList<EntropyCheckReady> createRepeated() => $pb.PbList<EntropyCheckReady>();
  @$core.pragma('dart2js:noInline')
  static EntropyCheckReady getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntropyCheckReady>(create);
  static EntropyCheckReady? _defaultInstance;
}

class EntropyCheckContinue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EntropyCheckContinue', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finish')
    ..hasRequiredFields = false
  ;

  EntropyCheckContinue._() : super();
  factory EntropyCheckContinue({
    $core.bool? finish,
  }) {
    final _result = create();
    if (finish != null) {
      _result.finish = finish;
    }
    return _result;
  }
  factory EntropyCheckContinue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EntropyCheckContinue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EntropyCheckContinue clone() => EntropyCheckContinue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EntropyCheckContinue copyWith(void Function(EntropyCheckContinue) updates) => super.copyWith((message) => updates(message as EntropyCheckContinue)) as EntropyCheckContinue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EntropyCheckContinue create() => EntropyCheckContinue._();
  EntropyCheckContinue createEmptyInstance() => create();
  static $pb.PbList<EntropyCheckContinue> createRepeated() => $pb.PbList<EntropyCheckContinue>();
  @$core.pragma('dart2js:noInline')
  static EntropyCheckContinue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntropyCheckContinue>(create);
  static EntropyCheckContinue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get finish => $_getBF(0);
  @$pb.TagNumber(1)
  set finish($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFinish() => $_has(0);
  @$pb.TagNumber(1)
  void clearFinish() => clearField(1);
}

class RecoveryDevice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecoveryDevice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wordCount', $pb.PbFieldType.OU3)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passphraseProtection')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pinProtection')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'language')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enforceWordlist')
    ..e<RecoveryDevice_RecoveryDeviceInputMethod>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputMethod', $pb.PbFieldType.OE, defaultOrMaker: RecoveryDevice_RecoveryDeviceInputMethod.ScrambledWords, valueOf: RecoveryDevice_RecoveryDeviceInputMethod.valueOf, enumValues: RecoveryDevice_RecoveryDeviceInputMethod.values)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'u2fCounter', $pb.PbFieldType.OU3)
    ..e<RecoveryType>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: RecoveryType.NormalRecovery, valueOf: RecoveryType.valueOf, enumValues: RecoveryType.values)
    ..e<BackupMethod>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backupMethod', $pb.PbFieldType.OE, defaultOrMaker: BackupMethod.Display, valueOf: BackupMethod.valueOf, enumValues: BackupMethod.values)
    ..hasRequiredFields = false
  ;

  RecoveryDevice._() : super();
  factory RecoveryDevice({
    $core.int? wordCount,
    $core.bool? passphraseProtection,
    $core.bool? pinProtection,
  @$core.Deprecated('This field is deprecated.')
    $core.String? language,
    $core.String? label,
    $core.bool? enforceWordlist,
    RecoveryDevice_RecoveryDeviceInputMethod? inputMethod,
    $core.int? u2fCounter,
    RecoveryType? type,
    BackupMethod? backupMethod,
  }) {
    final _result = create();
    if (wordCount != null) {
      _result.wordCount = wordCount;
    }
    if (passphraseProtection != null) {
      _result.passphraseProtection = passphraseProtection;
    }
    if (pinProtection != null) {
      _result.pinProtection = pinProtection;
    }
    if (language != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.language = language;
    }
    if (label != null) {
      _result.label = label;
    }
    if (enforceWordlist != null) {
      _result.enforceWordlist = enforceWordlist;
    }
    if (inputMethod != null) {
      _result.inputMethod = inputMethod;
    }
    if (u2fCounter != null) {
      _result.u2fCounter = u2fCounter;
    }
    if (type != null) {
      _result.type = type;
    }
    if (backupMethod != null) {
      _result.backupMethod = backupMethod;
    }
    return _result;
  }
  factory RecoveryDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecoveryDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecoveryDevice clone() => RecoveryDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecoveryDevice copyWith(void Function(RecoveryDevice) updates) => super.copyWith((message) => updates(message as RecoveryDevice)) as RecoveryDevice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecoveryDevice create() => RecoveryDevice._();
  RecoveryDevice createEmptyInstance() => create();
  static $pb.PbList<RecoveryDevice> createRepeated() => $pb.PbList<RecoveryDevice>();
  @$core.pragma('dart2js:noInline')
  static RecoveryDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecoveryDevice>(create);
  static RecoveryDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get wordCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set wordCount($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWordCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearWordCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get passphraseProtection => $_getBF(1);
  @$pb.TagNumber(2)
  set passphraseProtection($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassphraseProtection() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassphraseProtection() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get pinProtection => $_getBF(2);
  @$pb.TagNumber(3)
  set pinProtection($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPinProtection() => $_has(2);
  @$pb.TagNumber(3)
  void clearPinProtection() => clearField(3);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.String get language => $_getSZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set language($core.String v) { $_setString(3, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasLanguage() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearLanguage() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get label => $_getSZ(4);
  @$pb.TagNumber(5)
  set label($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLabel() => $_has(4);
  @$pb.TagNumber(5)
  void clearLabel() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get enforceWordlist => $_getBF(5);
  @$pb.TagNumber(6)
  set enforceWordlist($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEnforceWordlist() => $_has(5);
  @$pb.TagNumber(6)
  void clearEnforceWordlist() => clearField(6);

  @$pb.TagNumber(8)
  RecoveryDevice_RecoveryDeviceInputMethod get inputMethod => $_getN(6);
  @$pb.TagNumber(8)
  set inputMethod(RecoveryDevice_RecoveryDeviceInputMethod v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasInputMethod() => $_has(6);
  @$pb.TagNumber(8)
  void clearInputMethod() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get u2fCounter => $_getIZ(7);
  @$pb.TagNumber(9)
  set u2fCounter($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasU2fCounter() => $_has(7);
  @$pb.TagNumber(9)
  void clearU2fCounter() => clearField(9);

  @$pb.TagNumber(10)
  RecoveryType get type => $_getN(8);
  @$pb.TagNumber(10)
  set type(RecoveryType v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasType() => $_has(8);
  @$pb.TagNumber(10)
  void clearType() => clearField(10);

  @$pb.TagNumber(11)
  BackupMethod get backupMethod => $_getN(9);
  @$pb.TagNumber(11)
  set backupMethod(BackupMethod v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasBackupMethod() => $_has(9);
  @$pb.TagNumber(11)
  void clearBackupMethod() => clearField(11);
}

class WordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..e<WordRequest_WordRequestType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.QE, defaultOrMaker: WordRequest_WordRequestType.WordRequestType_Plain, valueOf: WordRequest_WordRequestType.valueOf, enumValues: WordRequest_WordRequestType.values)
  ;

  WordRequest._() : super();
  factory WordRequest({
    WordRequest_WordRequestType? type,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory WordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WordRequest clone() => WordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WordRequest copyWith(void Function(WordRequest) updates) => super.copyWith((message) => updates(message as WordRequest)) as WordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WordRequest create() => WordRequest._();
  WordRequest createEmptyInstance() => create();
  static $pb.PbList<WordRequest> createRepeated() => $pb.PbList<WordRequest>();
  @$core.pragma('dart2js:noInline')
  static WordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WordRequest>(create);
  static WordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  WordRequest_WordRequestType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(WordRequest_WordRequestType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
}

class WordAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WordAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'word')
  ;

  WordAck._() : super();
  factory WordAck({
    $core.String? word,
  }) {
    final _result = create();
    if (word != null) {
      _result.word = word;
    }
    return _result;
  }
  factory WordAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WordAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WordAck clone() => WordAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WordAck copyWith(void Function(WordAck) updates) => super.copyWith((message) => updates(message as WordAck)) as WordAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WordAck create() => WordAck._();
  WordAck createEmptyInstance() => create();
  static $pb.PbList<WordAck> createRepeated() => $pb.PbList<WordAck>();
  @$core.pragma('dart2js:noInline')
  static WordAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WordAck>(create);
  static WordAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get word => $_getSZ(0);
  @$pb.TagNumber(1)
  set word($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWord() => $_has(0);
  @$pb.TagNumber(1)
  void clearWord() => clearField(1);
}

class SetU2FCounter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetU2FCounter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'u2fCounter', $pb.PbFieldType.QU3)
  ;

  SetU2FCounter._() : super();
  factory SetU2FCounter({
    $core.int? u2fCounter,
  }) {
    final _result = create();
    if (u2fCounter != null) {
      _result.u2fCounter = u2fCounter;
    }
    return _result;
  }
  factory SetU2FCounter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetU2FCounter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetU2FCounter clone() => SetU2FCounter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetU2FCounter copyWith(void Function(SetU2FCounter) updates) => super.copyWith((message) => updates(message as SetU2FCounter)) as SetU2FCounter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetU2FCounter create() => SetU2FCounter._();
  SetU2FCounter createEmptyInstance() => create();
  static $pb.PbList<SetU2FCounter> createRepeated() => $pb.PbList<SetU2FCounter>();
  @$core.pragma('dart2js:noInline')
  static SetU2FCounter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetU2FCounter>(create);
  static SetU2FCounter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get u2fCounter => $_getIZ(0);
  @$pb.TagNumber(1)
  set u2fCounter($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasU2fCounter() => $_has(0);
  @$pb.TagNumber(1)
  void clearU2fCounter() => clearField(1);
}

class GetNextU2FCounter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNextU2FCounter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetNextU2FCounter._() : super();
  factory GetNextU2FCounter() => create();
  factory GetNextU2FCounter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNextU2FCounter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNextU2FCounter clone() => GetNextU2FCounter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNextU2FCounter copyWith(void Function(GetNextU2FCounter) updates) => super.copyWith((message) => updates(message as GetNextU2FCounter)) as GetNextU2FCounter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNextU2FCounter create() => GetNextU2FCounter._();
  GetNextU2FCounter createEmptyInstance() => create();
  static $pb.PbList<GetNextU2FCounter> createRepeated() => $pb.PbList<GetNextU2FCounter>();
  @$core.pragma('dart2js:noInline')
  static GetNextU2FCounter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNextU2FCounter>(create);
  static GetNextU2FCounter? _defaultInstance;
}

class NextU2FCounter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NextU2FCounter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'u2fCounter', $pb.PbFieldType.QU3)
  ;

  NextU2FCounter._() : super();
  factory NextU2FCounter({
    $core.int? u2fCounter,
  }) {
    final _result = create();
    if (u2fCounter != null) {
      _result.u2fCounter = u2fCounter;
    }
    return _result;
  }
  factory NextU2FCounter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NextU2FCounter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NextU2FCounter clone() => NextU2FCounter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NextU2FCounter copyWith(void Function(NextU2FCounter) updates) => super.copyWith((message) => updates(message as NextU2FCounter)) as NextU2FCounter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NextU2FCounter create() => NextU2FCounter._();
  NextU2FCounter createEmptyInstance() => create();
  static $pb.PbList<NextU2FCounter> createRepeated() => $pb.PbList<NextU2FCounter>();
  @$core.pragma('dart2js:noInline')
  static NextU2FCounter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NextU2FCounter>(create);
  static NextU2FCounter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get u2fCounter => $_getIZ(0);
  @$pb.TagNumber(1)
  set u2fCounter($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasU2fCounter() => $_has(0);
  @$pb.TagNumber(1)
  void clearU2fCounter() => clearField(1);
}

class DoPreauthorized extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DoPreauthorized', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DoPreauthorized._() : super();
  factory DoPreauthorized() => create();
  factory DoPreauthorized.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoPreauthorized.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoPreauthorized clone() => DoPreauthorized()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoPreauthorized copyWith(void Function(DoPreauthorized) updates) => super.copyWith((message) => updates(message as DoPreauthorized)) as DoPreauthorized; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DoPreauthorized create() => DoPreauthorized._();
  DoPreauthorized createEmptyInstance() => create();
  static $pb.PbList<DoPreauthorized> createRepeated() => $pb.PbList<DoPreauthorized>();
  @$core.pragma('dart2js:noInline')
  static DoPreauthorized getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoPreauthorized>(create);
  static DoPreauthorized? _defaultInstance;
}

class PreauthorizedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PreauthorizedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PreauthorizedRequest._() : super();
  factory PreauthorizedRequest() => create();
  factory PreauthorizedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PreauthorizedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PreauthorizedRequest clone() => PreauthorizedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PreauthorizedRequest copyWith(void Function(PreauthorizedRequest) updates) => super.copyWith((message) => updates(message as PreauthorizedRequest)) as PreauthorizedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PreauthorizedRequest create() => PreauthorizedRequest._();
  PreauthorizedRequest createEmptyInstance() => create();
  static $pb.PbList<PreauthorizedRequest> createRepeated() => $pb.PbList<PreauthorizedRequest>();
  @$core.pragma('dart2js:noInline')
  static PreauthorizedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PreauthorizedRequest>(create);
  static PreauthorizedRequest? _defaultInstance;
}

class CancelAuthorization extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CancelAuthorization', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CancelAuthorization._() : super();
  factory CancelAuthorization() => create();
  factory CancelAuthorization.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelAuthorization.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelAuthorization clone() => CancelAuthorization()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelAuthorization copyWith(void Function(CancelAuthorization) updates) => super.copyWith((message) => updates(message as CancelAuthorization)) as CancelAuthorization; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CancelAuthorization create() => CancelAuthorization._();
  CancelAuthorization createEmptyInstance() => create();
  static $pb.PbList<CancelAuthorization> createRepeated() => $pb.PbList<CancelAuthorization>();
  @$core.pragma('dart2js:noInline')
  static CancelAuthorization getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelAuthorization>(create);
  static CancelAuthorization? _defaultInstance;
}

class RebootToBootloader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RebootToBootloader', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..e<RebootToBootloader_BootCommand>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bootCommand', $pb.PbFieldType.OE, defaultOrMaker: RebootToBootloader_BootCommand.STOP_AND_WAIT, valueOf: RebootToBootloader_BootCommand.valueOf, enumValues: RebootToBootloader_BootCommand.values)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firmwareHeader', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RebootToBootloader._() : super();
  factory RebootToBootloader({
    RebootToBootloader_BootCommand? bootCommand,
    $core.List<$core.int>? firmwareHeader,
  }) {
    final _result = create();
    if (bootCommand != null) {
      _result.bootCommand = bootCommand;
    }
    if (firmwareHeader != null) {
      _result.firmwareHeader = firmwareHeader;
    }
    return _result;
  }
  factory RebootToBootloader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RebootToBootloader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RebootToBootloader clone() => RebootToBootloader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RebootToBootloader copyWith(void Function(RebootToBootloader) updates) => super.copyWith((message) => updates(message as RebootToBootloader)) as RebootToBootloader; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RebootToBootloader create() => RebootToBootloader._();
  RebootToBootloader createEmptyInstance() => create();
  static $pb.PbList<RebootToBootloader> createRepeated() => $pb.PbList<RebootToBootloader>();
  @$core.pragma('dart2js:noInline')
  static RebootToBootloader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RebootToBootloader>(create);
  static RebootToBootloader? _defaultInstance;

  @$pb.TagNumber(1)
  RebootToBootloader_BootCommand get bootCommand => $_getN(0);
  @$pb.TagNumber(1)
  set bootCommand(RebootToBootloader_BootCommand v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBootCommand() => $_has(0);
  @$pb.TagNumber(1)
  void clearBootCommand() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get firmwareHeader => $_getN(1);
  @$pb.TagNumber(2)
  set firmwareHeader($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirmwareHeader() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirmwareHeader() => clearField(2);
}

class GetNonce extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNonce', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetNonce._() : super();
  factory GetNonce() => create();
  factory GetNonce.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNonce.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNonce clone() => GetNonce()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNonce copyWith(void Function(GetNonce) updates) => super.copyWith((message) => updates(message as GetNonce)) as GetNonce; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNonce create() => GetNonce._();
  GetNonce createEmptyInstance() => create();
  static $pb.PbList<GetNonce> createRepeated() => $pb.PbList<GetNonce>();
  @$core.pragma('dart2js:noInline')
  static GetNonce getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNonce>(create);
  static GetNonce? _defaultInstance;
}

class Nonce extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Nonce', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nonce', $pb.PbFieldType.QY)
  ;

  Nonce._() : super();
  factory Nonce({
    $core.List<$core.int>? nonce,
  }) {
    final _result = create();
    if (nonce != null) {
      _result.nonce = nonce;
    }
    return _result;
  }
  factory Nonce.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Nonce.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Nonce clone() => Nonce()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Nonce copyWith(void Function(Nonce) updates) => super.copyWith((message) => updates(message as Nonce)) as Nonce; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Nonce create() => Nonce._();
  Nonce createEmptyInstance() => create();
  static $pb.PbList<Nonce> createRepeated() => $pb.PbList<Nonce>();
  @$core.pragma('dart2js:noInline')
  static Nonce getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Nonce>(create);
  static Nonce? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get nonce => $_getN(0);
  @$pb.TagNumber(1)
  set nonce($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);
}

class UnlockPath extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnlockPath', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mac', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UnlockPath._() : super();
  factory UnlockPath({
    $core.Iterable<$core.int>? addressN,
    $core.List<$core.int>? mac,
  }) {
    final _result = create();
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (mac != null) {
      _result.mac = mac;
    }
    return _result;
  }
  factory UnlockPath.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnlockPath.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnlockPath clone() => UnlockPath()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnlockPath copyWith(void Function(UnlockPath) updates) => super.copyWith((message) => updates(message as UnlockPath)) as UnlockPath; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnlockPath create() => UnlockPath._();
  UnlockPath createEmptyInstance() => create();
  static $pb.PbList<UnlockPath> createRepeated() => $pb.PbList<UnlockPath>();
  @$core.pragma('dart2js:noInline')
  static UnlockPath getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnlockPath>(create);
  static UnlockPath? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get addressN => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get mac => $_getN(1);
  @$pb.TagNumber(2)
  set mac($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMac() => $_has(1);
  @$pb.TagNumber(2)
  void clearMac() => clearField(2);
}

class UnlockedPathRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnlockedPathRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mac', $pb.PbFieldType.QY)
  ;

  UnlockedPathRequest._() : super();
  factory UnlockedPathRequest({
    $core.List<$core.int>? mac,
  }) {
    final _result = create();
    if (mac != null) {
      _result.mac = mac;
    }
    return _result;
  }
  factory UnlockedPathRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnlockedPathRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnlockedPathRequest clone() => UnlockedPathRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnlockedPathRequest copyWith(void Function(UnlockedPathRequest) updates) => super.copyWith((message) => updates(message as UnlockedPathRequest)) as UnlockedPathRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnlockedPathRequest create() => UnlockedPathRequest._();
  UnlockedPathRequest createEmptyInstance() => create();
  static $pb.PbList<UnlockedPathRequest> createRepeated() => $pb.PbList<UnlockedPathRequest>();
  @$core.pragma('dart2js:noInline')
  static UnlockedPathRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnlockedPathRequest>(create);
  static UnlockedPathRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get mac => $_getN(0);
  @$pb.TagNumber(1)
  set mac($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMac() => $_has(0);
  @$pb.TagNumber(1)
  void clearMac() => clearField(1);
}

class ShowDeviceTutorial extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ShowDeviceTutorial', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ShowDeviceTutorial._() : super();
  factory ShowDeviceTutorial() => create();
  factory ShowDeviceTutorial.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShowDeviceTutorial.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShowDeviceTutorial clone() => ShowDeviceTutorial()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShowDeviceTutorial copyWith(void Function(ShowDeviceTutorial) updates) => super.copyWith((message) => updates(message as ShowDeviceTutorial)) as ShowDeviceTutorial; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShowDeviceTutorial create() => ShowDeviceTutorial._();
  ShowDeviceTutorial createEmptyInstance() => create();
  static $pb.PbList<ShowDeviceTutorial> createRepeated() => $pb.PbList<ShowDeviceTutorial>();
  @$core.pragma('dart2js:noInline')
  static ShowDeviceTutorial getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShowDeviceTutorial>(create);
  static ShowDeviceTutorial? _defaultInstance;
}

class UnlockBootloader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnlockBootloader', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UnlockBootloader._() : super();
  factory UnlockBootloader() => create();
  factory UnlockBootloader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnlockBootloader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnlockBootloader clone() => UnlockBootloader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnlockBootloader copyWith(void Function(UnlockBootloader) updates) => super.copyWith((message) => updates(message as UnlockBootloader)) as UnlockBootloader; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnlockBootloader create() => UnlockBootloader._();
  UnlockBootloader createEmptyInstance() => create();
  static $pb.PbList<UnlockBootloader> createRepeated() => $pb.PbList<UnlockBootloader>();
  @$core.pragma('dart2js:noInline')
  static UnlockBootloader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnlockBootloader>(create);
  static UnlockBootloader? _defaultInstance;
}

class SetBrightness extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetBrightness', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SetBrightness._() : super();
  factory SetBrightness({
    $core.int? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory SetBrightness.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetBrightness.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetBrightness clone() => SetBrightness()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetBrightness copyWith(void Function(SetBrightness) updates) => super.copyWith((message) => updates(message as SetBrightness)) as SetBrightness; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetBrightness create() => SetBrightness._();
  SetBrightness createEmptyInstance() => create();
  static $pb.PbList<SetBrightness> createRepeated() => $pb.PbList<SetBrightness>();
  @$core.pragma('dart2js:noInline')
  static SetBrightness getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetBrightness>(create);
  static SetBrightness? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class GetSerialNumber extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSerialNumber', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetSerialNumber._() : super();
  factory GetSerialNumber() => create();
  factory GetSerialNumber.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSerialNumber.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSerialNumber clone() => GetSerialNumber()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSerialNumber copyWith(void Function(GetSerialNumber) updates) => super.copyWith((message) => updates(message as GetSerialNumber)) as GetSerialNumber; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSerialNumber create() => GetSerialNumber._();
  GetSerialNumber createEmptyInstance() => create();
  static $pb.PbList<GetSerialNumber> createRepeated() => $pb.PbList<GetSerialNumber>();
  @$core.pragma('dart2js:noInline')
  static GetSerialNumber getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSerialNumber>(create);
  static GetSerialNumber? _defaultInstance;
}

class SerialNumber extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SerialNumber', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.management'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serialNumber')
  ;

  SerialNumber._() : super();
  factory SerialNumber({
    $core.String? serialNumber,
  }) {
    final _result = create();
    if (serialNumber != null) {
      _result.serialNumber = serialNumber;
    }
    return _result;
  }
  factory SerialNumber.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SerialNumber.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SerialNumber clone() => SerialNumber()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SerialNumber copyWith(void Function(SerialNumber) updates) => super.copyWith((message) => updates(message as SerialNumber)) as SerialNumber; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SerialNumber create() => SerialNumber._();
  SerialNumber createEmptyInstance() => create();
  static $pb.PbList<SerialNumber> createRepeated() => $pb.PbList<SerialNumber>();
  @$core.pragma('dart2js:noInline')
  static SerialNumber getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SerialNumber>(create);
  static SerialNumber? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serialNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set serialNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSerialNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearSerialNumber() => clearField(1);
}

