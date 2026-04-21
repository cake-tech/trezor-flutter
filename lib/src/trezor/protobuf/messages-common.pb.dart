// This is a generated file - do not edit.
//
// Generated from messages-common.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'messages-common.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'messages-common.pbenum.dart';

/// *
///  Response: Success of the previous request
///  @end
class Success extends $pb.GeneratedMessage {
  factory Success({
    $core.String? message,
  }) {
    final result = create();
    if (message != null) result.message = message;
    return result;
  }

  Success._();

  factory Success.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Success.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Success',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Success clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Success copyWith(void Function(Success) updates) =>
      super.copyWith((message) => updates(message as Success)) as Success;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Success create() => Success._();
  @$core.override
  Success createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Success getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Success>(create);
  static Success? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);
}

/// *
///  Response: Failure of the previous request
///  @end
class Failure extends $pb.GeneratedMessage {
  factory Failure({
    Failure_FailureType? code,
    $core.String? message,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (message != null) result.message = message;
    return result;
  }

  Failure._();

  factory Failure.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Failure.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Failure',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..aE<Failure_FailureType>(1, _omitFieldNames ? '' : 'code',
        enumValues: Failure_FailureType.values)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Failure clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Failure copyWith(void Function(Failure) updates) =>
      super.copyWith((message) => updates(message as Failure)) as Failure;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Failure create() => Failure._();
  @$core.override
  Failure createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Failure getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Failure>(create);
  static Failure? _defaultInstance;

  @$pb.TagNumber(1)
  Failure_FailureType get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(Failure_FailureType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

/// *
///  Response: Device is waiting for HW button press.
///  @auxstart
///  @next ButtonAck
class ButtonRequest extends $pb.GeneratedMessage {
  factory ButtonRequest({
    ButtonRequest_ButtonRequestType? code,
    $core.int? pages,
    $core.String? name,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (pages != null) result.pages = pages;
    if (name != null) result.name = name;
    return result;
  }

  ButtonRequest._();

  factory ButtonRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ButtonRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ButtonRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..aE<ButtonRequest_ButtonRequestType>(1, _omitFieldNames ? '' : 'code',
        enumValues: ButtonRequest_ButtonRequestType.values)
    ..aI(2, _omitFieldNames ? '' : 'pages', fieldType: $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ButtonRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ButtonRequest copyWith(void Function(ButtonRequest) updates) =>
      super.copyWith((message) => updates(message as ButtonRequest))
          as ButtonRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ButtonRequest create() => ButtonRequest._();
  @$core.override
  ButtonRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ButtonRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ButtonRequest>(create);
  static ButtonRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ButtonRequest_ButtonRequestType get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(ButtonRequest_ButtonRequestType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get pages => $_getIZ(1);
  @$pb.TagNumber(2)
  set pages($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPages() => $_has(1);
  @$pb.TagNumber(2)
  void clearPages() => $_clearField(2);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);
}

/// *
///  Request: Computer agrees to wait for HW button press
///  @auxend
class ButtonAck extends $pb.GeneratedMessage {
  factory ButtonAck() => create();

  ButtonAck._();

  factory ButtonAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ButtonAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ButtonAck',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ButtonAck clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ButtonAck copyWith(void Function(ButtonAck) updates) =>
      super.copyWith((message) => updates(message as ButtonAck)) as ButtonAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ButtonAck create() => ButtonAck._();
  @$core.override
  ButtonAck createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ButtonAck getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ButtonAck>(create);
  static ButtonAck? _defaultInstance;
}

/// *
///  Response: Device is asking computer to show PIN matrix and awaits PIN encoded using this matrix scheme
///  @auxstart
///  @next PinMatrixAck
class PinMatrixRequest extends $pb.GeneratedMessage {
  factory PinMatrixRequest({
    PinMatrixRequest_PinMatrixRequestType? type,
  }) {
    final result = create();
    if (type != null) result.type = type;
    return result;
  }

  PinMatrixRequest._();

  factory PinMatrixRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PinMatrixRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PinMatrixRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..aE<PinMatrixRequest_PinMatrixRequestType>(
        1, _omitFieldNames ? '' : 'type',
        enumValues: PinMatrixRequest_PinMatrixRequestType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PinMatrixRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PinMatrixRequest copyWith(void Function(PinMatrixRequest) updates) =>
      super.copyWith((message) => updates(message as PinMatrixRequest))
          as PinMatrixRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PinMatrixRequest create() => PinMatrixRequest._();
  @$core.override
  PinMatrixRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PinMatrixRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PinMatrixRequest>(create);
  static PinMatrixRequest? _defaultInstance;

  @$pb.TagNumber(1)
  PinMatrixRequest_PinMatrixRequestType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(PinMatrixRequest_PinMatrixRequestType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

/// *
///  Request: Computer responds with encoded PIN
///  @auxend
class PinMatrixAck extends $pb.GeneratedMessage {
  factory PinMatrixAck({
    $core.String? pin,
  }) {
    final result = create();
    if (pin != null) result.pin = pin;
    return result;
  }

  PinMatrixAck._();

  factory PinMatrixAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PinMatrixAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PinMatrixAck',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'pin');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PinMatrixAck clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PinMatrixAck copyWith(void Function(PinMatrixAck) updates) =>
      super.copyWith((message) => updates(message as PinMatrixAck))
          as PinMatrixAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PinMatrixAck create() => PinMatrixAck._();
  @$core.override
  PinMatrixAck createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PinMatrixAck getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PinMatrixAck>(create);
  static PinMatrixAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pin => $_getSZ(0);
  @$pb.TagNumber(1)
  set pin($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPin() => $_has(0);
  @$pb.TagNumber(1)
  void clearPin() => $_clearField(1);
}

/// *
///  Response: Device awaits encryption passphrase
///  @auxstart
///  @next PassphraseAck
class PassphraseRequest extends $pb.GeneratedMessage {
  factory PassphraseRequest({
    @$core.Deprecated('This field is deprecated.') $core.bool? onDevice,
  }) {
    final result = create();
    if (onDevice != null) result.onDevice = onDevice;
    return result;
  }

  PassphraseRequest._();

  factory PassphraseRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PassphraseRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PassphraseRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'OnDevice')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PassphraseRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PassphraseRequest copyWith(void Function(PassphraseRequest) updates) =>
      super.copyWith((message) => updates(message as PassphraseRequest))
          as PassphraseRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PassphraseRequest create() => PassphraseRequest._();
  @$core.override
  PassphraseRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PassphraseRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PassphraseRequest>(create);
  static PassphraseRequest? _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool get onDevice => $_getBF(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set onDevice($core.bool value) => $_setBool(0, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasOnDevice() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearOnDevice() => $_clearField(1);
}

/// *
///  Request: Send passphrase back
///  @auxend
class PassphraseAck extends $pb.GeneratedMessage {
  factory PassphraseAck({
    $core.String? passphrase,
    @$core.Deprecated('This field is deprecated.') $core.List<$core.int>? state,
    $core.bool? onDevice,
  }) {
    final result = create();
    if (passphrase != null) result.passphrase = passphrase;
    if (state != null) result.state = state;
    if (onDevice != null) result.onDevice = onDevice;
    return result;
  }

  PassphraseAck._();

  factory PassphraseAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PassphraseAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PassphraseAck',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'passphrase')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'State', $pb.PbFieldType.OY)
    ..aOB(3, _omitFieldNames ? '' : 'onDevice')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PassphraseAck clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PassphraseAck copyWith(void Function(PassphraseAck) updates) =>
      super.copyWith((message) => updates(message as PassphraseAck))
          as PassphraseAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PassphraseAck create() => PassphraseAck._();
  @$core.override
  PassphraseAck createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PassphraseAck getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PassphraseAck>(create);
  static PassphraseAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get passphrase => $_getSZ(0);
  @$pb.TagNumber(1)
  set passphrase($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPassphrase() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassphrase() => $_clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.List<$core.int> get state => $_getN(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set state($core.List<$core.int> value) => $_setBytes(1, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearState() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get onDevice => $_getBF(2);
  @$pb.TagNumber(3)
  set onDevice($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOnDevice() => $_has(2);
  @$pb.TagNumber(3)
  void clearOnDevice() => $_clearField(3);
}

/// *
///  Response: Device awaits passphrase state
///  Deprecated in 2.3.0
///  @next Deprecated_PassphraseStateAck
@$core.Deprecated('This message is deprecated')
class Deprecated_PassphraseStateRequest extends $pb.GeneratedMessage {
  factory Deprecated_PassphraseStateRequest({
    $core.List<$core.int>? state,
  }) {
    final result = create();
    if (state != null) result.state = state;
    return result;
  }

  Deprecated_PassphraseStateRequest._();

  factory Deprecated_PassphraseStateRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Deprecated_PassphraseStateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Deprecated_PassphraseStateRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Deprecated_PassphraseStateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Deprecated_PassphraseStateRequest copyWith(
          void Function(Deprecated_PassphraseStateRequest) updates) =>
      super.copyWith((message) =>
              updates(message as Deprecated_PassphraseStateRequest))
          as Deprecated_PassphraseStateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Deprecated_PassphraseStateRequest create() =>
      Deprecated_PassphraseStateRequest._();
  @$core.override
  Deprecated_PassphraseStateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Deprecated_PassphraseStateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Deprecated_PassphraseStateRequest>(
          create);
  static Deprecated_PassphraseStateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get state => $_getN(0);
  @$pb.TagNumber(1)
  set state($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => $_clearField(1);
}

/// *
///  Request: Send passphrase state back
///  Deprecated in 2.3.0
///  @auxend
@$core.Deprecated('This message is deprecated')
class Deprecated_PassphraseStateAck extends $pb.GeneratedMessage {
  factory Deprecated_PassphraseStateAck() => create();

  Deprecated_PassphraseStateAck._();

  factory Deprecated_PassphraseStateAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Deprecated_PassphraseStateAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Deprecated_PassphraseStateAck',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Deprecated_PassphraseStateAck clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Deprecated_PassphraseStateAck copyWith(
          void Function(Deprecated_PassphraseStateAck) updates) =>
      super.copyWith(
              (message) => updates(message as Deprecated_PassphraseStateAck))
          as Deprecated_PassphraseStateAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Deprecated_PassphraseStateAck create() =>
      Deprecated_PassphraseStateAck._();
  @$core.override
  Deprecated_PassphraseStateAck createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Deprecated_PassphraseStateAck getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Deprecated_PassphraseStateAck>(create);
  static Deprecated_PassphraseStateAck? _defaultInstance;
}

/// *
///  Structure representing BIP32 (hierarchical deterministic) node
///  Used for imports of private key into the device and exporting public key out of device
///  @embed
class HDNodeType extends $pb.GeneratedMessage {
  factory HDNodeType({
    $core.int? depth,
    $core.int? fingerprint,
    $core.int? childNum,
    $core.List<$core.int>? chainCode,
    $core.List<$core.int>? privateKey,
    $core.List<$core.int>? publicKey,
  }) {
    final result = create();
    if (depth != null) result.depth = depth;
    if (fingerprint != null) result.fingerprint = fingerprint;
    if (childNum != null) result.childNum = childNum;
    if (chainCode != null) result.chainCode = chainCode;
    if (privateKey != null) result.privateKey = privateKey;
    if (publicKey != null) result.publicKey = publicKey;
    return result;
  }

  HDNodeType._();

  factory HDNodeType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HDNodeType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HDNodeType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'depth', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'fingerprint',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'childNum', fieldType: $pb.PbFieldType.QU3)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'chainCode', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'privateKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        6, _omitFieldNames ? '' : 'publicKey', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HDNodeType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HDNodeType copyWith(void Function(HDNodeType) updates) =>
      super.copyWith((message) => updates(message as HDNodeType)) as HDNodeType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HDNodeType create() => HDNodeType._();
  @$core.override
  HDNodeType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HDNodeType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HDNodeType>(create);
  static HDNodeType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get depth => $_getIZ(0);
  @$pb.TagNumber(1)
  set depth($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDepth() => $_has(0);
  @$pb.TagNumber(1)
  void clearDepth() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get fingerprint => $_getIZ(1);
  @$pb.TagNumber(2)
  set fingerprint($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFingerprint() => $_has(1);
  @$pb.TagNumber(2)
  void clearFingerprint() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get childNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set childNum($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasChildNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearChildNum() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get chainCode => $_getN(3);
  @$pb.TagNumber(4)
  set chainCode($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasChainCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearChainCode() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get privateKey => $_getN(4);
  @$pb.TagNumber(5)
  set privateKey($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPrivateKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrivateKey() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get publicKey => $_getN(5);
  @$pb.TagNumber(6)
  set publicKey($core.List<$core.int> value) => $_setBytes(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPublicKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearPublicKey() => $_clearField(6);
}

class PaymentRequest_PaymentRequestMemo extends $pb.GeneratedMessage {
  factory PaymentRequest_PaymentRequestMemo({
    PaymentRequest_TextMemo? textMemo,
    PaymentRequest_RefundMemo? refundMemo,
    PaymentRequest_CoinPurchaseMemo? coinPurchaseMemo,
    PaymentRequest_TextDetailsMemo? textDetailsMemo,
  }) {
    final result = create();
    if (textMemo != null) result.textMemo = textMemo;
    if (refundMemo != null) result.refundMemo = refundMemo;
    if (coinPurchaseMemo != null) result.coinPurchaseMemo = coinPurchaseMemo;
    if (textDetailsMemo != null) result.textDetailsMemo = textDetailsMemo;
    return result;
  }

  PaymentRequest_PaymentRequestMemo._();

  factory PaymentRequest_PaymentRequestMemo.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PaymentRequest_PaymentRequestMemo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PaymentRequest.PaymentRequestMemo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..aOM<PaymentRequest_TextMemo>(1, _omitFieldNames ? '' : 'textMemo',
        subBuilder: PaymentRequest_TextMemo.create)
    ..aOM<PaymentRequest_RefundMemo>(2, _omitFieldNames ? '' : 'refundMemo',
        subBuilder: PaymentRequest_RefundMemo.create)
    ..aOM<PaymentRequest_CoinPurchaseMemo>(
        3, _omitFieldNames ? '' : 'coinPurchaseMemo',
        subBuilder: PaymentRequest_CoinPurchaseMemo.create)
    ..aOM<PaymentRequest_TextDetailsMemo>(
        4, _omitFieldNames ? '' : 'textDetailsMemo',
        subBuilder: PaymentRequest_TextDetailsMemo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentRequest_PaymentRequestMemo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentRequest_PaymentRequestMemo copyWith(
          void Function(PaymentRequest_PaymentRequestMemo) updates) =>
      super.copyWith((message) =>
              updates(message as PaymentRequest_PaymentRequestMemo))
          as PaymentRequest_PaymentRequestMemo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaymentRequest_PaymentRequestMemo create() =>
      PaymentRequest_PaymentRequestMemo._();
  @$core.override
  PaymentRequest_PaymentRequestMemo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PaymentRequest_PaymentRequestMemo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PaymentRequest_PaymentRequestMemo>(
          create);
  static PaymentRequest_PaymentRequestMemo? _defaultInstance;

  @$pb.TagNumber(1)
  PaymentRequest_TextMemo get textMemo => $_getN(0);
  @$pb.TagNumber(1)
  set textMemo(PaymentRequest_TextMemo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTextMemo() => $_has(0);
  @$pb.TagNumber(1)
  void clearTextMemo() => $_clearField(1);
  @$pb.TagNumber(1)
  PaymentRequest_TextMemo ensureTextMemo() => $_ensure(0);

  @$pb.TagNumber(2)
  PaymentRequest_RefundMemo get refundMemo => $_getN(1);
  @$pb.TagNumber(2)
  set refundMemo(PaymentRequest_RefundMemo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRefundMemo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefundMemo() => $_clearField(2);
  @$pb.TagNumber(2)
  PaymentRequest_RefundMemo ensureRefundMemo() => $_ensure(1);

  @$pb.TagNumber(3)
  PaymentRequest_CoinPurchaseMemo get coinPurchaseMemo => $_getN(2);
  @$pb.TagNumber(3)
  set coinPurchaseMemo(PaymentRequest_CoinPurchaseMemo value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCoinPurchaseMemo() => $_has(2);
  @$pb.TagNumber(3)
  void clearCoinPurchaseMemo() => $_clearField(3);
  @$pb.TagNumber(3)
  PaymentRequest_CoinPurchaseMemo ensureCoinPurchaseMemo() => $_ensure(2);

  @$pb.TagNumber(4)
  PaymentRequest_TextDetailsMemo get textDetailsMemo => $_getN(3);
  @$pb.TagNumber(4)
  set textDetailsMemo(PaymentRequest_TextDetailsMemo value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTextDetailsMemo() => $_has(3);
  @$pb.TagNumber(4)
  void clearTextDetailsMemo() => $_clearField(4);
  @$pb.TagNumber(4)
  PaymentRequest_TextDetailsMemo ensureTextDetailsMemo() => $_ensure(3);
}

class PaymentRequest_TextMemo extends $pb.GeneratedMessage {
  factory PaymentRequest_TextMemo({
    $core.String? text,
  }) {
    final result = create();
    if (text != null) result.text = text;
    return result;
  }

  PaymentRequest_TextMemo._();

  factory PaymentRequest_TextMemo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PaymentRequest_TextMemo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PaymentRequest.TextMemo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'text');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentRequest_TextMemo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentRequest_TextMemo copyWith(
          void Function(PaymentRequest_TextMemo) updates) =>
      super.copyWith((message) => updates(message as PaymentRequest_TextMemo))
          as PaymentRequest_TextMemo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaymentRequest_TextMemo create() => PaymentRequest_TextMemo._();
  @$core.override
  PaymentRequest_TextMemo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PaymentRequest_TextMemo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PaymentRequest_TextMemo>(create);
  static PaymentRequest_TextMemo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);
}

class PaymentRequest_TextDetailsMemo extends $pb.GeneratedMessage {
  factory PaymentRequest_TextDetailsMemo({
    $core.String? title,
    $core.String? text,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (text != null) result.text = text;
    return result;
  }

  PaymentRequest_TextDetailsMemo._();

  factory PaymentRequest_TextDetailsMemo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PaymentRequest_TextDetailsMemo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PaymentRequest.TextDetailsMemo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'title')
    ..aQS(2, _omitFieldNames ? '' : 'text');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentRequest_TextDetailsMemo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentRequest_TextDetailsMemo copyWith(
          void Function(PaymentRequest_TextDetailsMemo) updates) =>
      super.copyWith(
              (message) => updates(message as PaymentRequest_TextDetailsMemo))
          as PaymentRequest_TextDetailsMemo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaymentRequest_TextDetailsMemo create() =>
      PaymentRequest_TextDetailsMemo._();
  @$core.override
  PaymentRequest_TextDetailsMemo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PaymentRequest_TextDetailsMemo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PaymentRequest_TextDetailsMemo>(create);
  static PaymentRequest_TextDetailsMemo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);
}

class PaymentRequest_RefundMemo extends $pb.GeneratedMessage {
  factory PaymentRequest_RefundMemo({
    $core.String? address,
    $core.Iterable<$core.int>? addressN,
    $core.List<$core.int>? mac,
  }) {
    final result = create();
    if (address != null) result.address = address;
    if (addressN != null) result.addressN.addAll(addressN);
    if (mac != null) result.mac = mac;
    return result;
  }

  PaymentRequest_RefundMemo._();

  factory PaymentRequest_RefundMemo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PaymentRequest_RefundMemo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PaymentRequest.RefundMemo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'address')
    ..p<$core.int>(2, _omitFieldNames ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'mac', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentRequest_RefundMemo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentRequest_RefundMemo copyWith(
          void Function(PaymentRequest_RefundMemo) updates) =>
      super.copyWith((message) => updates(message as PaymentRequest_RefundMemo))
          as PaymentRequest_RefundMemo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaymentRequest_RefundMemo create() => PaymentRequest_RefundMemo._();
  @$core.override
  PaymentRequest_RefundMemo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PaymentRequest_RefundMemo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PaymentRequest_RefundMemo>(create);
  static PaymentRequest_RefundMemo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get addressN => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get mac => $_getN(2);
  @$pb.TagNumber(3)
  set mac($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMac() => $_has(2);
  @$pb.TagNumber(3)
  void clearMac() => $_clearField(3);
}

class PaymentRequest_CoinPurchaseMemo extends $pb.GeneratedMessage {
  factory PaymentRequest_CoinPurchaseMemo({
    $core.int? coinType,
    $core.String? amount,
    $core.String? address,
    $core.Iterable<$core.int>? addressN,
    $core.List<$core.int>? mac,
  }) {
    final result = create();
    if (coinType != null) result.coinType = coinType;
    if (amount != null) result.amount = amount;
    if (address != null) result.address = address;
    if (addressN != null) result.addressN.addAll(addressN);
    if (mac != null) result.mac = mac;
    return result;
  }

  PaymentRequest_CoinPurchaseMemo._();

  factory PaymentRequest_CoinPurchaseMemo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PaymentRequest_CoinPurchaseMemo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PaymentRequest.CoinPurchaseMemo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'coinType', fieldType: $pb.PbFieldType.QU3)
    ..aQS(2, _omitFieldNames ? '' : 'amount')
    ..aQS(3, _omitFieldNames ? '' : 'address')
    ..p<$core.int>(4, _omitFieldNames ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'mac', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentRequest_CoinPurchaseMemo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentRequest_CoinPurchaseMemo copyWith(
          void Function(PaymentRequest_CoinPurchaseMemo) updates) =>
      super.copyWith(
              (message) => updates(message as PaymentRequest_CoinPurchaseMemo))
          as PaymentRequest_CoinPurchaseMemo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaymentRequest_CoinPurchaseMemo create() =>
      PaymentRequest_CoinPurchaseMemo._();
  @$core.override
  PaymentRequest_CoinPurchaseMemo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PaymentRequest_CoinPurchaseMemo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PaymentRequest_CoinPurchaseMemo>(
          create);
  static PaymentRequest_CoinPurchaseMemo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get coinType => $_getIZ(0);
  @$pb.TagNumber(1)
  set coinType($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCoinType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoinType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get amount => $_getSZ(1);
  @$pb.TagNumber(2)
  set amount($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => $_clearField(2);

  /// string including units, e.g. "0.025 BTC"
  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.int> get addressN => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get mac => $_getN(4);
  @$pb.TagNumber(5)
  set mac($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMac() => $_has(4);
  @$pb.TagNumber(5)
  void clearMac() => $_clearField(5);
}

/// *
///  Structure representing a SLIP-0024 payment request.
///  @embed
class PaymentRequest extends $pb.GeneratedMessage {
  factory PaymentRequest({
    $core.List<$core.int>? nonce,
    $core.String? recipientName,
    $core.Iterable<PaymentRequest_PaymentRequestMemo>? memos,
    $core.List<$core.int>? signature,
    $core.List<$core.int>? amount,
  }) {
    final result = create();
    if (nonce != null) result.nonce = nonce;
    if (recipientName != null) result.recipientName = recipientName;
    if (memos != null) result.memos.addAll(memos);
    if (signature != null) result.signature = signature;
    if (amount != null) result.amount = amount;
    return result;
  }

  PaymentRequest._();

  factory PaymentRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PaymentRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PaymentRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'hw.trezor.messages.common'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.OY)
    ..aQS(2, _omitFieldNames ? '' : 'recipientName')
    ..pPM<PaymentRequest_PaymentRequestMemo>(3, _omitFieldNames ? '' : 'memos',
        subBuilder: PaymentRequest_PaymentRequestMemo.create)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        6, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentRequest copyWith(void Function(PaymentRequest) updates) =>
      super.copyWith((message) => updates(message as PaymentRequest))
          as PaymentRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaymentRequest create() => PaymentRequest._();
  @$core.override
  PaymentRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PaymentRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PaymentRequest>(create);
  static PaymentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get nonce => $_getN(0);
  @$pb.TagNumber(1)
  set nonce($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get recipientName => $_getSZ(1);
  @$pb.TagNumber(2)
  set recipientName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRecipientName() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecipientName() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<PaymentRequest_PaymentRequestMemo> get memos => $_getList(2);

  /// 8 or 32 bytes required for non-CoinJoin transactions; do not set this for fiat
  /// amounts (BUY crypto with fiat)
  @$pb.TagNumber(5)
  $core.List<$core.int> get signature => $_getN(3);
  @$pb.TagNumber(5)
  set signature($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(5)
  $core.bool hasSignature() => $_has(3);
  @$pb.TagNumber(5)
  void clearSignature() => $_clearField(5);

  /// https://github.com/satoshilabs/slips/commit/08d36aa61722275a21617ac6a713e31ec23fdec4
  @$pb.TagNumber(6)
  $core.List<$core.int> get amount => $_getN(4);
  @$pb.TagNumber(6)
  set amount($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(6)
  $core.bool hasAmount() => $_has(4);
  @$pb.TagNumber(6)
  void clearAmount() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
