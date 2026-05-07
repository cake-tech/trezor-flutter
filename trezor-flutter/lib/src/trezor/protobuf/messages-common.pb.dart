///
//  Generated code. Do not modify.
//  source: messages-common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'messages-common.pbenum.dart';

export 'messages-common.pbenum.dart';

class Success extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Success', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  Success._() : super();
  factory Success({
    $core.String? message,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory Success.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Success.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Success clone() => Success()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Success copyWith(void Function(Success) updates) => super.copyWith((message) => updates(message as Success)) as Success; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Success create() => Success._();
  Success createEmptyInstance() => create();
  static $pb.PbList<Success> createRepeated() => $pb.PbList<Success>();
  @$core.pragma('dart2js:noInline')
  static Success getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Success>(create);
  static Success? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class Failure extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Failure', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..e<Failure_FailureType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.OE, defaultOrMaker: Failure_FailureType.Failure_UnexpectedMessage, valueOf: Failure_FailureType.valueOf, enumValues: Failure_FailureType.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  Failure._() : super();
  factory Failure({
    Failure_FailureType? code,
    $core.String? message,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory Failure.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Failure.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Failure clone() => Failure()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Failure copyWith(void Function(Failure) updates) => super.copyWith((message) => updates(message as Failure)) as Failure; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Failure create() => Failure._();
  Failure createEmptyInstance() => create();
  static $pb.PbList<Failure> createRepeated() => $pb.PbList<Failure>();
  @$core.pragma('dart2js:noInline')
  static Failure getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Failure>(create);
  static Failure? _defaultInstance;

  @$pb.TagNumber(1)
  Failure_FailureType get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(Failure_FailureType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class ButtonRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ButtonRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..e<ButtonRequest_ButtonRequestType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.OE, defaultOrMaker: ButtonRequest_ButtonRequestType.ButtonRequest_Other, valueOf: ButtonRequest_ButtonRequestType.valueOf, enumValues: ButtonRequest_ButtonRequestType.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pages', $pb.PbFieldType.OU3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  ButtonRequest._() : super();
  factory ButtonRequest({
    ButtonRequest_ButtonRequestType? code,
    $core.int? pages,
    $core.String? name,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (pages != null) {
      _result.pages = pages;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory ButtonRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ButtonRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ButtonRequest clone() => ButtonRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ButtonRequest copyWith(void Function(ButtonRequest) updates) => super.copyWith((message) => updates(message as ButtonRequest)) as ButtonRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ButtonRequest create() => ButtonRequest._();
  ButtonRequest createEmptyInstance() => create();
  static $pb.PbList<ButtonRequest> createRepeated() => $pb.PbList<ButtonRequest>();
  @$core.pragma('dart2js:noInline')
  static ButtonRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ButtonRequest>(create);
  static ButtonRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ButtonRequest_ButtonRequestType get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(ButtonRequest_ButtonRequestType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pages => $_getIZ(1);
  @$pb.TagNumber(2)
  set pages($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPages() => $_has(1);
  @$pb.TagNumber(2)
  void clearPages() => clearField(2);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);
}

class ButtonAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ButtonAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ButtonAck._() : super();
  factory ButtonAck() => create();
  factory ButtonAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ButtonAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ButtonAck clone() => ButtonAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ButtonAck copyWith(void Function(ButtonAck) updates) => super.copyWith((message) => updates(message as ButtonAck)) as ButtonAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ButtonAck create() => ButtonAck._();
  ButtonAck createEmptyInstance() => create();
  static $pb.PbList<ButtonAck> createRepeated() => $pb.PbList<ButtonAck>();
  @$core.pragma('dart2js:noInline')
  static ButtonAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ButtonAck>(create);
  static ButtonAck? _defaultInstance;
}

class PinMatrixRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PinMatrixRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..e<PinMatrixRequest_PinMatrixRequestType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: PinMatrixRequest_PinMatrixRequestType.PinMatrixRequestType_Current, valueOf: PinMatrixRequest_PinMatrixRequestType.valueOf, enumValues: PinMatrixRequest_PinMatrixRequestType.values)
    ..hasRequiredFields = false
  ;

  PinMatrixRequest._() : super();
  factory PinMatrixRequest({
    PinMatrixRequest_PinMatrixRequestType? type,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory PinMatrixRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PinMatrixRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PinMatrixRequest clone() => PinMatrixRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PinMatrixRequest copyWith(void Function(PinMatrixRequest) updates) => super.copyWith((message) => updates(message as PinMatrixRequest)) as PinMatrixRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PinMatrixRequest create() => PinMatrixRequest._();
  PinMatrixRequest createEmptyInstance() => create();
  static $pb.PbList<PinMatrixRequest> createRepeated() => $pb.PbList<PinMatrixRequest>();
  @$core.pragma('dart2js:noInline')
  static PinMatrixRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PinMatrixRequest>(create);
  static PinMatrixRequest? _defaultInstance;

  @$pb.TagNumber(1)
  PinMatrixRequest_PinMatrixRequestType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(PinMatrixRequest_PinMatrixRequestType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
}

class PinMatrixAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PinMatrixAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pin')
  ;

  PinMatrixAck._() : super();
  factory PinMatrixAck({
    $core.String? pin,
  }) {
    final _result = create();
    if (pin != null) {
      _result.pin = pin;
    }
    return _result;
  }
  factory PinMatrixAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PinMatrixAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PinMatrixAck clone() => PinMatrixAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PinMatrixAck copyWith(void Function(PinMatrixAck) updates) => super.copyWith((message) => updates(message as PinMatrixAck)) as PinMatrixAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PinMatrixAck create() => PinMatrixAck._();
  PinMatrixAck createEmptyInstance() => create();
  static $pb.PbList<PinMatrixAck> createRepeated() => $pb.PbList<PinMatrixAck>();
  @$core.pragma('dart2js:noInline')
  static PinMatrixAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PinMatrixAck>(create);
  static PinMatrixAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pin => $_getSZ(0);
  @$pb.TagNumber(1)
  set pin($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPin() => $_has(0);
  @$pb.TagNumber(1)
  void clearPin() => clearField(1);
}

class PassphraseRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PassphraseRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'OnDevice')
    ..hasRequiredFields = false
  ;

  PassphraseRequest._() : super();
  factory PassphraseRequest({
  @$core.Deprecated('This field is deprecated.')
    $core.bool? onDevice,
  }) {
    final _result = create();
    if (onDevice != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.onDevice = onDevice;
    }
    return _result;
  }
  factory PassphraseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PassphraseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PassphraseRequest clone() => PassphraseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PassphraseRequest copyWith(void Function(PassphraseRequest) updates) => super.copyWith((message) => updates(message as PassphraseRequest)) as PassphraseRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PassphraseRequest create() => PassphraseRequest._();
  PassphraseRequest createEmptyInstance() => create();
  static $pb.PbList<PassphraseRequest> createRepeated() => $pb.PbList<PassphraseRequest>();
  @$core.pragma('dart2js:noInline')
  static PassphraseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PassphraseRequest>(create);
  static PassphraseRequest? _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool get onDevice => $_getBF(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set onDevice($core.bool v) { $_setBool(0, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasOnDevice() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearOnDevice() => clearField(1);
}

class PassphraseAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PassphraseAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passphrase')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'State', $pb.PbFieldType.OY)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'onDevice')
    ..hasRequiredFields = false
  ;

  PassphraseAck._() : super();
  factory PassphraseAck({
    $core.String? passphrase,
  @$core.Deprecated('This field is deprecated.')
    $core.List<$core.int>? state,
    $core.bool? onDevice,
  }) {
    final _result = create();
    if (passphrase != null) {
      _result.passphrase = passphrase;
    }
    if (state != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.state = state;
    }
    if (onDevice != null) {
      _result.onDevice = onDevice;
    }
    return _result;
  }
  factory PassphraseAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PassphraseAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PassphraseAck clone() => PassphraseAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PassphraseAck copyWith(void Function(PassphraseAck) updates) => super.copyWith((message) => updates(message as PassphraseAck)) as PassphraseAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PassphraseAck create() => PassphraseAck._();
  PassphraseAck createEmptyInstance() => create();
  static $pb.PbList<PassphraseAck> createRepeated() => $pb.PbList<PassphraseAck>();
  @$core.pragma('dart2js:noInline')
  static PassphraseAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PassphraseAck>(create);
  static PassphraseAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get passphrase => $_getSZ(0);
  @$pb.TagNumber(1)
  set passphrase($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassphrase() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassphrase() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.List<$core.int> get state => $_getN(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set state($core.List<$core.int> v) { $_setBytes(1, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get onDevice => $_getBF(2);
  @$pb.TagNumber(3)
  set onDevice($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOnDevice() => $_has(2);
  @$pb.TagNumber(3)
  void clearOnDevice() => clearField(3);
}

class Deprecated_PassphraseStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Deprecated_PassphraseStateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Deprecated_PassphraseStateRequest._() : super();
  factory Deprecated_PassphraseStateRequest({
    $core.List<$core.int>? state,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    return _result;
  }
  factory Deprecated_PassphraseStateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Deprecated_PassphraseStateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Deprecated_PassphraseStateRequest clone() => Deprecated_PassphraseStateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Deprecated_PassphraseStateRequest copyWith(void Function(Deprecated_PassphraseStateRequest) updates) => super.copyWith((message) => updates(message as Deprecated_PassphraseStateRequest)) as Deprecated_PassphraseStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Deprecated_PassphraseStateRequest create() => Deprecated_PassphraseStateRequest._();
  Deprecated_PassphraseStateRequest createEmptyInstance() => create();
  static $pb.PbList<Deprecated_PassphraseStateRequest> createRepeated() => $pb.PbList<Deprecated_PassphraseStateRequest>();
  @$core.pragma('dart2js:noInline')
  static Deprecated_PassphraseStateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Deprecated_PassphraseStateRequest>(create);
  static Deprecated_PassphraseStateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get state => $_getN(0);
  @$pb.TagNumber(1)
  set state($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
}

class Deprecated_PassphraseStateAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Deprecated_PassphraseStateAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Deprecated_PassphraseStateAck._() : super();
  factory Deprecated_PassphraseStateAck() => create();
  factory Deprecated_PassphraseStateAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Deprecated_PassphraseStateAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Deprecated_PassphraseStateAck clone() => Deprecated_PassphraseStateAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Deprecated_PassphraseStateAck copyWith(void Function(Deprecated_PassphraseStateAck) updates) => super.copyWith((message) => updates(message as Deprecated_PassphraseStateAck)) as Deprecated_PassphraseStateAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Deprecated_PassphraseStateAck create() => Deprecated_PassphraseStateAck._();
  Deprecated_PassphraseStateAck createEmptyInstance() => create();
  static $pb.PbList<Deprecated_PassphraseStateAck> createRepeated() => $pb.PbList<Deprecated_PassphraseStateAck>();
  @$core.pragma('dart2js:noInline')
  static Deprecated_PassphraseStateAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Deprecated_PassphraseStateAck>(create);
  static Deprecated_PassphraseStateAck? _defaultInstance;
}

class HDNodeType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HDNodeType', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'depth', $pb.PbFieldType.QU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fingerprint', $pb.PbFieldType.QU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'childNum', $pb.PbFieldType.QU3)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chainCode', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'privateKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', $pb.PbFieldType.QY)
  ;

  HDNodeType._() : super();
  factory HDNodeType({
    $core.int? depth,
    $core.int? fingerprint,
    $core.int? childNum,
    $core.List<$core.int>? chainCode,
    $core.List<$core.int>? privateKey,
    $core.List<$core.int>? publicKey,
  }) {
    final _result = create();
    if (depth != null) {
      _result.depth = depth;
    }
    if (fingerprint != null) {
      _result.fingerprint = fingerprint;
    }
    if (childNum != null) {
      _result.childNum = childNum;
    }
    if (chainCode != null) {
      _result.chainCode = chainCode;
    }
    if (privateKey != null) {
      _result.privateKey = privateKey;
    }
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    return _result;
  }
  factory HDNodeType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HDNodeType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HDNodeType clone() => HDNodeType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HDNodeType copyWith(void Function(HDNodeType) updates) => super.copyWith((message) => updates(message as HDNodeType)) as HDNodeType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HDNodeType create() => HDNodeType._();
  HDNodeType createEmptyInstance() => create();
  static $pb.PbList<HDNodeType> createRepeated() => $pb.PbList<HDNodeType>();
  @$core.pragma('dart2js:noInline')
  static HDNodeType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HDNodeType>(create);
  static HDNodeType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get depth => $_getIZ(0);
  @$pb.TagNumber(1)
  set depth($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDepth() => $_has(0);
  @$pb.TagNumber(1)
  void clearDepth() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get fingerprint => $_getIZ(1);
  @$pb.TagNumber(2)
  set fingerprint($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFingerprint() => $_has(1);
  @$pb.TagNumber(2)
  void clearFingerprint() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get childNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set childNum($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChildNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearChildNum() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get chainCode => $_getN(3);
  @$pb.TagNumber(4)
  set chainCode($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasChainCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearChainCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get privateKey => $_getN(4);
  @$pb.TagNumber(5)
  set privateKey($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrivateKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrivateKey() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get publicKey => $_getN(5);
  @$pb.TagNumber(6)
  set publicKey($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPublicKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearPublicKey() => clearField(6);
}

class PaymentRequest_PaymentRequestMemo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PaymentRequest.PaymentRequestMemo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..aOM<PaymentRequest_TextMemo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'textMemo', subBuilder: PaymentRequest_TextMemo.create)
    ..aOM<PaymentRequest_RefundMemo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refundMemo', subBuilder: PaymentRequest_RefundMemo.create)
    ..aOM<PaymentRequest_CoinPurchaseMemo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinPurchaseMemo', subBuilder: PaymentRequest_CoinPurchaseMemo.create)
    ..aOM<PaymentRequest_TextDetailsMemo>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'textDetailsMemo', subBuilder: PaymentRequest_TextDetailsMemo.create)
  ;

  PaymentRequest_PaymentRequestMemo._() : super();
  factory PaymentRequest_PaymentRequestMemo({
    PaymentRequest_TextMemo? textMemo,
    PaymentRequest_RefundMemo? refundMemo,
    PaymentRequest_CoinPurchaseMemo? coinPurchaseMemo,
    PaymentRequest_TextDetailsMemo? textDetailsMemo,
  }) {
    final _result = create();
    if (textMemo != null) {
      _result.textMemo = textMemo;
    }
    if (refundMemo != null) {
      _result.refundMemo = refundMemo;
    }
    if (coinPurchaseMemo != null) {
      _result.coinPurchaseMemo = coinPurchaseMemo;
    }
    if (textDetailsMemo != null) {
      _result.textDetailsMemo = textDetailsMemo;
    }
    return _result;
  }
  factory PaymentRequest_PaymentRequestMemo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentRequest_PaymentRequestMemo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentRequest_PaymentRequestMemo clone() => PaymentRequest_PaymentRequestMemo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentRequest_PaymentRequestMemo copyWith(void Function(PaymentRequest_PaymentRequestMemo) updates) => super.copyWith((message) => updates(message as PaymentRequest_PaymentRequestMemo)) as PaymentRequest_PaymentRequestMemo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentRequest_PaymentRequestMemo create() => PaymentRequest_PaymentRequestMemo._();
  PaymentRequest_PaymentRequestMemo createEmptyInstance() => create();
  static $pb.PbList<PaymentRequest_PaymentRequestMemo> createRepeated() => $pb.PbList<PaymentRequest_PaymentRequestMemo>();
  @$core.pragma('dart2js:noInline')
  static PaymentRequest_PaymentRequestMemo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentRequest_PaymentRequestMemo>(create);
  static PaymentRequest_PaymentRequestMemo? _defaultInstance;

  @$pb.TagNumber(1)
  PaymentRequest_TextMemo get textMemo => $_getN(0);
  @$pb.TagNumber(1)
  set textMemo(PaymentRequest_TextMemo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTextMemo() => $_has(0);
  @$pb.TagNumber(1)
  void clearTextMemo() => clearField(1);
  @$pb.TagNumber(1)
  PaymentRequest_TextMemo ensureTextMemo() => $_ensure(0);

  @$pb.TagNumber(2)
  PaymentRequest_RefundMemo get refundMemo => $_getN(1);
  @$pb.TagNumber(2)
  set refundMemo(PaymentRequest_RefundMemo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefundMemo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefundMemo() => clearField(2);
  @$pb.TagNumber(2)
  PaymentRequest_RefundMemo ensureRefundMemo() => $_ensure(1);

  @$pb.TagNumber(3)
  PaymentRequest_CoinPurchaseMemo get coinPurchaseMemo => $_getN(2);
  @$pb.TagNumber(3)
  set coinPurchaseMemo(PaymentRequest_CoinPurchaseMemo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCoinPurchaseMemo() => $_has(2);
  @$pb.TagNumber(3)
  void clearCoinPurchaseMemo() => clearField(3);
  @$pb.TagNumber(3)
  PaymentRequest_CoinPurchaseMemo ensureCoinPurchaseMemo() => $_ensure(2);

  @$pb.TagNumber(4)
  PaymentRequest_TextDetailsMemo get textDetailsMemo => $_getN(3);
  @$pb.TagNumber(4)
  set textDetailsMemo(PaymentRequest_TextDetailsMemo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTextDetailsMemo() => $_has(3);
  @$pb.TagNumber(4)
  void clearTextDetailsMemo() => clearField(4);
  @$pb.TagNumber(4)
  PaymentRequest_TextDetailsMemo ensureTextDetailsMemo() => $_ensure(3);
}

class PaymentRequest_TextMemo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PaymentRequest.TextMemo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
  ;

  PaymentRequest_TextMemo._() : super();
  factory PaymentRequest_TextMemo({
    $core.String? text,
  }) {
    final _result = create();
    if (text != null) {
      _result.text = text;
    }
    return _result;
  }
  factory PaymentRequest_TextMemo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentRequest_TextMemo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentRequest_TextMemo clone() => PaymentRequest_TextMemo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentRequest_TextMemo copyWith(void Function(PaymentRequest_TextMemo) updates) => super.copyWith((message) => updates(message as PaymentRequest_TextMemo)) as PaymentRequest_TextMemo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentRequest_TextMemo create() => PaymentRequest_TextMemo._();
  PaymentRequest_TextMemo createEmptyInstance() => create();
  static $pb.PbList<PaymentRequest_TextMemo> createRepeated() => $pb.PbList<PaymentRequest_TextMemo>();
  @$core.pragma('dart2js:noInline')
  static PaymentRequest_TextMemo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentRequest_TextMemo>(create);
  static PaymentRequest_TextMemo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);
}

class PaymentRequest_TextDetailsMemo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PaymentRequest.TextDetailsMemo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
  ;

  PaymentRequest_TextDetailsMemo._() : super();
  factory PaymentRequest_TextDetailsMemo({
    $core.String? title,
    $core.String? text,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (text != null) {
      _result.text = text;
    }
    return _result;
  }
  factory PaymentRequest_TextDetailsMemo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentRequest_TextDetailsMemo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentRequest_TextDetailsMemo clone() => PaymentRequest_TextDetailsMemo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentRequest_TextDetailsMemo copyWith(void Function(PaymentRequest_TextDetailsMemo) updates) => super.copyWith((message) => updates(message as PaymentRequest_TextDetailsMemo)) as PaymentRequest_TextDetailsMemo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentRequest_TextDetailsMemo create() => PaymentRequest_TextDetailsMemo._();
  PaymentRequest_TextDetailsMemo createEmptyInstance() => create();
  static $pb.PbList<PaymentRequest_TextDetailsMemo> createRepeated() => $pb.PbList<PaymentRequest_TextDetailsMemo>();
  @$core.pragma('dart2js:noInline')
  static PaymentRequest_TextDetailsMemo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentRequest_TextDetailsMemo>(create);
  static PaymentRequest_TextDetailsMemo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);
}

class PaymentRequest_RefundMemo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PaymentRequest.RefundMemo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mac', $pb.PbFieldType.QY)
  ;

  PaymentRequest_RefundMemo._() : super();
  factory PaymentRequest_RefundMemo({
    $core.String? address,
    $core.Iterable<$core.int>? addressN,
    $core.List<$core.int>? mac,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (mac != null) {
      _result.mac = mac;
    }
    return _result;
  }
  factory PaymentRequest_RefundMemo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentRequest_RefundMemo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentRequest_RefundMemo clone() => PaymentRequest_RefundMemo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentRequest_RefundMemo copyWith(void Function(PaymentRequest_RefundMemo) updates) => super.copyWith((message) => updates(message as PaymentRequest_RefundMemo)) as PaymentRequest_RefundMemo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentRequest_RefundMemo create() => PaymentRequest_RefundMemo._();
  PaymentRequest_RefundMemo createEmptyInstance() => create();
  static $pb.PbList<PaymentRequest_RefundMemo> createRepeated() => $pb.PbList<PaymentRequest_RefundMemo>();
  @$core.pragma('dart2js:noInline')
  static PaymentRequest_RefundMemo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentRequest_RefundMemo>(create);
  static PaymentRequest_RefundMemo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get addressN => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get mac => $_getN(2);
  @$pb.TagNumber(3)
  set mac($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMac() => $_has(2);
  @$pb.TagNumber(3)
  void clearMac() => clearField(3);
}

class PaymentRequest_CoinPurchaseMemo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PaymentRequest.CoinPurchaseMemo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinType', $pb.PbFieldType.QU3)
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..aQS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..p<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mac', $pb.PbFieldType.QY)
  ;

  PaymentRequest_CoinPurchaseMemo._() : super();
  factory PaymentRequest_CoinPurchaseMemo({
    $core.int? coinType,
    $core.String? amount,
    $core.String? address,
    $core.Iterable<$core.int>? addressN,
    $core.List<$core.int>? mac,
  }) {
    final _result = create();
    if (coinType != null) {
      _result.coinType = coinType;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (address != null) {
      _result.address = address;
    }
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (mac != null) {
      _result.mac = mac;
    }
    return _result;
  }
  factory PaymentRequest_CoinPurchaseMemo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentRequest_CoinPurchaseMemo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentRequest_CoinPurchaseMemo clone() => PaymentRequest_CoinPurchaseMemo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentRequest_CoinPurchaseMemo copyWith(void Function(PaymentRequest_CoinPurchaseMemo) updates) => super.copyWith((message) => updates(message as PaymentRequest_CoinPurchaseMemo)) as PaymentRequest_CoinPurchaseMemo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentRequest_CoinPurchaseMemo create() => PaymentRequest_CoinPurchaseMemo._();
  PaymentRequest_CoinPurchaseMemo createEmptyInstance() => create();
  static $pb.PbList<PaymentRequest_CoinPurchaseMemo> createRepeated() => $pb.PbList<PaymentRequest_CoinPurchaseMemo>();
  @$core.pragma('dart2js:noInline')
  static PaymentRequest_CoinPurchaseMemo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentRequest_CoinPurchaseMemo>(create);
  static PaymentRequest_CoinPurchaseMemo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get coinType => $_getIZ(0);
  @$pb.TagNumber(1)
  set coinType($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoinType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoinType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get amount => $_getSZ(1);
  @$pb.TagNumber(2)
  set amount($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get addressN => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get mac => $_getN(4);
  @$pb.TagNumber(5)
  set mac($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMac() => $_has(4);
  @$pb.TagNumber(5)
  void clearMac() => clearField(5);
}

class PaymentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PaymentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.common'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nonce', $pb.PbFieldType.OY)
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipientName')
    ..pc<PaymentRequest_PaymentRequestMemo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memos', $pb.PbFieldType.PM, subBuilder: PaymentRequest_PaymentRequestMemo.create)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OY)
  ;

  PaymentRequest._() : super();
  factory PaymentRequest({
    $core.List<$core.int>? nonce,
    $core.String? recipientName,
    $core.Iterable<PaymentRequest_PaymentRequestMemo>? memos,
    $core.List<$core.int>? signature,
    $core.List<$core.int>? amount,
  }) {
    final _result = create();
    if (nonce != null) {
      _result.nonce = nonce;
    }
    if (recipientName != null) {
      _result.recipientName = recipientName;
    }
    if (memos != null) {
      _result.memos.addAll(memos);
    }
    if (signature != null) {
      _result.signature = signature;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory PaymentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentRequest clone() => PaymentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentRequest copyWith(void Function(PaymentRequest) updates) => super.copyWith((message) => updates(message as PaymentRequest)) as PaymentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentRequest create() => PaymentRequest._();
  PaymentRequest createEmptyInstance() => create();
  static $pb.PbList<PaymentRequest> createRepeated() => $pb.PbList<PaymentRequest>();
  @$core.pragma('dart2js:noInline')
  static PaymentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentRequest>(create);
  static PaymentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get nonce => $_getN(0);
  @$pb.TagNumber(1)
  set nonce($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get recipientName => $_getSZ(1);
  @$pb.TagNumber(2)
  set recipientName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecipientName() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecipientName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<PaymentRequest_PaymentRequestMemo> get memos => $_getList(2);

  @$pb.TagNumber(5)
  $core.List<$core.int> get signature => $_getN(3);
  @$pb.TagNumber(5)
  set signature($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasSignature() => $_has(3);
  @$pb.TagNumber(5)
  void clearSignature() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get amount => $_getN(4);
  @$pb.TagNumber(6)
  set amount($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasAmount() => $_has(4);
  @$pb.TagNumber(6)
  void clearAmount() => clearField(6);
}

