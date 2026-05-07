///
//  Generated code. Do not modify.
//  source: messages-thp.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'messages-thp.pbenum.dart';

export 'messages-thp.pbenum.dart';

class ThpDeviceProperties extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpDeviceProperties', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'internalModel')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modelVariant', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'protocolVersionMajor', $pb.PbFieldType.QU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'protocolVersionMinor', $pb.PbFieldType.QU3)
    ..pc<ThpPairingMethod>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pairingMethods', $pb.PbFieldType.PE, valueOf: ThpPairingMethod.valueOf, enumValues: ThpPairingMethod.values, defaultEnumValue: ThpPairingMethod.SkipPairing)
  ;

  ThpDeviceProperties._() : super();
  factory ThpDeviceProperties({
    $core.String? internalModel,
    $core.int? modelVariant,
    $core.int? protocolVersionMajor,
    $core.int? protocolVersionMinor,
    $core.Iterable<ThpPairingMethod>? pairingMethods,
  }) {
    final _result = create();
    if (internalModel != null) {
      _result.internalModel = internalModel;
    }
    if (modelVariant != null) {
      _result.modelVariant = modelVariant;
    }
    if (protocolVersionMajor != null) {
      _result.protocolVersionMajor = protocolVersionMajor;
    }
    if (protocolVersionMinor != null) {
      _result.protocolVersionMinor = protocolVersionMinor;
    }
    if (pairingMethods != null) {
      _result.pairingMethods.addAll(pairingMethods);
    }
    return _result;
  }
  factory ThpDeviceProperties.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpDeviceProperties.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpDeviceProperties clone() => ThpDeviceProperties()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpDeviceProperties copyWith(void Function(ThpDeviceProperties) updates) => super.copyWith((message) => updates(message as ThpDeviceProperties)) as ThpDeviceProperties; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpDeviceProperties create() => ThpDeviceProperties._();
  ThpDeviceProperties createEmptyInstance() => create();
  static $pb.PbList<ThpDeviceProperties> createRepeated() => $pb.PbList<ThpDeviceProperties>();
  @$core.pragma('dart2js:noInline')
  static ThpDeviceProperties getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpDeviceProperties>(create);
  static ThpDeviceProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get internalModel => $_getSZ(0);
  @$pb.TagNumber(1)
  set internalModel($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInternalModel() => $_has(0);
  @$pb.TagNumber(1)
  void clearInternalModel() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get modelVariant => $_getIZ(1);
  @$pb.TagNumber(2)
  set modelVariant($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasModelVariant() => $_has(1);
  @$pb.TagNumber(2)
  void clearModelVariant() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get protocolVersionMajor => $_getIZ(2);
  @$pb.TagNumber(3)
  set protocolVersionMajor($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProtocolVersionMajor() => $_has(2);
  @$pb.TagNumber(3)
  void clearProtocolVersionMajor() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get protocolVersionMinor => $_getIZ(3);
  @$pb.TagNumber(4)
  set protocolVersionMinor($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProtocolVersionMinor() => $_has(3);
  @$pb.TagNumber(4)
  void clearProtocolVersionMinor() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<ThpPairingMethod> get pairingMethods => $_getList(4);
}

class ThpHandshakeCompletionReqNoisePayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpHandshakeCompletionReqNoisePayload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hostPairingCredential', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ThpHandshakeCompletionReqNoisePayload._() : super();
  factory ThpHandshakeCompletionReqNoisePayload({
    $core.List<$core.int>? hostPairingCredential,
  }) {
    final _result = create();
    if (hostPairingCredential != null) {
      _result.hostPairingCredential = hostPairingCredential;
    }
    return _result;
  }
  factory ThpHandshakeCompletionReqNoisePayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpHandshakeCompletionReqNoisePayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpHandshakeCompletionReqNoisePayload clone() => ThpHandshakeCompletionReqNoisePayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpHandshakeCompletionReqNoisePayload copyWith(void Function(ThpHandshakeCompletionReqNoisePayload) updates) => super.copyWith((message) => updates(message as ThpHandshakeCompletionReqNoisePayload)) as ThpHandshakeCompletionReqNoisePayload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpHandshakeCompletionReqNoisePayload create() => ThpHandshakeCompletionReqNoisePayload._();
  ThpHandshakeCompletionReqNoisePayload createEmptyInstance() => create();
  static $pb.PbList<ThpHandshakeCompletionReqNoisePayload> createRepeated() => $pb.PbList<ThpHandshakeCompletionReqNoisePayload>();
  @$core.pragma('dart2js:noInline')
  static ThpHandshakeCompletionReqNoisePayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpHandshakeCompletionReqNoisePayload>(create);
  static ThpHandshakeCompletionReqNoisePayload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hostPairingCredential => $_getN(0);
  @$pb.TagNumber(1)
  set hostPairingCredential($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHostPairingCredential() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostPairingCredential() => clearField(1);
}

class ThpCreateNewSession extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpCreateNewSession', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passphrase')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'onDevice')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deriveCardano')
    ..hasRequiredFields = false
  ;

  ThpCreateNewSession._() : super();
  factory ThpCreateNewSession({
    $core.String? passphrase,
    $core.bool? onDevice,
    $core.bool? deriveCardano,
  }) {
    final _result = create();
    if (passphrase != null) {
      _result.passphrase = passphrase;
    }
    if (onDevice != null) {
      _result.onDevice = onDevice;
    }
    if (deriveCardano != null) {
      _result.deriveCardano = deriveCardano;
    }
    return _result;
  }
  factory ThpCreateNewSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpCreateNewSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpCreateNewSession clone() => ThpCreateNewSession()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpCreateNewSession copyWith(void Function(ThpCreateNewSession) updates) => super.copyWith((message) => updates(message as ThpCreateNewSession)) as ThpCreateNewSession; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpCreateNewSession create() => ThpCreateNewSession._();
  ThpCreateNewSession createEmptyInstance() => create();
  static $pb.PbList<ThpCreateNewSession> createRepeated() => $pb.PbList<ThpCreateNewSession>();
  @$core.pragma('dart2js:noInline')
  static ThpCreateNewSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpCreateNewSession>(create);
  static ThpCreateNewSession? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get passphrase => $_getSZ(0);
  @$pb.TagNumber(1)
  set passphrase($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassphrase() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassphrase() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get onDevice => $_getBF(1);
  @$pb.TagNumber(2)
  set onDevice($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOnDevice() => $_has(1);
  @$pb.TagNumber(2)
  void clearOnDevice() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get deriveCardano => $_getBF(2);
  @$pb.TagNumber(3)
  set deriveCardano($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeriveCardano() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeriveCardano() => clearField(3);
}

class ThpPairingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpPairingRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hostName')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appName')
  ;

  ThpPairingRequest._() : super();
  factory ThpPairingRequest({
    $core.String? hostName,
    $core.String? appName,
  }) {
    final _result = create();
    if (hostName != null) {
      _result.hostName = hostName;
    }
    if (appName != null) {
      _result.appName = appName;
    }
    return _result;
  }
  factory ThpPairingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpPairingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpPairingRequest clone() => ThpPairingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpPairingRequest copyWith(void Function(ThpPairingRequest) updates) => super.copyWith((message) => updates(message as ThpPairingRequest)) as ThpPairingRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpPairingRequest create() => ThpPairingRequest._();
  ThpPairingRequest createEmptyInstance() => create();
  static $pb.PbList<ThpPairingRequest> createRepeated() => $pb.PbList<ThpPairingRequest>();
  @$core.pragma('dart2js:noInline')
  static ThpPairingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpPairingRequest>(create);
  static ThpPairingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hostName => $_getSZ(0);
  @$pb.TagNumber(1)
  set hostName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHostName() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get appName => $_getSZ(1);
  @$pb.TagNumber(2)
  set appName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppName() => clearField(2);
}

class ThpPairingRequestApproved extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpPairingRequestApproved', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ThpPairingRequestApproved._() : super();
  factory ThpPairingRequestApproved() => create();
  factory ThpPairingRequestApproved.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpPairingRequestApproved.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpPairingRequestApproved clone() => ThpPairingRequestApproved()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpPairingRequestApproved copyWith(void Function(ThpPairingRequestApproved) updates) => super.copyWith((message) => updates(message as ThpPairingRequestApproved)) as ThpPairingRequestApproved; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpPairingRequestApproved create() => ThpPairingRequestApproved._();
  ThpPairingRequestApproved createEmptyInstance() => create();
  static $pb.PbList<ThpPairingRequestApproved> createRepeated() => $pb.PbList<ThpPairingRequestApproved>();
  @$core.pragma('dart2js:noInline')
  static ThpPairingRequestApproved getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpPairingRequestApproved>(create);
  static ThpPairingRequestApproved? _defaultInstance;
}

class ThpSelectMethod extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpSelectMethod', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..e<ThpPairingMethod>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'selectedPairingMethod', $pb.PbFieldType.QE, defaultOrMaker: ThpPairingMethod.SkipPairing, valueOf: ThpPairingMethod.valueOf, enumValues: ThpPairingMethod.values)
  ;

  ThpSelectMethod._() : super();
  factory ThpSelectMethod({
    ThpPairingMethod? selectedPairingMethod,
  }) {
    final _result = create();
    if (selectedPairingMethod != null) {
      _result.selectedPairingMethod = selectedPairingMethod;
    }
    return _result;
  }
  factory ThpSelectMethod.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpSelectMethod.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpSelectMethod clone() => ThpSelectMethod()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpSelectMethod copyWith(void Function(ThpSelectMethod) updates) => super.copyWith((message) => updates(message as ThpSelectMethod)) as ThpSelectMethod; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpSelectMethod create() => ThpSelectMethod._();
  ThpSelectMethod createEmptyInstance() => create();
  static $pb.PbList<ThpSelectMethod> createRepeated() => $pb.PbList<ThpSelectMethod>();
  @$core.pragma('dart2js:noInline')
  static ThpSelectMethod getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpSelectMethod>(create);
  static ThpSelectMethod? _defaultInstance;

  @$pb.TagNumber(1)
  ThpPairingMethod get selectedPairingMethod => $_getN(0);
  @$pb.TagNumber(1)
  set selectedPairingMethod(ThpPairingMethod v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSelectedPairingMethod() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelectedPairingMethod() => clearField(1);
}

class ThpPairingPreparationsFinished extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpPairingPreparationsFinished', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ThpPairingPreparationsFinished._() : super();
  factory ThpPairingPreparationsFinished() => create();
  factory ThpPairingPreparationsFinished.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpPairingPreparationsFinished.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpPairingPreparationsFinished clone() => ThpPairingPreparationsFinished()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpPairingPreparationsFinished copyWith(void Function(ThpPairingPreparationsFinished) updates) => super.copyWith((message) => updates(message as ThpPairingPreparationsFinished)) as ThpPairingPreparationsFinished; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpPairingPreparationsFinished create() => ThpPairingPreparationsFinished._();
  ThpPairingPreparationsFinished createEmptyInstance() => create();
  static $pb.PbList<ThpPairingPreparationsFinished> createRepeated() => $pb.PbList<ThpPairingPreparationsFinished>();
  @$core.pragma('dart2js:noInline')
  static ThpPairingPreparationsFinished getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpPairingPreparationsFinished>(create);
  static ThpPairingPreparationsFinished? _defaultInstance;
}

class ThpCodeEntryCommitment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpCodeEntryCommitment', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitment', $pb.PbFieldType.QY)
  ;

  ThpCodeEntryCommitment._() : super();
  factory ThpCodeEntryCommitment({
    $core.List<$core.int>? commitment,
  }) {
    final _result = create();
    if (commitment != null) {
      _result.commitment = commitment;
    }
    return _result;
  }
  factory ThpCodeEntryCommitment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpCodeEntryCommitment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpCodeEntryCommitment clone() => ThpCodeEntryCommitment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpCodeEntryCommitment copyWith(void Function(ThpCodeEntryCommitment) updates) => super.copyWith((message) => updates(message as ThpCodeEntryCommitment)) as ThpCodeEntryCommitment; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryCommitment create() => ThpCodeEntryCommitment._();
  ThpCodeEntryCommitment createEmptyInstance() => create();
  static $pb.PbList<ThpCodeEntryCommitment> createRepeated() => $pb.PbList<ThpCodeEntryCommitment>();
  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryCommitment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpCodeEntryCommitment>(create);
  static ThpCodeEntryCommitment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get commitment => $_getN(0);
  @$pb.TagNumber(1)
  set commitment($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommitment() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommitment() => clearField(1);
}

class ThpCodeEntryChallenge extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpCodeEntryChallenge', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'challenge', $pb.PbFieldType.QY)
  ;

  ThpCodeEntryChallenge._() : super();
  factory ThpCodeEntryChallenge({
    $core.List<$core.int>? challenge,
  }) {
    final _result = create();
    if (challenge != null) {
      _result.challenge = challenge;
    }
    return _result;
  }
  factory ThpCodeEntryChallenge.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpCodeEntryChallenge.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpCodeEntryChallenge clone() => ThpCodeEntryChallenge()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpCodeEntryChallenge copyWith(void Function(ThpCodeEntryChallenge) updates) => super.copyWith((message) => updates(message as ThpCodeEntryChallenge)) as ThpCodeEntryChallenge; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryChallenge create() => ThpCodeEntryChallenge._();
  ThpCodeEntryChallenge createEmptyInstance() => create();
  static $pb.PbList<ThpCodeEntryChallenge> createRepeated() => $pb.PbList<ThpCodeEntryChallenge>();
  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryChallenge getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpCodeEntryChallenge>(create);
  static ThpCodeEntryChallenge? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get challenge => $_getN(0);
  @$pb.TagNumber(1)
  set challenge($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => clearField(1);
}

class ThpCodeEntryCpaceTrezor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpCodeEntryCpaceTrezor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cpaceTrezorPublicKey', $pb.PbFieldType.QY)
  ;

  ThpCodeEntryCpaceTrezor._() : super();
  factory ThpCodeEntryCpaceTrezor({
    $core.List<$core.int>? cpaceTrezorPublicKey,
  }) {
    final _result = create();
    if (cpaceTrezorPublicKey != null) {
      _result.cpaceTrezorPublicKey = cpaceTrezorPublicKey;
    }
    return _result;
  }
  factory ThpCodeEntryCpaceTrezor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpCodeEntryCpaceTrezor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpCodeEntryCpaceTrezor clone() => ThpCodeEntryCpaceTrezor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpCodeEntryCpaceTrezor copyWith(void Function(ThpCodeEntryCpaceTrezor) updates) => super.copyWith((message) => updates(message as ThpCodeEntryCpaceTrezor)) as ThpCodeEntryCpaceTrezor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryCpaceTrezor create() => ThpCodeEntryCpaceTrezor._();
  ThpCodeEntryCpaceTrezor createEmptyInstance() => create();
  static $pb.PbList<ThpCodeEntryCpaceTrezor> createRepeated() => $pb.PbList<ThpCodeEntryCpaceTrezor>();
  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryCpaceTrezor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpCodeEntryCpaceTrezor>(create);
  static ThpCodeEntryCpaceTrezor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get cpaceTrezorPublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set cpaceTrezorPublicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCpaceTrezorPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearCpaceTrezorPublicKey() => clearField(1);
}

class ThpCodeEntryCpaceHostTag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpCodeEntryCpaceHostTag', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cpaceHostPublicKey', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tag', $pb.PbFieldType.QY)
  ;

  ThpCodeEntryCpaceHostTag._() : super();
  factory ThpCodeEntryCpaceHostTag({
    $core.List<$core.int>? cpaceHostPublicKey,
    $core.List<$core.int>? tag,
  }) {
    final _result = create();
    if (cpaceHostPublicKey != null) {
      _result.cpaceHostPublicKey = cpaceHostPublicKey;
    }
    if (tag != null) {
      _result.tag = tag;
    }
    return _result;
  }
  factory ThpCodeEntryCpaceHostTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpCodeEntryCpaceHostTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpCodeEntryCpaceHostTag clone() => ThpCodeEntryCpaceHostTag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpCodeEntryCpaceHostTag copyWith(void Function(ThpCodeEntryCpaceHostTag) updates) => super.copyWith((message) => updates(message as ThpCodeEntryCpaceHostTag)) as ThpCodeEntryCpaceHostTag; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryCpaceHostTag create() => ThpCodeEntryCpaceHostTag._();
  ThpCodeEntryCpaceHostTag createEmptyInstance() => create();
  static $pb.PbList<ThpCodeEntryCpaceHostTag> createRepeated() => $pb.PbList<ThpCodeEntryCpaceHostTag>();
  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryCpaceHostTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpCodeEntryCpaceHostTag>(create);
  static ThpCodeEntryCpaceHostTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get cpaceHostPublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set cpaceHostPublicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCpaceHostPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearCpaceHostPublicKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get tag => $_getN(1);
  @$pb.TagNumber(2)
  set tag($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTag() => $_has(1);
  @$pb.TagNumber(2)
  void clearTag() => clearField(2);
}

class ThpCodeEntrySecret extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpCodeEntrySecret', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secret', $pb.PbFieldType.QY)
  ;

  ThpCodeEntrySecret._() : super();
  factory ThpCodeEntrySecret({
    $core.List<$core.int>? secret,
  }) {
    final _result = create();
    if (secret != null) {
      _result.secret = secret;
    }
    return _result;
  }
  factory ThpCodeEntrySecret.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpCodeEntrySecret.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpCodeEntrySecret clone() => ThpCodeEntrySecret()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpCodeEntrySecret copyWith(void Function(ThpCodeEntrySecret) updates) => super.copyWith((message) => updates(message as ThpCodeEntrySecret)) as ThpCodeEntrySecret; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpCodeEntrySecret create() => ThpCodeEntrySecret._();
  ThpCodeEntrySecret createEmptyInstance() => create();
  static $pb.PbList<ThpCodeEntrySecret> createRepeated() => $pb.PbList<ThpCodeEntrySecret>();
  @$core.pragma('dart2js:noInline')
  static ThpCodeEntrySecret getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpCodeEntrySecret>(create);
  static ThpCodeEntrySecret? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get secret => $_getN(0);
  @$pb.TagNumber(1)
  set secret($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSecret() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecret() => clearField(1);
}

class ThpQrCodeTag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpQrCodeTag', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tag', $pb.PbFieldType.QY)
  ;

  ThpQrCodeTag._() : super();
  factory ThpQrCodeTag({
    $core.List<$core.int>? tag,
  }) {
    final _result = create();
    if (tag != null) {
      _result.tag = tag;
    }
    return _result;
  }
  factory ThpQrCodeTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpQrCodeTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpQrCodeTag clone() => ThpQrCodeTag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpQrCodeTag copyWith(void Function(ThpQrCodeTag) updates) => super.copyWith((message) => updates(message as ThpQrCodeTag)) as ThpQrCodeTag; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpQrCodeTag create() => ThpQrCodeTag._();
  ThpQrCodeTag createEmptyInstance() => create();
  static $pb.PbList<ThpQrCodeTag> createRepeated() => $pb.PbList<ThpQrCodeTag>();
  @$core.pragma('dart2js:noInline')
  static ThpQrCodeTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpQrCodeTag>(create);
  static ThpQrCodeTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get tag => $_getN(0);
  @$pb.TagNumber(1)
  set tag($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => clearField(1);
}

class ThpQrCodeSecret extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpQrCodeSecret', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secret', $pb.PbFieldType.QY)
  ;

  ThpQrCodeSecret._() : super();
  factory ThpQrCodeSecret({
    $core.List<$core.int>? secret,
  }) {
    final _result = create();
    if (secret != null) {
      _result.secret = secret;
    }
    return _result;
  }
  factory ThpQrCodeSecret.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpQrCodeSecret.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpQrCodeSecret clone() => ThpQrCodeSecret()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpQrCodeSecret copyWith(void Function(ThpQrCodeSecret) updates) => super.copyWith((message) => updates(message as ThpQrCodeSecret)) as ThpQrCodeSecret; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpQrCodeSecret create() => ThpQrCodeSecret._();
  ThpQrCodeSecret createEmptyInstance() => create();
  static $pb.PbList<ThpQrCodeSecret> createRepeated() => $pb.PbList<ThpQrCodeSecret>();
  @$core.pragma('dart2js:noInline')
  static ThpQrCodeSecret getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpQrCodeSecret>(create);
  static ThpQrCodeSecret? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get secret => $_getN(0);
  @$pb.TagNumber(1)
  set secret($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSecret() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecret() => clearField(1);
}

class ThpNfcTagHost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpNfcTagHost', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tag', $pb.PbFieldType.QY)
  ;

  ThpNfcTagHost._() : super();
  factory ThpNfcTagHost({
    $core.List<$core.int>? tag,
  }) {
    final _result = create();
    if (tag != null) {
      _result.tag = tag;
    }
    return _result;
  }
  factory ThpNfcTagHost.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpNfcTagHost.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpNfcTagHost clone() => ThpNfcTagHost()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpNfcTagHost copyWith(void Function(ThpNfcTagHost) updates) => super.copyWith((message) => updates(message as ThpNfcTagHost)) as ThpNfcTagHost; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpNfcTagHost create() => ThpNfcTagHost._();
  ThpNfcTagHost createEmptyInstance() => create();
  static $pb.PbList<ThpNfcTagHost> createRepeated() => $pb.PbList<ThpNfcTagHost>();
  @$core.pragma('dart2js:noInline')
  static ThpNfcTagHost getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpNfcTagHost>(create);
  static ThpNfcTagHost? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get tag => $_getN(0);
  @$pb.TagNumber(1)
  set tag($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => clearField(1);
}

class ThpNfcTagTrezor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpNfcTagTrezor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tag', $pb.PbFieldType.QY)
  ;

  ThpNfcTagTrezor._() : super();
  factory ThpNfcTagTrezor({
    $core.List<$core.int>? tag,
  }) {
    final _result = create();
    if (tag != null) {
      _result.tag = tag;
    }
    return _result;
  }
  factory ThpNfcTagTrezor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpNfcTagTrezor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpNfcTagTrezor clone() => ThpNfcTagTrezor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpNfcTagTrezor copyWith(void Function(ThpNfcTagTrezor) updates) => super.copyWith((message) => updates(message as ThpNfcTagTrezor)) as ThpNfcTagTrezor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpNfcTagTrezor create() => ThpNfcTagTrezor._();
  ThpNfcTagTrezor createEmptyInstance() => create();
  static $pb.PbList<ThpNfcTagTrezor> createRepeated() => $pb.PbList<ThpNfcTagTrezor>();
  @$core.pragma('dart2js:noInline')
  static ThpNfcTagTrezor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpNfcTagTrezor>(create);
  static ThpNfcTagTrezor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get tag => $_getN(0);
  @$pb.TagNumber(1)
  set tag($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => clearField(1);
}

class ThpCredentialRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpCredentialRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hostStaticPublicKey', $pb.PbFieldType.QY)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autoconnect')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'credential', $pb.PbFieldType.OY)
  ;

  ThpCredentialRequest._() : super();
  factory ThpCredentialRequest({
    $core.List<$core.int>? hostStaticPublicKey,
    $core.bool? autoconnect,
    $core.List<$core.int>? credential,
  }) {
    final _result = create();
    if (hostStaticPublicKey != null) {
      _result.hostStaticPublicKey = hostStaticPublicKey;
    }
    if (autoconnect != null) {
      _result.autoconnect = autoconnect;
    }
    if (credential != null) {
      _result.credential = credential;
    }
    return _result;
  }
  factory ThpCredentialRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpCredentialRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpCredentialRequest clone() => ThpCredentialRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpCredentialRequest copyWith(void Function(ThpCredentialRequest) updates) => super.copyWith((message) => updates(message as ThpCredentialRequest)) as ThpCredentialRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpCredentialRequest create() => ThpCredentialRequest._();
  ThpCredentialRequest createEmptyInstance() => create();
  static $pb.PbList<ThpCredentialRequest> createRepeated() => $pb.PbList<ThpCredentialRequest>();
  @$core.pragma('dart2js:noInline')
  static ThpCredentialRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpCredentialRequest>(create);
  static ThpCredentialRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hostStaticPublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set hostStaticPublicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHostStaticPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostStaticPublicKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get autoconnect => $_getBF(1);
  @$pb.TagNumber(2)
  set autoconnect($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAutoconnect() => $_has(1);
  @$pb.TagNumber(2)
  void clearAutoconnect() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get credential => $_getN(2);
  @$pb.TagNumber(3)
  set credential($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCredential() => $_has(2);
  @$pb.TagNumber(3)
  void clearCredential() => clearField(3);
}

class ThpCredentialResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpCredentialResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trezorStaticPublicKey', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'credential', $pb.PbFieldType.QY)
  ;

  ThpCredentialResponse._() : super();
  factory ThpCredentialResponse({
    $core.List<$core.int>? trezorStaticPublicKey,
    $core.List<$core.int>? credential,
  }) {
    final _result = create();
    if (trezorStaticPublicKey != null) {
      _result.trezorStaticPublicKey = trezorStaticPublicKey;
    }
    if (credential != null) {
      _result.credential = credential;
    }
    return _result;
  }
  factory ThpCredentialResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpCredentialResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpCredentialResponse clone() => ThpCredentialResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpCredentialResponse copyWith(void Function(ThpCredentialResponse) updates) => super.copyWith((message) => updates(message as ThpCredentialResponse)) as ThpCredentialResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpCredentialResponse create() => ThpCredentialResponse._();
  ThpCredentialResponse createEmptyInstance() => create();
  static $pb.PbList<ThpCredentialResponse> createRepeated() => $pb.PbList<ThpCredentialResponse>();
  @$core.pragma('dart2js:noInline')
  static ThpCredentialResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpCredentialResponse>(create);
  static ThpCredentialResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get trezorStaticPublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set trezorStaticPublicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrezorStaticPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrezorStaticPublicKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get credential => $_getN(1);
  @$pb.TagNumber(2)
  set credential($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredential() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredential() => clearField(2);
}

class ThpEndRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpEndRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ThpEndRequest._() : super();
  factory ThpEndRequest() => create();
  factory ThpEndRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpEndRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpEndRequest clone() => ThpEndRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpEndRequest copyWith(void Function(ThpEndRequest) updates) => super.copyWith((message) => updates(message as ThpEndRequest)) as ThpEndRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpEndRequest create() => ThpEndRequest._();
  ThpEndRequest createEmptyInstance() => create();
  static $pb.PbList<ThpEndRequest> createRepeated() => $pb.PbList<ThpEndRequest>();
  @$core.pragma('dart2js:noInline')
  static ThpEndRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpEndRequest>(create);
  static ThpEndRequest? _defaultInstance;
}

class ThpEndResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpEndResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ThpEndResponse._() : super();
  factory ThpEndResponse() => create();
  factory ThpEndResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpEndResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpEndResponse clone() => ThpEndResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpEndResponse copyWith(void Function(ThpEndResponse) updates) => super.copyWith((message) => updates(message as ThpEndResponse)) as ThpEndResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpEndResponse create() => ThpEndResponse._();
  ThpEndResponse createEmptyInstance() => create();
  static $pb.PbList<ThpEndResponse> createRepeated() => $pb.PbList<ThpEndResponse>();
  @$core.pragma('dart2js:noInline')
  static ThpEndResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpEndResponse>(create);
  static ThpEndResponse? _defaultInstance;
}

class ThpCredentialMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpCredentialMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hostName')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autoconnect')
    ..aQS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appName')
  ;

  ThpCredentialMetadata._() : super();
  factory ThpCredentialMetadata({
    $core.String? hostName,
    $core.bool? autoconnect,
    $core.String? appName,
  }) {
    final _result = create();
    if (hostName != null) {
      _result.hostName = hostName;
    }
    if (autoconnect != null) {
      _result.autoconnect = autoconnect;
    }
    if (appName != null) {
      _result.appName = appName;
    }
    return _result;
  }
  factory ThpCredentialMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpCredentialMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpCredentialMetadata clone() => ThpCredentialMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpCredentialMetadata copyWith(void Function(ThpCredentialMetadata) updates) => super.copyWith((message) => updates(message as ThpCredentialMetadata)) as ThpCredentialMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpCredentialMetadata create() => ThpCredentialMetadata._();
  ThpCredentialMetadata createEmptyInstance() => create();
  static $pb.PbList<ThpCredentialMetadata> createRepeated() => $pb.PbList<ThpCredentialMetadata>();
  @$core.pragma('dart2js:noInline')
  static ThpCredentialMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpCredentialMetadata>(create);
  static ThpCredentialMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hostName => $_getSZ(0);
  @$pb.TagNumber(1)
  set hostName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHostName() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostName() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get autoconnect => $_getBF(1);
  @$pb.TagNumber(2)
  set autoconnect($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAutoconnect() => $_has(1);
  @$pb.TagNumber(2)
  void clearAutoconnect() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get appName => $_getSZ(2);
  @$pb.TagNumber(3)
  set appName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppName() => clearField(3);
}

class ThpPairingCredential extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpPairingCredential', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..aQM<ThpCredentialMetadata>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'credMetadata', subBuilder: ThpCredentialMetadata.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mac', $pb.PbFieldType.QY)
  ;

  ThpPairingCredential._() : super();
  factory ThpPairingCredential({
    ThpCredentialMetadata? credMetadata,
    $core.List<$core.int>? mac,
  }) {
    final _result = create();
    if (credMetadata != null) {
      _result.credMetadata = credMetadata;
    }
    if (mac != null) {
      _result.mac = mac;
    }
    return _result;
  }
  factory ThpPairingCredential.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpPairingCredential.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpPairingCredential clone() => ThpPairingCredential()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpPairingCredential copyWith(void Function(ThpPairingCredential) updates) => super.copyWith((message) => updates(message as ThpPairingCredential)) as ThpPairingCredential; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpPairingCredential create() => ThpPairingCredential._();
  ThpPairingCredential createEmptyInstance() => create();
  static $pb.PbList<ThpPairingCredential> createRepeated() => $pb.PbList<ThpPairingCredential>();
  @$core.pragma('dart2js:noInline')
  static ThpPairingCredential getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpPairingCredential>(create);
  static ThpPairingCredential? _defaultInstance;

  @$pb.TagNumber(1)
  ThpCredentialMetadata get credMetadata => $_getN(0);
  @$pb.TagNumber(1)
  set credMetadata(ThpCredentialMetadata v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCredMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearCredMetadata() => clearField(1);
  @$pb.TagNumber(1)
  ThpCredentialMetadata ensureCredMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get mac => $_getN(1);
  @$pb.TagNumber(2)
  set mac($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMac() => $_has(1);
  @$pb.TagNumber(2)
  void clearMac() => clearField(2);
}

class ThpAuthenticatedCredentialData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpAuthenticatedCredentialData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hostStaticPublicKey', $pb.PbFieldType.QY)
    ..aQM<ThpCredentialMetadata>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'credMetadata', subBuilder: ThpCredentialMetadata.create)
  ;

  ThpAuthenticatedCredentialData._() : super();
  factory ThpAuthenticatedCredentialData({
    $core.List<$core.int>? hostStaticPublicKey,
    ThpCredentialMetadata? credMetadata,
  }) {
    final _result = create();
    if (hostStaticPublicKey != null) {
      _result.hostStaticPublicKey = hostStaticPublicKey;
    }
    if (credMetadata != null) {
      _result.credMetadata = credMetadata;
    }
    return _result;
  }
  factory ThpAuthenticatedCredentialData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpAuthenticatedCredentialData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpAuthenticatedCredentialData clone() => ThpAuthenticatedCredentialData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpAuthenticatedCredentialData copyWith(void Function(ThpAuthenticatedCredentialData) updates) => super.copyWith((message) => updates(message as ThpAuthenticatedCredentialData)) as ThpAuthenticatedCredentialData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpAuthenticatedCredentialData create() => ThpAuthenticatedCredentialData._();
  ThpAuthenticatedCredentialData createEmptyInstance() => create();
  static $pb.PbList<ThpAuthenticatedCredentialData> createRepeated() => $pb.PbList<ThpAuthenticatedCredentialData>();
  @$core.pragma('dart2js:noInline')
  static ThpAuthenticatedCredentialData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpAuthenticatedCredentialData>(create);
  static ThpAuthenticatedCredentialData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hostStaticPublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set hostStaticPublicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHostStaticPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostStaticPublicKey() => clearField(1);

  @$pb.TagNumber(2)
  ThpCredentialMetadata get credMetadata => $_getN(1);
  @$pb.TagNumber(2)
  set credMetadata(ThpCredentialMetadata v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredMetadata() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredMetadata() => clearField(2);
  @$pb.TagNumber(2)
  ThpCredentialMetadata ensureCredMetadata() => $_ensure(1);
}

class ThpPairedCache_ThpPairedCacheEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpPairedCache.ThpPairedCacheEntry', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macAddr', $pb.PbFieldType.QY)
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hostName')
    ..aQS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appName')
  ;

  ThpPairedCache_ThpPairedCacheEntry._() : super();
  factory ThpPairedCache_ThpPairedCacheEntry({
    $core.List<$core.int>? macAddr,
    $core.String? hostName,
    $core.String? appName,
  }) {
    final _result = create();
    if (macAddr != null) {
      _result.macAddr = macAddr;
    }
    if (hostName != null) {
      _result.hostName = hostName;
    }
    if (appName != null) {
      _result.appName = appName;
    }
    return _result;
  }
  factory ThpPairedCache_ThpPairedCacheEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpPairedCache_ThpPairedCacheEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpPairedCache_ThpPairedCacheEntry clone() => ThpPairedCache_ThpPairedCacheEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpPairedCache_ThpPairedCacheEntry copyWith(void Function(ThpPairedCache_ThpPairedCacheEntry) updates) => super.copyWith((message) => updates(message as ThpPairedCache_ThpPairedCacheEntry)) as ThpPairedCache_ThpPairedCacheEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpPairedCache_ThpPairedCacheEntry create() => ThpPairedCache_ThpPairedCacheEntry._();
  ThpPairedCache_ThpPairedCacheEntry createEmptyInstance() => create();
  static $pb.PbList<ThpPairedCache_ThpPairedCacheEntry> createRepeated() => $pb.PbList<ThpPairedCache_ThpPairedCacheEntry>();
  @$core.pragma('dart2js:noInline')
  static ThpPairedCache_ThpPairedCacheEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpPairedCache_ThpPairedCacheEntry>(create);
  static ThpPairedCache_ThpPairedCacheEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get macAddr => $_getN(0);
  @$pb.TagNumber(1)
  set macAddr($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMacAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearMacAddr() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get hostName => $_getSZ(1);
  @$pb.TagNumber(2)
  set hostName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHostName() => $_has(1);
  @$pb.TagNumber(2)
  void clearHostName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get appName => $_getSZ(2);
  @$pb.TagNumber(3)
  set appName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppName() => clearField(3);
}

class ThpPairedCache extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ThpPairedCache', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.thp'), createEmptyInstance: create)
    ..pc<ThpPairedCache_ThpPairedCacheEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entries', $pb.PbFieldType.PM, subBuilder: ThpPairedCache_ThpPairedCacheEntry.create)
  ;

  ThpPairedCache._() : super();
  factory ThpPairedCache({
    $core.Iterable<ThpPairedCache_ThpPairedCacheEntry>? entries,
  }) {
    final _result = create();
    if (entries != null) {
      _result.entries.addAll(entries);
    }
    return _result;
  }
  factory ThpPairedCache.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThpPairedCache.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThpPairedCache clone() => ThpPairedCache()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThpPairedCache copyWith(void Function(ThpPairedCache) updates) => super.copyWith((message) => updates(message as ThpPairedCache)) as ThpPairedCache; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ThpPairedCache create() => ThpPairedCache._();
  ThpPairedCache createEmptyInstance() => create();
  static $pb.PbList<ThpPairedCache> createRepeated() => $pb.PbList<ThpPairedCache>();
  @$core.pragma('dart2js:noInline')
  static ThpPairedCache getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThpPairedCache>(create);
  static ThpPairedCache? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ThpPairedCache_ThpPairedCacheEntry> get entries => $_getList(0);
}

