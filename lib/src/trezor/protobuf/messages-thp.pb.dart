// This is a generated file - do not edit.
//
// Generated from messages-thp.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'messages-thp.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'messages-thp.pbenum.dart';

/// *
///  @embed
class ThpDeviceProperties extends $pb.GeneratedMessage {
  factory ThpDeviceProperties({
    $core.String? internalModel,
    $core.int? modelVariant,
    $core.int? protocolVersionMajor,
    $core.int? protocolVersionMinor,
    $core.Iterable<ThpPairingMethod>? pairingMethods,
  }) {
    final result = create();
    if (internalModel != null) result.internalModel = internalModel;
    if (modelVariant != null) result.modelVariant = modelVariant;
    if (protocolVersionMajor != null)
      result.protocolVersionMajor = protocolVersionMajor;
    if (protocolVersionMinor != null)
      result.protocolVersionMinor = protocolVersionMinor;
    if (pairingMethods != null) result.pairingMethods.addAll(pairingMethods);
    return result;
  }

  ThpDeviceProperties._();

  factory ThpDeviceProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpDeviceProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpDeviceProperties',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'internalModel')
    ..aI(2, _omitFieldNames ? '' : 'modelVariant',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'protocolVersionMajor',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'protocolVersionMinor',
        fieldType: $pb.PbFieldType.QU3)
    ..pPE<ThpPairingMethod>(5, _omitFieldNames ? '' : 'pairingMethods',
        enumValues: ThpPairingMethod.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpDeviceProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpDeviceProperties copyWith(void Function(ThpDeviceProperties) updates) =>
      super.copyWith((message) => updates(message as ThpDeviceProperties))
          as ThpDeviceProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpDeviceProperties create() => ThpDeviceProperties._();
  @$core.override
  ThpDeviceProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpDeviceProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpDeviceProperties>(create);
  static ThpDeviceProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get internalModel => $_getSZ(0);
  @$pb.TagNumber(1)
  set internalModel($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasInternalModel() => $_has(0);
  @$pb.TagNumber(1)
  void clearInternalModel() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get modelVariant => $_getIZ(1);
  @$pb.TagNumber(2)
  set modelVariant($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasModelVariant() => $_has(1);
  @$pb.TagNumber(2)
  void clearModelVariant() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get protocolVersionMajor => $_getIZ(2);
  @$pb.TagNumber(3)
  set protocolVersionMajor($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProtocolVersionMajor() => $_has(2);
  @$pb.TagNumber(3)
  void clearProtocolVersionMajor() => $_clearField(3);

  /// used by the firmware.
  @$pb.TagNumber(4)
  $core.int get protocolVersionMinor => $_getIZ(3);
  @$pb.TagNumber(4)
  set protocolVersionMinor($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasProtocolVersionMinor() => $_has(3);
  @$pb.TagNumber(4)
  void clearProtocolVersionMinor() => $_clearField(4);

  /// used by the firmware.
  @$pb.TagNumber(5)
  $pb.PbList<ThpPairingMethod> get pairingMethods => $_getList(4);
}

/// *
///  @embed
class ThpHandshakeCompletionReqNoisePayload extends $pb.GeneratedMessage {
  factory ThpHandshakeCompletionReqNoisePayload({
    $core.List<$core.int>? hostPairingCredential,
  }) {
    final result = create();
    if (hostPairingCredential != null)
      result.hostPairingCredential = hostPairingCredential;
    return result;
  }

  ThpHandshakeCompletionReqNoisePayload._();

  factory ThpHandshakeCompletionReqNoisePayload.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpHandshakeCompletionReqNoisePayload.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpHandshakeCompletionReqNoisePayload',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'hostPairingCredential', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpHandshakeCompletionReqNoisePayload clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpHandshakeCompletionReqNoisePayload copyWith(
          void Function(ThpHandshakeCompletionReqNoisePayload) updates) =>
      super.copyWith((message) =>
              updates(message as ThpHandshakeCompletionReqNoisePayload))
          as ThpHandshakeCompletionReqNoisePayload;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpHandshakeCompletionReqNoisePayload create() =>
      ThpHandshakeCompletionReqNoisePayload._();
  @$core.override
  ThpHandshakeCompletionReqNoisePayload createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpHandshakeCompletionReqNoisePayload getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ThpHandshakeCompletionReqNoisePayload>(create);
  static ThpHandshakeCompletionReqNoisePayload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hostPairingCredential => $_getN(0);
  @$pb.TagNumber(1)
  set hostPairingCredential($core.List<$core.int> value) =>
      $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHostPairingCredential() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostPairingCredential() => $_clearField(1);
}

/// *
///  Request: Ask device for a new session with given passphrase.
///  @start
///  @next Success
class ThpCreateNewSession extends $pb.GeneratedMessage {
  factory ThpCreateNewSession({
    $core.String? passphrase,
    $core.bool? onDevice,
    $core.bool? deriveCardano,
  }) {
    final result = create();
    if (passphrase != null) result.passphrase = passphrase;
    if (onDevice != null) result.onDevice = onDevice;
    if (deriveCardano != null) result.deriveCardano = deriveCardano;
    return result;
  }

  ThpCreateNewSession._();

  factory ThpCreateNewSession.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpCreateNewSession.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpCreateNewSession',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'passphrase')
    ..aOB(2, _omitFieldNames ? '' : 'onDevice')
    ..aOB(3, _omitFieldNames ? '' : 'deriveCardano')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCreateNewSession clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCreateNewSession copyWith(void Function(ThpCreateNewSession) updates) =>
      super.copyWith((message) => updates(message as ThpCreateNewSession))
          as ThpCreateNewSession;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpCreateNewSession create() => ThpCreateNewSession._();
  @$core.override
  ThpCreateNewSession createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpCreateNewSession getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpCreateNewSession>(create);
  static ThpCreateNewSession? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get passphrase => $_getSZ(0);
  @$pb.TagNumber(1)
  set passphrase($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPassphrase() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassphrase() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get onDevice => $_getBF(1);
  @$pb.TagNumber(2)
  set onDevice($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOnDevice() => $_has(1);
  @$pb.TagNumber(2)
  void clearOnDevice() => $_clearField(2);

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
///  Request: Start pairing process.
///  @start
///  @next ThpPairingRequestApproved
class ThpPairingRequest extends $pb.GeneratedMessage {
  factory ThpPairingRequest({
    $core.String? hostName,
    $core.String? appName,
  }) {
    final result = create();
    if (hostName != null) result.hostName = hostName;
    if (appName != null) result.appName = appName;
    return result;
  }

  ThpPairingRequest._();

  factory ThpPairingRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpPairingRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpPairingRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'hostName')
    ..aQS(2, _omitFieldNames ? '' : 'appName');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpPairingRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpPairingRequest copyWith(void Function(ThpPairingRequest) updates) =>
      super.copyWith((message) => updates(message as ThpPairingRequest))
          as ThpPairingRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpPairingRequest create() => ThpPairingRequest._();
  @$core.override
  ThpPairingRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpPairingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpPairingRequest>(create);
  static ThpPairingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hostName => $_getSZ(0);
  @$pb.TagNumber(1)
  set hostName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHostName() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get appName => $_getSZ(1);
  @$pb.TagNumber(2)
  set appName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAppName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppName() => $_clearField(2);
}

/// *
///  Response: Host is allowed to start pairing process.
///  @start
///  @next ThpSelectMethod
class ThpPairingRequestApproved extends $pb.GeneratedMessage {
  factory ThpPairingRequestApproved() => create();

  ThpPairingRequestApproved._();

  factory ThpPairingRequestApproved.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpPairingRequestApproved.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpPairingRequestApproved',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpPairingRequestApproved clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpPairingRequestApproved copyWith(
          void Function(ThpPairingRequestApproved) updates) =>
      super.copyWith((message) => updates(message as ThpPairingRequestApproved))
          as ThpPairingRequestApproved;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpPairingRequestApproved create() => ThpPairingRequestApproved._();
  @$core.override
  ThpPairingRequestApproved createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpPairingRequestApproved getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpPairingRequestApproved>(create);
  static ThpPairingRequestApproved? _defaultInstance;
}

/// *
///  Request: Start pairing using the method selected.
///  @start
///  @next ThpPairingPreparationsFinished
///  @next ThpCodeEntryCommitment
class ThpSelectMethod extends $pb.GeneratedMessage {
  factory ThpSelectMethod({
    ThpPairingMethod? selectedPairingMethod,
  }) {
    final result = create();
    if (selectedPairingMethod != null)
      result.selectedPairingMethod = selectedPairingMethod;
    return result;
  }

  ThpSelectMethod._();

  factory ThpSelectMethod.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpSelectMethod.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpSelectMethod',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..aE<ThpPairingMethod>(1, _omitFieldNames ? '' : 'selectedPairingMethod',
        fieldType: $pb.PbFieldType.QE, enumValues: ThpPairingMethod.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpSelectMethod clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpSelectMethod copyWith(void Function(ThpSelectMethod) updates) =>
      super.copyWith((message) => updates(message as ThpSelectMethod))
          as ThpSelectMethod;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpSelectMethod create() => ThpSelectMethod._();
  @$core.override
  ThpSelectMethod createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpSelectMethod getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpSelectMethod>(create);
  static ThpSelectMethod? _defaultInstance;

  @$pb.TagNumber(1)
  ThpPairingMethod get selectedPairingMethod => $_getN(0);
  @$pb.TagNumber(1)
  set selectedPairingMethod(ThpPairingMethod value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSelectedPairingMethod() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelectedPairingMethod() => $_clearField(1);
}

/// *
///  Response: Pairing is ready for user input / OOB communication.
///  @next ThpCodeEntryCpace
///  @next ThpQrCodeTag
///  @next ThpNfcTagHost
class ThpPairingPreparationsFinished extends $pb.GeneratedMessage {
  factory ThpPairingPreparationsFinished() => create();

  ThpPairingPreparationsFinished._();

  factory ThpPairingPreparationsFinished.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpPairingPreparationsFinished.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpPairingPreparationsFinished',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpPairingPreparationsFinished clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpPairingPreparationsFinished copyWith(
          void Function(ThpPairingPreparationsFinished) updates) =>
      super.copyWith(
              (message) => updates(message as ThpPairingPreparationsFinished))
          as ThpPairingPreparationsFinished;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpPairingPreparationsFinished create() =>
      ThpPairingPreparationsFinished._();
  @$core.override
  ThpPairingPreparationsFinished createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpPairingPreparationsFinished getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpPairingPreparationsFinished>(create);
  static ThpPairingPreparationsFinished? _defaultInstance;
}

/// *
///  Response: If Code Entry is an allowed pairing option, Trezor responds with a commitment.
///  @next ThpCodeEntryChallenge
class ThpCodeEntryCommitment extends $pb.GeneratedMessage {
  factory ThpCodeEntryCommitment({
    $core.List<$core.int>? commitment,
  }) {
    final result = create();
    if (commitment != null) result.commitment = commitment;
    return result;
  }

  ThpCodeEntryCommitment._();

  factory ThpCodeEntryCommitment.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpCodeEntryCommitment.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpCodeEntryCommitment',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'commitment', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCodeEntryCommitment clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCodeEntryCommitment copyWith(
          void Function(ThpCodeEntryCommitment) updates) =>
      super.copyWith((message) => updates(message as ThpCodeEntryCommitment))
          as ThpCodeEntryCommitment;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryCommitment create() => ThpCodeEntryCommitment._();
  @$core.override
  ThpCodeEntryCommitment createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryCommitment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpCodeEntryCommitment>(create);
  static ThpCodeEntryCommitment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get commitment => $_getN(0);
  @$pb.TagNumber(1)
  set commitment($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCommitment() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommitment() => $_clearField(1);
}

/// *
///  Response: Host responds to Trezor's Code Entry commitment with a challenge.
///  @next ThpCodeEntryCpaceTrezor
class ThpCodeEntryChallenge extends $pb.GeneratedMessage {
  factory ThpCodeEntryChallenge({
    $core.List<$core.int>? challenge,
  }) {
    final result = create();
    if (challenge != null) result.challenge = challenge;
    return result;
  }

  ThpCodeEntryChallenge._();

  factory ThpCodeEntryChallenge.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpCodeEntryChallenge.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpCodeEntryChallenge',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'challenge', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCodeEntryChallenge clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCodeEntryChallenge copyWith(
          void Function(ThpCodeEntryChallenge) updates) =>
      super.copyWith((message) => updates(message as ThpCodeEntryChallenge))
          as ThpCodeEntryChallenge;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryChallenge create() => ThpCodeEntryChallenge._();
  @$core.override
  ThpCodeEntryChallenge createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryChallenge getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpCodeEntryChallenge>(create);
  static ThpCodeEntryChallenge? _defaultInstance;

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
///  Response: Trezor continues with the CPACE protocol.
///  @next ThpCodeEntryCpaceHostTag
class ThpCodeEntryCpaceTrezor extends $pb.GeneratedMessage {
  factory ThpCodeEntryCpaceTrezor({
    $core.List<$core.int>? cpaceTrezorPublicKey,
  }) {
    final result = create();
    if (cpaceTrezorPublicKey != null)
      result.cpaceTrezorPublicKey = cpaceTrezorPublicKey;
    return result;
  }

  ThpCodeEntryCpaceTrezor._();

  factory ThpCodeEntryCpaceTrezor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpCodeEntryCpaceTrezor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpCodeEntryCpaceTrezor',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'cpaceTrezorPublicKey', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCodeEntryCpaceTrezor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCodeEntryCpaceTrezor copyWith(
          void Function(ThpCodeEntryCpaceTrezor) updates) =>
      super.copyWith((message) => updates(message as ThpCodeEntryCpaceTrezor))
          as ThpCodeEntryCpaceTrezor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryCpaceTrezor create() => ThpCodeEntryCpaceTrezor._();
  @$core.override
  ThpCodeEntryCpaceTrezor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryCpaceTrezor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpCodeEntryCpaceTrezor>(create);
  static ThpCodeEntryCpaceTrezor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get cpaceTrezorPublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set cpaceTrezorPublicKey($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCpaceTrezorPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearCpaceTrezorPublicKey() => $_clearField(1);
}

/// *
///  Request: User selected Code Entry option in Host. Host starts CPACE protocol with Trezor.
///  @next ThpCodeEntrySecret
class ThpCodeEntryCpaceHostTag extends $pb.GeneratedMessage {
  factory ThpCodeEntryCpaceHostTag({
    $core.List<$core.int>? cpaceHostPublicKey,
    $core.List<$core.int>? tag,
  }) {
    final result = create();
    if (cpaceHostPublicKey != null)
      result.cpaceHostPublicKey = cpaceHostPublicKey;
    if (tag != null) result.tag = tag;
    return result;
  }

  ThpCodeEntryCpaceHostTag._();

  factory ThpCodeEntryCpaceHostTag.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpCodeEntryCpaceHostTag.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpCodeEntryCpaceHostTag',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'cpaceHostPublicKey', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'tag', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCodeEntryCpaceHostTag clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCodeEntryCpaceHostTag copyWith(
          void Function(ThpCodeEntryCpaceHostTag) updates) =>
      super.copyWith((message) => updates(message as ThpCodeEntryCpaceHostTag))
          as ThpCodeEntryCpaceHostTag;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryCpaceHostTag create() => ThpCodeEntryCpaceHostTag._();
  @$core.override
  ThpCodeEntryCpaceHostTag createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpCodeEntryCpaceHostTag getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpCodeEntryCpaceHostTag>(create);
  static ThpCodeEntryCpaceHostTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get cpaceHostPublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set cpaceHostPublicKey($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCpaceHostPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearCpaceHostPublicKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get tag => $_getN(1);
  @$pb.TagNumber(2)
  set tag($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTag() => $_has(1);
  @$pb.TagNumber(2)
  void clearTag() => $_clearField(2);
}

/// *
///  Response: Trezor finishes the CPACE protocol.
///  @next ThpCredentialRequest
///  @next ThpEndRequest
class ThpCodeEntrySecret extends $pb.GeneratedMessage {
  factory ThpCodeEntrySecret({
    $core.List<$core.int>? secret,
  }) {
    final result = create();
    if (secret != null) result.secret = secret;
    return result;
  }

  ThpCodeEntrySecret._();

  factory ThpCodeEntrySecret.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpCodeEntrySecret.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpCodeEntrySecret',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'secret', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCodeEntrySecret clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCodeEntrySecret copyWith(void Function(ThpCodeEntrySecret) updates) =>
      super.copyWith((message) => updates(message as ThpCodeEntrySecret))
          as ThpCodeEntrySecret;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpCodeEntrySecret create() => ThpCodeEntrySecret._();
  @$core.override
  ThpCodeEntrySecret createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpCodeEntrySecret getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpCodeEntrySecret>(create);
  static ThpCodeEntrySecret? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get secret => $_getN(0);
  @$pb.TagNumber(1)
  set secret($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSecret() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecret() => $_clearField(1);
}

/// *
///  Request: User selected QR Code pairing option. Host sends a QR Tag.
///  @next ThpQrCodeSecret
class ThpQrCodeTag extends $pb.GeneratedMessage {
  factory ThpQrCodeTag({
    $core.List<$core.int>? tag,
  }) {
    final result = create();
    if (tag != null) result.tag = tag;
    return result;
  }

  ThpQrCodeTag._();

  factory ThpQrCodeTag.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpQrCodeTag.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpQrCodeTag',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'tag', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpQrCodeTag clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpQrCodeTag copyWith(void Function(ThpQrCodeTag) updates) =>
      super.copyWith((message) => updates(message as ThpQrCodeTag))
          as ThpQrCodeTag;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpQrCodeTag create() => ThpQrCodeTag._();
  @$core.override
  ThpQrCodeTag createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpQrCodeTag getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpQrCodeTag>(create);
  static ThpQrCodeTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get tag => $_getN(0);
  @$pb.TagNumber(1)
  set tag($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => $_clearField(1);
}

/// *
///  Response: Trezor sends the QR secret.
///  @next ThpCredentialRequest
///  @next ThpEndRequest
class ThpQrCodeSecret extends $pb.GeneratedMessage {
  factory ThpQrCodeSecret({
    $core.List<$core.int>? secret,
  }) {
    final result = create();
    if (secret != null) result.secret = secret;
    return result;
  }

  ThpQrCodeSecret._();

  factory ThpQrCodeSecret.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpQrCodeSecret.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpQrCodeSecret',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'secret', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpQrCodeSecret clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpQrCodeSecret copyWith(void Function(ThpQrCodeSecret) updates) =>
      super.copyWith((message) => updates(message as ThpQrCodeSecret))
          as ThpQrCodeSecret;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpQrCodeSecret create() => ThpQrCodeSecret._();
  @$core.override
  ThpQrCodeSecret createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpQrCodeSecret getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpQrCodeSecret>(create);
  static ThpQrCodeSecret? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get secret => $_getN(0);
  @$pb.TagNumber(1)
  set secret($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSecret() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecret() => $_clearField(1);
}

/// *
///  Request: User selected Unidirectional NFC pairing option. Host sends an Unidirectional NFC Tag.
///  @next ThpNfcTagTrezor
class ThpNfcTagHost extends $pb.GeneratedMessage {
  factory ThpNfcTagHost({
    $core.List<$core.int>? tag,
  }) {
    final result = create();
    if (tag != null) result.tag = tag;
    return result;
  }

  ThpNfcTagHost._();

  factory ThpNfcTagHost.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpNfcTagHost.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpNfcTagHost',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'tag', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpNfcTagHost clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpNfcTagHost copyWith(void Function(ThpNfcTagHost) updates) =>
      super.copyWith((message) => updates(message as ThpNfcTagHost))
          as ThpNfcTagHost;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpNfcTagHost create() => ThpNfcTagHost._();
  @$core.override
  ThpNfcTagHost createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpNfcTagHost getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpNfcTagHost>(create);
  static ThpNfcTagHost? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get tag => $_getN(0);
  @$pb.TagNumber(1)
  set tag($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => $_clearField(1);
}

/// *
///  Response: Trezor sends the Unidirectioal NFC secret.
///  @next ThpCredentialRequest
///  @next ThpEndRequest
class ThpNfcTagTrezor extends $pb.GeneratedMessage {
  factory ThpNfcTagTrezor({
    $core.List<$core.int>? tag,
  }) {
    final result = create();
    if (tag != null) result.tag = tag;
    return result;
  }

  ThpNfcTagTrezor._();

  factory ThpNfcTagTrezor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpNfcTagTrezor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpNfcTagTrezor',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'tag', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpNfcTagTrezor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpNfcTagTrezor copyWith(void Function(ThpNfcTagTrezor) updates) =>
      super.copyWith((message) => updates(message as ThpNfcTagTrezor))
          as ThpNfcTagTrezor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpNfcTagTrezor create() => ThpNfcTagTrezor._();
  @$core.override
  ThpNfcTagTrezor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpNfcTagTrezor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpNfcTagTrezor>(create);
  static ThpNfcTagTrezor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get tag => $_getN(0);
  @$pb.TagNumber(1)
  set tag($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => $_clearField(1);
}

/// *
///  Request: Host requests issuance of a new pairing credential.
///  @start
///  @next ThpCredentialResponse
class ThpCredentialRequest extends $pb.GeneratedMessage {
  factory ThpCredentialRequest({
    $core.List<$core.int>? hostStaticPublicKey,
    $core.bool? autoconnect,
    $core.List<$core.int>? credential,
  }) {
    final result = create();
    if (hostStaticPublicKey != null)
      result.hostStaticPublicKey = hostStaticPublicKey;
    if (autoconnect != null) result.autoconnect = autoconnect;
    if (credential != null) result.credential = credential;
    return result;
  }

  ThpCredentialRequest._();

  factory ThpCredentialRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpCredentialRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpCredentialRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'hostStaticPublicKey', $pb.PbFieldType.QY)
    ..aOB(2, _omitFieldNames ? '' : 'autoconnect')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'credential', $pb.PbFieldType.OY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCredentialRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCredentialRequest copyWith(void Function(ThpCredentialRequest) updates) =>
      super.copyWith((message) => updates(message as ThpCredentialRequest))
          as ThpCredentialRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpCredentialRequest create() => ThpCredentialRequest._();
  @$core.override
  ThpCredentialRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpCredentialRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpCredentialRequest>(create);
  static ThpCredentialRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hostStaticPublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set hostStaticPublicKey($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHostStaticPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostStaticPublicKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get autoconnect => $_getBF(1);
  @$pb.TagNumber(2)
  set autoconnect($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAutoconnect() => $_has(1);
  @$pb.TagNumber(2)
  void clearAutoconnect() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get credential => $_getN(2);
  @$pb.TagNumber(3)
  set credential($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCredential() => $_has(2);
  @$pb.TagNumber(3)
  void clearCredential() => $_clearField(3);
}

/// *
///  Response: Trezor issues a new pairing credential.
///  @next ThpCredentialRequest
///  @next ThpEndRequest
class ThpCredentialResponse extends $pb.GeneratedMessage {
  factory ThpCredentialResponse({
    $core.List<$core.int>? trezorStaticPublicKey,
    $core.List<$core.int>? credential,
  }) {
    final result = create();
    if (trezorStaticPublicKey != null)
      result.trezorStaticPublicKey = trezorStaticPublicKey;
    if (credential != null) result.credential = credential;
    return result;
  }

  ThpCredentialResponse._();

  factory ThpCredentialResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpCredentialResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpCredentialResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'trezorStaticPublicKey', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'credential', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCredentialResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCredentialResponse copyWith(
          void Function(ThpCredentialResponse) updates) =>
      super.copyWith((message) => updates(message as ThpCredentialResponse))
          as ThpCredentialResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpCredentialResponse create() => ThpCredentialResponse._();
  @$core.override
  ThpCredentialResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpCredentialResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpCredentialResponse>(create);
  static ThpCredentialResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get trezorStaticPublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set trezorStaticPublicKey($core.List<$core.int> value) =>
      $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTrezorStaticPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrezorStaticPublicKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get credential => $_getN(1);
  @$pb.TagNumber(2)
  set credential($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCredential() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredential() => $_clearField(2);
}

/// *
///  Request: Host requests transition to the encrypted traffic phase.
///  @start
///  @next ThpEndResponse
class ThpEndRequest extends $pb.GeneratedMessage {
  factory ThpEndRequest() => create();

  ThpEndRequest._();

  factory ThpEndRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpEndRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpEndRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpEndRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpEndRequest copyWith(void Function(ThpEndRequest) updates) =>
      super.copyWith((message) => updates(message as ThpEndRequest))
          as ThpEndRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpEndRequest create() => ThpEndRequest._();
  @$core.override
  ThpEndRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpEndRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpEndRequest>(create);
  static ThpEndRequest? _defaultInstance;
}

/// *
///  Response: Trezor approves transition to the encrypted traffic phase
///  @end
class ThpEndResponse extends $pb.GeneratedMessage {
  factory ThpEndResponse() => create();

  ThpEndResponse._();

  factory ThpEndResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpEndResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpEndResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpEndResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpEndResponse copyWith(void Function(ThpEndResponse) updates) =>
      super.copyWith((message) => updates(message as ThpEndResponse))
          as ThpEndResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpEndResponse create() => ThpEndResponse._();
  @$core.override
  ThpEndResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpEndResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpEndResponse>(create);
  static ThpEndResponse? _defaultInstance;
}

/// *
///  Only for internal use.
///  @embed
class ThpCredentialMetadata extends $pb.GeneratedMessage {
  factory ThpCredentialMetadata({
    $core.String? hostName,
    $core.bool? autoconnect,
    $core.String? appName,
  }) {
    final result = create();
    if (hostName != null) result.hostName = hostName;
    if (autoconnect != null) result.autoconnect = autoconnect;
    if (appName != null) result.appName = appName;
    return result;
  }

  ThpCredentialMetadata._();

  factory ThpCredentialMetadata.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpCredentialMetadata.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpCredentialMetadata',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'hostName')
    ..aOB(2, _omitFieldNames ? '' : 'autoconnect')
    ..aQS(3, _omitFieldNames ? '' : 'appName');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCredentialMetadata clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpCredentialMetadata copyWith(
          void Function(ThpCredentialMetadata) updates) =>
      super.copyWith((message) => updates(message as ThpCredentialMetadata))
          as ThpCredentialMetadata;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpCredentialMetadata create() => ThpCredentialMetadata._();
  @$core.override
  ThpCredentialMetadata createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpCredentialMetadata getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpCredentialMetadata>(create);
  static ThpCredentialMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hostName => $_getSZ(0);
  @$pb.TagNumber(1)
  set hostName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHostName() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get autoconnect => $_getBF(1);
  @$pb.TagNumber(2)
  set autoconnect($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAutoconnect() => $_has(1);
  @$pb.TagNumber(2)
  void clearAutoconnect() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get appName => $_getSZ(2);
  @$pb.TagNumber(3)
  set appName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAppName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppName() => $_clearField(3);
}

/// *
///  Only for internal use.
///  @embed
class ThpPairingCredential extends $pb.GeneratedMessage {
  factory ThpPairingCredential({
    ThpCredentialMetadata? credMetadata,
    $core.List<$core.int>? mac,
  }) {
    final result = create();
    if (credMetadata != null) result.credMetadata = credMetadata;
    if (mac != null) result.mac = mac;
    return result;
  }

  ThpPairingCredential._();

  factory ThpPairingCredential.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpPairingCredential.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpPairingCredential',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..aQM<ThpCredentialMetadata>(1, _omitFieldNames ? '' : 'credMetadata',
        subBuilder: ThpCredentialMetadata.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'mac', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpPairingCredential clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpPairingCredential copyWith(void Function(ThpPairingCredential) updates) =>
      super.copyWith((message) => updates(message as ThpPairingCredential))
          as ThpPairingCredential;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpPairingCredential create() => ThpPairingCredential._();
  @$core.override
  ThpPairingCredential createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpPairingCredential getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpPairingCredential>(create);
  static ThpPairingCredential? _defaultInstance;

  @$pb.TagNumber(1)
  ThpCredentialMetadata get credMetadata => $_getN(0);
  @$pb.TagNumber(1)
  set credMetadata(ThpCredentialMetadata value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCredMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearCredMetadata() => $_clearField(1);
  @$pb.TagNumber(1)
  ThpCredentialMetadata ensureCredMetadata() => $_ensure(0);

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
///  Only for internal use.
///  @embed
class ThpAuthenticatedCredentialData extends $pb.GeneratedMessage {
  factory ThpAuthenticatedCredentialData({
    $core.List<$core.int>? hostStaticPublicKey,
    ThpCredentialMetadata? credMetadata,
  }) {
    final result = create();
    if (hostStaticPublicKey != null)
      result.hostStaticPublicKey = hostStaticPublicKey;
    if (credMetadata != null) result.credMetadata = credMetadata;
    return result;
  }

  ThpAuthenticatedCredentialData._();

  factory ThpAuthenticatedCredentialData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpAuthenticatedCredentialData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpAuthenticatedCredentialData',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'hostStaticPublicKey', $pb.PbFieldType.QY)
    ..aQM<ThpCredentialMetadata>(2, _omitFieldNames ? '' : 'credMetadata',
        subBuilder: ThpCredentialMetadata.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpAuthenticatedCredentialData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpAuthenticatedCredentialData copyWith(
          void Function(ThpAuthenticatedCredentialData) updates) =>
      super.copyWith(
              (message) => updates(message as ThpAuthenticatedCredentialData))
          as ThpAuthenticatedCredentialData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpAuthenticatedCredentialData create() =>
      ThpAuthenticatedCredentialData._();
  @$core.override
  ThpAuthenticatedCredentialData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpAuthenticatedCredentialData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpAuthenticatedCredentialData>(create);
  static ThpAuthenticatedCredentialData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hostStaticPublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set hostStaticPublicKey($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHostStaticPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostStaticPublicKey() => $_clearField(1);

  @$pb.TagNumber(2)
  ThpCredentialMetadata get credMetadata => $_getN(1);
  @$pb.TagNumber(2)
  set credMetadata(ThpCredentialMetadata value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCredMetadata() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredMetadata() => $_clearField(2);
  @$pb.TagNumber(2)
  ThpCredentialMetadata ensureCredMetadata() => $_ensure(1);
}

/// *
///  Only for internal use.
///  @embed
class ThpPairedCache_ThpPairedCacheEntry extends $pb.GeneratedMessage {
  factory ThpPairedCache_ThpPairedCacheEntry({
    $core.List<$core.int>? macAddr,
    $core.String? hostName,
    $core.String? appName,
  }) {
    final result = create();
    if (macAddr != null) result.macAddr = macAddr;
    if (hostName != null) result.hostName = hostName;
    if (appName != null) result.appName = appName;
    return result;
  }

  ThpPairedCache_ThpPairedCacheEntry._();

  factory ThpPairedCache_ThpPairedCacheEntry.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpPairedCache_ThpPairedCacheEntry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpPairedCache.ThpPairedCacheEntry',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'macAddr', $pb.PbFieldType.QY)
    ..aQS(2, _omitFieldNames ? '' : 'hostName')
    ..aQS(3, _omitFieldNames ? '' : 'appName');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpPairedCache_ThpPairedCacheEntry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpPairedCache_ThpPairedCacheEntry copyWith(
          void Function(ThpPairedCache_ThpPairedCacheEntry) updates) =>
      super.copyWith((message) =>
              updates(message as ThpPairedCache_ThpPairedCacheEntry))
          as ThpPairedCache_ThpPairedCacheEntry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpPairedCache_ThpPairedCacheEntry create() =>
      ThpPairedCache_ThpPairedCacheEntry._();
  @$core.override
  ThpPairedCache_ThpPairedCacheEntry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpPairedCache_ThpPairedCacheEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpPairedCache_ThpPairedCacheEntry>(
          create);
  static ThpPairedCache_ThpPairedCacheEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get macAddr => $_getN(0);
  @$pb.TagNumber(1)
  set macAddr($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMacAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearMacAddr() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get hostName => $_getSZ(1);
  @$pb.TagNumber(2)
  set hostName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHostName() => $_has(1);
  @$pb.TagNumber(2)
  void clearHostName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get appName => $_getSZ(2);
  @$pb.TagNumber(3)
  set appName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAppName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppName() => $_clearField(3);
}

/// *
///  Recent THP paired hosts.
///  Only for internal use.
///  @embed
class ThpPairedCache extends $pb.GeneratedMessage {
  factory ThpPairedCache({
    $core.Iterable<ThpPairedCache_ThpPairedCacheEntry>? entries,
  }) {
    final result = create();
    if (entries != null) result.entries.addAll(entries);
    return result;
  }

  ThpPairedCache._();

  factory ThpPairedCache.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThpPairedCache.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThpPairedCache',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.thp'),
      createEmptyInstance: create)
    ..pPM<ThpPairedCache_ThpPairedCacheEntry>(
        1, _omitFieldNames ? '' : 'entries',
        subBuilder: ThpPairedCache_ThpPairedCacheEntry.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpPairedCache clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThpPairedCache copyWith(void Function(ThpPairedCache) updates) =>
      super.copyWith((message) => updates(message as ThpPairedCache))
          as ThpPairedCache;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThpPairedCache create() => ThpPairedCache._();
  @$core.override
  ThpPairedCache createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThpPairedCache getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThpPairedCache>(create);
  static ThpPairedCache? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ThpPairedCache_ThpPairedCacheEntry> get entries => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
