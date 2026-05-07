///
//  Generated code. Do not modify.
//  source: messages-monero.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'messages-monero.pbenum.dart';

export 'messages-monero.pbenum.dart';

class MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionSourceEntry.MoneroOutputEntry.MoneroRctKeyPublic', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dest', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitment', $pb.PbFieldType.QY)
  ;

  MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic._() : super();
  factory MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic({
    $core.List<$core.int>? dest,
    $core.List<$core.int>? commitment,
  }) {
    final _result = create();
    if (dest != null) {
      _result.dest = dest;
    }
    if (commitment != null) {
      _result.commitment = commitment;
    }
    return _result;
  }
  factory MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic clone() => MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic copyWith(void Function(MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic) updates) => super.copyWith((message) => updates(message as MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic)) as MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic create() => MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic._();
  MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic> createRepeated() => $pb.PbList<MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic>(create);
  static MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get dest => $_getN(0);
  @$pb.TagNumber(1)
  set dest($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDest() => $_has(0);
  @$pb.TagNumber(1)
  void clearDest() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get commitment => $_getN(1);
  @$pb.TagNumber(2)
  set commitment($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommitment() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommitment() => clearField(2);
}

class MoneroTransactionSourceEntry_MoneroOutputEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionSourceEntry.MoneroOutputEntry', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idx', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', subBuilder: MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic.create)
  ;

  MoneroTransactionSourceEntry_MoneroOutputEntry._() : super();
  factory MoneroTransactionSourceEntry_MoneroOutputEntry({
    $fixnum.Int64? idx,
    MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic? key,
  }) {
    final _result = create();
    if (idx != null) {
      _result.idx = idx;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory MoneroTransactionSourceEntry_MoneroOutputEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionSourceEntry_MoneroOutputEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionSourceEntry_MoneroOutputEntry clone() => MoneroTransactionSourceEntry_MoneroOutputEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionSourceEntry_MoneroOutputEntry copyWith(void Function(MoneroTransactionSourceEntry_MoneroOutputEntry) updates) => super.copyWith((message) => updates(message as MoneroTransactionSourceEntry_MoneroOutputEntry)) as MoneroTransactionSourceEntry_MoneroOutputEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSourceEntry_MoneroOutputEntry create() => MoneroTransactionSourceEntry_MoneroOutputEntry._();
  MoneroTransactionSourceEntry_MoneroOutputEntry createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionSourceEntry_MoneroOutputEntry> createRepeated() => $pb.PbList<MoneroTransactionSourceEntry_MoneroOutputEntry>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSourceEntry_MoneroOutputEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionSourceEntry_MoneroOutputEntry>(create);
  static MoneroTransactionSourceEntry_MoneroOutputEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get idx => $_getI64(0);
  @$pb.TagNumber(1)
  set idx($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdx() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdx() => clearField(1);

  @$pb.TagNumber(2)
  MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic get key => $_getN(1);
  @$pb.TagNumber(2)
  set key(MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
  @$pb.TagNumber(2)
  MoneroTransactionSourceEntry_MoneroOutputEntry_MoneroRctKeyPublic ensureKey() => $_ensure(1);
}

class MoneroTransactionSourceEntry_MoneroMultisigKLRki extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionSourceEntry.MoneroMultisigKLRki', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'K', $pb.PbFieldType.OY, protoName: 'K')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'L', $pb.PbFieldType.OY, protoName: 'L')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'R', $pb.PbFieldType.OY, protoName: 'R')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ki', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MoneroTransactionSourceEntry_MoneroMultisigKLRki._() : super();
  factory MoneroTransactionSourceEntry_MoneroMultisigKLRki({
    $core.List<$core.int>? k,
    $core.List<$core.int>? l,
    $core.List<$core.int>? r,
    $core.List<$core.int>? ki,
  }) {
    final _result = create();
    if (k != null) {
      _result.k = k;
    }
    if (l != null) {
      _result.l = l;
    }
    if (r != null) {
      _result.r = r;
    }
    if (ki != null) {
      _result.ki = ki;
    }
    return _result;
  }
  factory MoneroTransactionSourceEntry_MoneroMultisigKLRki.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionSourceEntry_MoneroMultisigKLRki.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionSourceEntry_MoneroMultisigKLRki clone() => MoneroTransactionSourceEntry_MoneroMultisigKLRki()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionSourceEntry_MoneroMultisigKLRki copyWith(void Function(MoneroTransactionSourceEntry_MoneroMultisigKLRki) updates) => super.copyWith((message) => updates(message as MoneroTransactionSourceEntry_MoneroMultisigKLRki)) as MoneroTransactionSourceEntry_MoneroMultisigKLRki; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSourceEntry_MoneroMultisigKLRki create() => MoneroTransactionSourceEntry_MoneroMultisigKLRki._();
  MoneroTransactionSourceEntry_MoneroMultisigKLRki createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionSourceEntry_MoneroMultisigKLRki> createRepeated() => $pb.PbList<MoneroTransactionSourceEntry_MoneroMultisigKLRki>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSourceEntry_MoneroMultisigKLRki getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionSourceEntry_MoneroMultisigKLRki>(create);
  static MoneroTransactionSourceEntry_MoneroMultisigKLRki? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get k => $_getN(0);
  @$pb.TagNumber(1)
  set k($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasK() => $_has(0);
  @$pb.TagNumber(1)
  void clearK() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get l => $_getN(1);
  @$pb.TagNumber(2)
  set l($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasL() => $_has(1);
  @$pb.TagNumber(2)
  void clearL() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get r => $_getN(2);
  @$pb.TagNumber(3)
  set r($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasR() => $_has(2);
  @$pb.TagNumber(3)
  void clearR() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get ki => $_getN(3);
  @$pb.TagNumber(4)
  set ki($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasKi() => $_has(3);
  @$pb.TagNumber(4)
  void clearKi() => clearField(4);
}

class MoneroTransactionSourceEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionSourceEntry', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..pc<MoneroTransactionSourceEntry_MoneroOutputEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputs', $pb.PbFieldType.PM, subBuilder: MoneroTransactionSourceEntry_MoneroOutputEntry.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'realOutput', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'realOutTxKey', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'realOutAdditionalTxKeys', $pb.PbFieldType.PY)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'realOutputInTxIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rct')
    ..a<$core.List<$core.int>>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mask', $pb.PbFieldType.OY)
    ..aOM<MoneroTransactionSourceEntry_MoneroMultisigKLRki>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multisigKLRki', protoName: 'multisig_kLRki', subBuilder: MoneroTransactionSourceEntry_MoneroMultisigKLRki.create)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subaddrMinor', $pb.PbFieldType.OU3)
  ;

  MoneroTransactionSourceEntry._() : super();
  factory MoneroTransactionSourceEntry({
    $core.Iterable<MoneroTransactionSourceEntry_MoneroOutputEntry>? outputs,
    $fixnum.Int64? realOutput,
    $core.List<$core.int>? realOutTxKey,
    $core.Iterable<$core.List<$core.int>>? realOutAdditionalTxKeys,
    $fixnum.Int64? realOutputInTxIndex,
    $fixnum.Int64? amount,
    $core.bool? rct,
    $core.List<$core.int>? mask,
    MoneroTransactionSourceEntry_MoneroMultisigKLRki? multisigKLRki,
    $core.int? subaddrMinor,
  }) {
    final _result = create();
    if (outputs != null) {
      _result.outputs.addAll(outputs);
    }
    if (realOutput != null) {
      _result.realOutput = realOutput;
    }
    if (realOutTxKey != null) {
      _result.realOutTxKey = realOutTxKey;
    }
    if (realOutAdditionalTxKeys != null) {
      _result.realOutAdditionalTxKeys.addAll(realOutAdditionalTxKeys);
    }
    if (realOutputInTxIndex != null) {
      _result.realOutputInTxIndex = realOutputInTxIndex;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (rct != null) {
      _result.rct = rct;
    }
    if (mask != null) {
      _result.mask = mask;
    }
    if (multisigKLRki != null) {
      _result.multisigKLRki = multisigKLRki;
    }
    if (subaddrMinor != null) {
      _result.subaddrMinor = subaddrMinor;
    }
    return _result;
  }
  factory MoneroTransactionSourceEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionSourceEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionSourceEntry clone() => MoneroTransactionSourceEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionSourceEntry copyWith(void Function(MoneroTransactionSourceEntry) updates) => super.copyWith((message) => updates(message as MoneroTransactionSourceEntry)) as MoneroTransactionSourceEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSourceEntry create() => MoneroTransactionSourceEntry._();
  MoneroTransactionSourceEntry createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionSourceEntry> createRepeated() => $pb.PbList<MoneroTransactionSourceEntry>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSourceEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionSourceEntry>(create);
  static MoneroTransactionSourceEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MoneroTransactionSourceEntry_MoneroOutputEntry> get outputs => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get realOutput => $_getI64(1);
  @$pb.TagNumber(2)
  set realOutput($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRealOutput() => $_has(1);
  @$pb.TagNumber(2)
  void clearRealOutput() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get realOutTxKey => $_getN(2);
  @$pb.TagNumber(3)
  set realOutTxKey($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRealOutTxKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearRealOutTxKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.List<$core.int>> get realOutAdditionalTxKeys => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get realOutputInTxIndex => $_getI64(4);
  @$pb.TagNumber(5)
  set realOutputInTxIndex($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRealOutputInTxIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearRealOutputInTxIndex() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get amount => $_getI64(5);
  @$pb.TagNumber(6)
  set amount($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAmount() => $_has(5);
  @$pb.TagNumber(6)
  void clearAmount() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get rct => $_getBF(6);
  @$pb.TagNumber(7)
  set rct($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRct() => $_has(6);
  @$pb.TagNumber(7)
  void clearRct() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get mask => $_getN(7);
  @$pb.TagNumber(8)
  set mask($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMask() => $_has(7);
  @$pb.TagNumber(8)
  void clearMask() => clearField(8);

  @$pb.TagNumber(9)
  MoneroTransactionSourceEntry_MoneroMultisigKLRki get multisigKLRki => $_getN(8);
  @$pb.TagNumber(9)
  set multisigKLRki(MoneroTransactionSourceEntry_MoneroMultisigKLRki v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasMultisigKLRki() => $_has(8);
  @$pb.TagNumber(9)
  void clearMultisigKLRki() => clearField(9);
  @$pb.TagNumber(9)
  MoneroTransactionSourceEntry_MoneroMultisigKLRki ensureMultisigKLRki() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.int get subaddrMinor => $_getIZ(9);
  @$pb.TagNumber(10)
  set subaddrMinor($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSubaddrMinor() => $_has(9);
  @$pb.TagNumber(10)
  void clearSubaddrMinor() => clearField(10);
}

class MoneroTransactionDestinationEntry_MoneroAccountPublicAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionDestinationEntry.MoneroAccountPublicAddress', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spendPublicKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'viewPublicKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MoneroTransactionDestinationEntry_MoneroAccountPublicAddress._() : super();
  factory MoneroTransactionDestinationEntry_MoneroAccountPublicAddress({
    $core.List<$core.int>? spendPublicKey,
    $core.List<$core.int>? viewPublicKey,
  }) {
    final _result = create();
    if (spendPublicKey != null) {
      _result.spendPublicKey = spendPublicKey;
    }
    if (viewPublicKey != null) {
      _result.viewPublicKey = viewPublicKey;
    }
    return _result;
  }
  factory MoneroTransactionDestinationEntry_MoneroAccountPublicAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionDestinationEntry_MoneroAccountPublicAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionDestinationEntry_MoneroAccountPublicAddress clone() => MoneroTransactionDestinationEntry_MoneroAccountPublicAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionDestinationEntry_MoneroAccountPublicAddress copyWith(void Function(MoneroTransactionDestinationEntry_MoneroAccountPublicAddress) updates) => super.copyWith((message) => updates(message as MoneroTransactionDestinationEntry_MoneroAccountPublicAddress)) as MoneroTransactionDestinationEntry_MoneroAccountPublicAddress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionDestinationEntry_MoneroAccountPublicAddress create() => MoneroTransactionDestinationEntry_MoneroAccountPublicAddress._();
  MoneroTransactionDestinationEntry_MoneroAccountPublicAddress createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionDestinationEntry_MoneroAccountPublicAddress> createRepeated() => $pb.PbList<MoneroTransactionDestinationEntry_MoneroAccountPublicAddress>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionDestinationEntry_MoneroAccountPublicAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionDestinationEntry_MoneroAccountPublicAddress>(create);
  static MoneroTransactionDestinationEntry_MoneroAccountPublicAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get spendPublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set spendPublicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpendPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpendPublicKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get viewPublicKey => $_getN(1);
  @$pb.TagNumber(2)
  set viewPublicKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasViewPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearViewPublicKey() => clearField(2);
}

class MoneroTransactionDestinationEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionDestinationEntry', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<MoneroTransactionDestinationEntry_MoneroAccountPublicAddress>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addr', subBuilder: MoneroTransactionDestinationEntry_MoneroAccountPublicAddress.create)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSubaddress')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'original', $pb.PbFieldType.OY)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isIntegrated')
    ..hasRequiredFields = false
  ;

  MoneroTransactionDestinationEntry._() : super();
  factory MoneroTransactionDestinationEntry({
    $fixnum.Int64? amount,
    MoneroTransactionDestinationEntry_MoneroAccountPublicAddress? addr,
    $core.bool? isSubaddress,
    $core.List<$core.int>? original,
    $core.bool? isIntegrated,
  }) {
    final _result = create();
    if (amount != null) {
      _result.amount = amount;
    }
    if (addr != null) {
      _result.addr = addr;
    }
    if (isSubaddress != null) {
      _result.isSubaddress = isSubaddress;
    }
    if (original != null) {
      _result.original = original;
    }
    if (isIntegrated != null) {
      _result.isIntegrated = isIntegrated;
    }
    return _result;
  }
  factory MoneroTransactionDestinationEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionDestinationEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionDestinationEntry clone() => MoneroTransactionDestinationEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionDestinationEntry copyWith(void Function(MoneroTransactionDestinationEntry) updates) => super.copyWith((message) => updates(message as MoneroTransactionDestinationEntry)) as MoneroTransactionDestinationEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionDestinationEntry create() => MoneroTransactionDestinationEntry._();
  MoneroTransactionDestinationEntry createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionDestinationEntry> createRepeated() => $pb.PbList<MoneroTransactionDestinationEntry>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionDestinationEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionDestinationEntry>(create);
  static MoneroTransactionDestinationEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get amount => $_getI64(0);
  @$pb.TagNumber(1)
  set amount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => clearField(1);

  @$pb.TagNumber(2)
  MoneroTransactionDestinationEntry_MoneroAccountPublicAddress get addr => $_getN(1);
  @$pb.TagNumber(2)
  set addr(MoneroTransactionDestinationEntry_MoneroAccountPublicAddress v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddr() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddr() => clearField(2);
  @$pb.TagNumber(2)
  MoneroTransactionDestinationEntry_MoneroAccountPublicAddress ensureAddr() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get isSubaddress => $_getBF(2);
  @$pb.TagNumber(3)
  set isSubaddress($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsSubaddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsSubaddress() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get original => $_getN(3);
  @$pb.TagNumber(4)
  set original($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOriginal() => $_has(3);
  @$pb.TagNumber(4)
  void clearOriginal() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isIntegrated => $_getBF(4);
  @$pb.TagNumber(5)
  set isIntegrated($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsIntegrated() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsIntegrated() => clearField(5);
}

class MoneroTransactionRsigData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionRsigData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rsigType', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offloadType', $pb.PbFieldType.OU3)
    ..p<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'grouping', $pb.PbFieldType.PU6)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mask', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rsig', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rsigParts', $pb.PbFieldType.PY)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bpVersion', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  MoneroTransactionRsigData._() : super();
  factory MoneroTransactionRsigData({
    $core.int? rsigType,
    $core.int? offloadType,
    $core.Iterable<$fixnum.Int64>? grouping,
    $core.List<$core.int>? mask,
    $core.List<$core.int>? rsig,
    $core.Iterable<$core.List<$core.int>>? rsigParts,
    $core.int? bpVersion,
  }) {
    final _result = create();
    if (rsigType != null) {
      _result.rsigType = rsigType;
    }
    if (offloadType != null) {
      _result.offloadType = offloadType;
    }
    if (grouping != null) {
      _result.grouping.addAll(grouping);
    }
    if (mask != null) {
      _result.mask = mask;
    }
    if (rsig != null) {
      _result.rsig = rsig;
    }
    if (rsigParts != null) {
      _result.rsigParts.addAll(rsigParts);
    }
    if (bpVersion != null) {
      _result.bpVersion = bpVersion;
    }
    return _result;
  }
  factory MoneroTransactionRsigData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionRsigData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionRsigData clone() => MoneroTransactionRsigData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionRsigData copyWith(void Function(MoneroTransactionRsigData) updates) => super.copyWith((message) => updates(message as MoneroTransactionRsigData)) as MoneroTransactionRsigData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionRsigData create() => MoneroTransactionRsigData._();
  MoneroTransactionRsigData createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionRsigData> createRepeated() => $pb.PbList<MoneroTransactionRsigData>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionRsigData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionRsigData>(create);
  static MoneroTransactionRsigData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rsigType => $_getIZ(0);
  @$pb.TagNumber(1)
  set rsigType($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRsigType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRsigType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get offloadType => $_getIZ(1);
  @$pb.TagNumber(2)
  set offloadType($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffloadType() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffloadType() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get grouping => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get mask => $_getN(3);
  @$pb.TagNumber(4)
  set mask($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMask() => $_has(3);
  @$pb.TagNumber(4)
  void clearMask() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get rsig => $_getN(4);
  @$pb.TagNumber(5)
  set rsig($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRsig() => $_has(4);
  @$pb.TagNumber(5)
  void clearRsig() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.List<$core.int>> get rsigParts => $_getList(5);

  @$pb.TagNumber(7)
  $core.int get bpVersion => $_getIZ(6);
  @$pb.TagNumber(7)
  set bpVersion($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBpVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearBpVersion() => clearField(7);
}

class MoneroGetAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroGetAddress', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'showDisplay')
    ..e<MoneroNetworkType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkType', $pb.PbFieldType.OE, defaultOrMaker: MoneroNetworkType.MAINNET, valueOf: MoneroNetworkType.valueOf, enumValues: MoneroNetworkType.values)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minor', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentId', $pb.PbFieldType.OY)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunkify')
    ..hasRequiredFields = false
  ;

  MoneroGetAddress._() : super();
  factory MoneroGetAddress({
    $core.Iterable<$core.int>? addressN,
    $core.bool? showDisplay,
    MoneroNetworkType? networkType,
    $core.int? account,
    $core.int? minor,
    $core.List<$core.int>? paymentId,
    $core.bool? chunkify,
  }) {
    final _result = create();
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (showDisplay != null) {
      _result.showDisplay = showDisplay;
    }
    if (networkType != null) {
      _result.networkType = networkType;
    }
    if (account != null) {
      _result.account = account;
    }
    if (minor != null) {
      _result.minor = minor;
    }
    if (paymentId != null) {
      _result.paymentId = paymentId;
    }
    if (chunkify != null) {
      _result.chunkify = chunkify;
    }
    return _result;
  }
  factory MoneroGetAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroGetAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroGetAddress clone() => MoneroGetAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroGetAddress copyWith(void Function(MoneroGetAddress) updates) => super.copyWith((message) => updates(message as MoneroGetAddress)) as MoneroGetAddress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroGetAddress create() => MoneroGetAddress._();
  MoneroGetAddress createEmptyInstance() => create();
  static $pb.PbList<MoneroGetAddress> createRepeated() => $pb.PbList<MoneroGetAddress>();
  @$core.pragma('dart2js:noInline')
  static MoneroGetAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroGetAddress>(create);
  static MoneroGetAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get addressN => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get showDisplay => $_getBF(1);
  @$pb.TagNumber(2)
  set showDisplay($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShowDisplay() => $_has(1);
  @$pb.TagNumber(2)
  void clearShowDisplay() => clearField(2);

  @$pb.TagNumber(3)
  MoneroNetworkType get networkType => $_getN(2);
  @$pb.TagNumber(3)
  set networkType(MoneroNetworkType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNetworkType() => $_has(2);
  @$pb.TagNumber(3)
  void clearNetworkType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get account => $_getIZ(3);
  @$pb.TagNumber(4)
  set account($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccount() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get minor => $_getIZ(4);
  @$pb.TagNumber(5)
  set minor($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMinor() => $_has(4);
  @$pb.TagNumber(5)
  void clearMinor() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get paymentId => $_getN(5);
  @$pb.TagNumber(6)
  set paymentId($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPaymentId() => $_has(5);
  @$pb.TagNumber(6)
  void clearPaymentId() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get chunkify => $_getBF(6);
  @$pb.TagNumber(7)
  set chunkify($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasChunkify() => $_has(6);
  @$pb.TagNumber(7)
  void clearChunkify() => clearField(7);
}

class MoneroAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroAddress', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', $pb.PbFieldType.QY)
  ;

  MoneroAddress._() : super();
  factory MoneroAddress({
    $core.List<$core.int>? address,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory MoneroAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroAddress clone() => MoneroAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroAddress copyWith(void Function(MoneroAddress) updates) => super.copyWith((message) => updates(message as MoneroAddress)) as MoneroAddress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroAddress create() => MoneroAddress._();
  MoneroAddress createEmptyInstance() => create();
  static $pb.PbList<MoneroAddress> createRepeated() => $pb.PbList<MoneroAddress>();
  @$core.pragma('dart2js:noInline')
  static MoneroAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroAddress>(create);
  static MoneroAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class MoneroGetWatchKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroGetWatchKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..e<MoneroNetworkType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkType', $pb.PbFieldType.OE, defaultOrMaker: MoneroNetworkType.MAINNET, valueOf: MoneroNetworkType.valueOf, enumValues: MoneroNetworkType.values)
    ..hasRequiredFields = false
  ;

  MoneroGetWatchKey._() : super();
  factory MoneroGetWatchKey({
    $core.Iterable<$core.int>? addressN,
    MoneroNetworkType? networkType,
  }) {
    final _result = create();
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (networkType != null) {
      _result.networkType = networkType;
    }
    return _result;
  }
  factory MoneroGetWatchKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroGetWatchKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroGetWatchKey clone() => MoneroGetWatchKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroGetWatchKey copyWith(void Function(MoneroGetWatchKey) updates) => super.copyWith((message) => updates(message as MoneroGetWatchKey)) as MoneroGetWatchKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroGetWatchKey create() => MoneroGetWatchKey._();
  MoneroGetWatchKey createEmptyInstance() => create();
  static $pb.PbList<MoneroGetWatchKey> createRepeated() => $pb.PbList<MoneroGetWatchKey>();
  @$core.pragma('dart2js:noInline')
  static MoneroGetWatchKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroGetWatchKey>(create);
  static MoneroGetWatchKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get addressN => $_getList(0);

  @$pb.TagNumber(2)
  MoneroNetworkType get networkType => $_getN(1);
  @$pb.TagNumber(2)
  set networkType(MoneroNetworkType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNetworkType() => $_has(1);
  @$pb.TagNumber(2)
  void clearNetworkType() => clearField(2);
}

class MoneroWatchKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroWatchKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'watchKey', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', $pb.PbFieldType.QY)
  ;

  MoneroWatchKey._() : super();
  factory MoneroWatchKey({
    $core.List<$core.int>? watchKey,
    $core.List<$core.int>? address,
  }) {
    final _result = create();
    if (watchKey != null) {
      _result.watchKey = watchKey;
    }
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory MoneroWatchKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroWatchKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroWatchKey clone() => MoneroWatchKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroWatchKey copyWith(void Function(MoneroWatchKey) updates) => super.copyWith((message) => updates(message as MoneroWatchKey)) as MoneroWatchKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroWatchKey create() => MoneroWatchKey._();
  MoneroWatchKey createEmptyInstance() => create();
  static $pb.PbList<MoneroWatchKey> createRepeated() => $pb.PbList<MoneroWatchKey>();
  @$core.pragma('dart2js:noInline')
  static MoneroWatchKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroWatchKey>(create);
  static MoneroWatchKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get watchKey => $_getN(0);
  @$pb.TagNumber(1)
  set watchKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWatchKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearWatchKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get address => $_getN(1);
  @$pb.TagNumber(2)
  set address($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);
}

class MoneroTransactionInitRequest_MoneroTransactionData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionInitRequest.MoneroTransactionData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentId', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unlockTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<MoneroTransactionDestinationEntry>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputs', $pb.PbFieldType.PM, subBuilder: MoneroTransactionDestinationEntry.create)
    ..aOM<MoneroTransactionDestinationEntry>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'changeDts', subBuilder: MoneroTransactionDestinationEntry.create)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numInputs', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mixin', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fee', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', $pb.PbFieldType.OU3)
    ..p<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minorIndices', $pb.PbFieldType.PU3)
    ..aOM<MoneroTransactionRsigData>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rsigData', subBuilder: MoneroTransactionRsigData.create)
    ..p<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'integratedIndices', $pb.PbFieldType.PU3)
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hardFork', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'moneroVersion', $pb.PbFieldType.OY)
    ..aOB(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunkify')
    ..hasRequiredFields = false
  ;

  MoneroTransactionInitRequest_MoneroTransactionData._() : super();
  factory MoneroTransactionInitRequest_MoneroTransactionData({
    $core.int? version,
    $core.List<$core.int>? paymentId,
    $fixnum.Int64? unlockTime,
    $core.Iterable<MoneroTransactionDestinationEntry>? outputs,
    MoneroTransactionDestinationEntry? changeDts,
    $core.int? numInputs,
    $core.int? mixin,
    $fixnum.Int64? fee,
    $core.int? account,
    $core.Iterable<$core.int>? minorIndices,
    MoneroTransactionRsigData? rsigData,
    $core.Iterable<$core.int>? integratedIndices,
    $core.int? clientVersion,
    $core.int? hardFork,
    $core.List<$core.int>? moneroVersion,
    $core.bool? chunkify,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (paymentId != null) {
      _result.paymentId = paymentId;
    }
    if (unlockTime != null) {
      _result.unlockTime = unlockTime;
    }
    if (outputs != null) {
      _result.outputs.addAll(outputs);
    }
    if (changeDts != null) {
      _result.changeDts = changeDts;
    }
    if (numInputs != null) {
      _result.numInputs = numInputs;
    }
    if (mixin != null) {
      _result.mixin = mixin;
    }
    if (fee != null) {
      _result.fee = fee;
    }
    if (account != null) {
      _result.account = account;
    }
    if (minorIndices != null) {
      _result.minorIndices.addAll(minorIndices);
    }
    if (rsigData != null) {
      _result.rsigData = rsigData;
    }
    if (integratedIndices != null) {
      _result.integratedIndices.addAll(integratedIndices);
    }
    if (clientVersion != null) {
      _result.clientVersion = clientVersion;
    }
    if (hardFork != null) {
      _result.hardFork = hardFork;
    }
    if (moneroVersion != null) {
      _result.moneroVersion = moneroVersion;
    }
    if (chunkify != null) {
      _result.chunkify = chunkify;
    }
    return _result;
  }
  factory MoneroTransactionInitRequest_MoneroTransactionData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionInitRequest_MoneroTransactionData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionInitRequest_MoneroTransactionData clone() => MoneroTransactionInitRequest_MoneroTransactionData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionInitRequest_MoneroTransactionData copyWith(void Function(MoneroTransactionInitRequest_MoneroTransactionData) updates) => super.copyWith((message) => updates(message as MoneroTransactionInitRequest_MoneroTransactionData)) as MoneroTransactionInitRequest_MoneroTransactionData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionInitRequest_MoneroTransactionData create() => MoneroTransactionInitRequest_MoneroTransactionData._();
  MoneroTransactionInitRequest_MoneroTransactionData createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionInitRequest_MoneroTransactionData> createRepeated() => $pb.PbList<MoneroTransactionInitRequest_MoneroTransactionData>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionInitRequest_MoneroTransactionData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionInitRequest_MoneroTransactionData>(create);
  static MoneroTransactionInitRequest_MoneroTransactionData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get paymentId => $_getN(1);
  @$pb.TagNumber(2)
  set paymentId($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPaymentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPaymentId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get unlockTime => $_getI64(2);
  @$pb.TagNumber(3)
  set unlockTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnlockTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnlockTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<MoneroTransactionDestinationEntry> get outputs => $_getList(3);

  @$pb.TagNumber(5)
  MoneroTransactionDestinationEntry get changeDts => $_getN(4);
  @$pb.TagNumber(5)
  set changeDts(MoneroTransactionDestinationEntry v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasChangeDts() => $_has(4);
  @$pb.TagNumber(5)
  void clearChangeDts() => clearField(5);
  @$pb.TagNumber(5)
  MoneroTransactionDestinationEntry ensureChangeDts() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.int get numInputs => $_getIZ(5);
  @$pb.TagNumber(6)
  set numInputs($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNumInputs() => $_has(5);
  @$pb.TagNumber(6)
  void clearNumInputs() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get mixin => $_getIZ(6);
  @$pb.TagNumber(7)
  set mixin($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMixin() => $_has(6);
  @$pb.TagNumber(7)
  void clearMixin() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get fee => $_getI64(7);
  @$pb.TagNumber(8)
  set fee($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFee() => $_has(7);
  @$pb.TagNumber(8)
  void clearFee() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get account => $_getIZ(8);
  @$pb.TagNumber(9)
  set account($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAccount() => $_has(8);
  @$pb.TagNumber(9)
  void clearAccount() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get minorIndices => $_getList(9);

  @$pb.TagNumber(11)
  MoneroTransactionRsigData get rsigData => $_getN(10);
  @$pb.TagNumber(11)
  set rsigData(MoneroTransactionRsigData v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasRsigData() => $_has(10);
  @$pb.TagNumber(11)
  void clearRsigData() => clearField(11);
  @$pb.TagNumber(11)
  MoneroTransactionRsigData ensureRsigData() => $_ensure(10);

  @$pb.TagNumber(12)
  $core.List<$core.int> get integratedIndices => $_getList(11);

  @$pb.TagNumber(13)
  $core.int get clientVersion => $_getIZ(12);
  @$pb.TagNumber(13)
  set clientVersion($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasClientVersion() => $_has(12);
  @$pb.TagNumber(13)
  void clearClientVersion() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get hardFork => $_getIZ(13);
  @$pb.TagNumber(14)
  set hardFork($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasHardFork() => $_has(13);
  @$pb.TagNumber(14)
  void clearHardFork() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<$core.int> get moneroVersion => $_getN(14);
  @$pb.TagNumber(15)
  set moneroVersion($core.List<$core.int> v) { $_setBytes(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasMoneroVersion() => $_has(14);
  @$pb.TagNumber(15)
  void clearMoneroVersion() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get chunkify => $_getBF(15);
  @$pb.TagNumber(16)
  set chunkify($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasChunkify() => $_has(15);
  @$pb.TagNumber(16)
  void clearChunkify() => clearField(16);
}

class MoneroTransactionInitRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionInitRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.OU3)
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..e<MoneroNetworkType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkType', $pb.PbFieldType.OE, defaultOrMaker: MoneroNetworkType.MAINNET, valueOf: MoneroNetworkType.valueOf, enumValues: MoneroNetworkType.values)
    ..aOM<MoneroTransactionInitRequest_MoneroTransactionData>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tsxData', subBuilder: MoneroTransactionInitRequest_MoneroTransactionData.create)
    ..hasRequiredFields = false
  ;

  MoneroTransactionInitRequest._() : super();
  factory MoneroTransactionInitRequest({
    $core.int? version,
    $core.Iterable<$core.int>? addressN,
    MoneroNetworkType? networkType,
    MoneroTransactionInitRequest_MoneroTransactionData? tsxData,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (networkType != null) {
      _result.networkType = networkType;
    }
    if (tsxData != null) {
      _result.tsxData = tsxData;
    }
    return _result;
  }
  factory MoneroTransactionInitRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionInitRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionInitRequest clone() => MoneroTransactionInitRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionInitRequest copyWith(void Function(MoneroTransactionInitRequest) updates) => super.copyWith((message) => updates(message as MoneroTransactionInitRequest)) as MoneroTransactionInitRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionInitRequest create() => MoneroTransactionInitRequest._();
  MoneroTransactionInitRequest createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionInitRequest> createRepeated() => $pb.PbList<MoneroTransactionInitRequest>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionInitRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionInitRequest>(create);
  static MoneroTransactionInitRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get addressN => $_getList(1);

  @$pb.TagNumber(3)
  MoneroNetworkType get networkType => $_getN(2);
  @$pb.TagNumber(3)
  set networkType(MoneroNetworkType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNetworkType() => $_has(2);
  @$pb.TagNumber(3)
  void clearNetworkType() => clearField(3);

  @$pb.TagNumber(4)
  MoneroTransactionInitRequest_MoneroTransactionData get tsxData => $_getN(3);
  @$pb.TagNumber(4)
  set tsxData(MoneroTransactionInitRequest_MoneroTransactionData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTsxData() => $_has(3);
  @$pb.TagNumber(4)
  void clearTsxData() => clearField(4);
  @$pb.TagNumber(4)
  MoneroTransactionInitRequest_MoneroTransactionData ensureTsxData() => $_ensure(3);
}

class MoneroTransactionInitAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionInitAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hmacs', $pb.PbFieldType.PY)
    ..aOM<MoneroTransactionRsigData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rsigData', subBuilder: MoneroTransactionRsigData.create)
    ..hasRequiredFields = false
  ;

  MoneroTransactionInitAck._() : super();
  factory MoneroTransactionInitAck({
    $core.Iterable<$core.List<$core.int>>? hmacs,
    MoneroTransactionRsigData? rsigData,
  }) {
    final _result = create();
    if (hmacs != null) {
      _result.hmacs.addAll(hmacs);
    }
    if (rsigData != null) {
      _result.rsigData = rsigData;
    }
    return _result;
  }
  factory MoneroTransactionInitAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionInitAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionInitAck clone() => MoneroTransactionInitAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionInitAck copyWith(void Function(MoneroTransactionInitAck) updates) => super.copyWith((message) => updates(message as MoneroTransactionInitAck)) as MoneroTransactionInitAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionInitAck create() => MoneroTransactionInitAck._();
  MoneroTransactionInitAck createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionInitAck> createRepeated() => $pb.PbList<MoneroTransactionInitAck>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionInitAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionInitAck>(create);
  static MoneroTransactionInitAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get hmacs => $_getList(0);

  @$pb.TagNumber(2)
  MoneroTransactionRsigData get rsigData => $_getN(1);
  @$pb.TagNumber(2)
  set rsigData(MoneroTransactionRsigData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRsigData() => $_has(1);
  @$pb.TagNumber(2)
  void clearRsigData() => clearField(2);
  @$pb.TagNumber(2)
  MoneroTransactionRsigData ensureRsigData() => $_ensure(1);
}

class MoneroTransactionSetInputRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionSetInputRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..aOM<MoneroTransactionSourceEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'srcEntr', subBuilder: MoneroTransactionSourceEntry.create)
  ;

  MoneroTransactionSetInputRequest._() : super();
  factory MoneroTransactionSetInputRequest({
    MoneroTransactionSourceEntry? srcEntr,
  }) {
    final _result = create();
    if (srcEntr != null) {
      _result.srcEntr = srcEntr;
    }
    return _result;
  }
  factory MoneroTransactionSetInputRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionSetInputRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionSetInputRequest clone() => MoneroTransactionSetInputRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionSetInputRequest copyWith(void Function(MoneroTransactionSetInputRequest) updates) => super.copyWith((message) => updates(message as MoneroTransactionSetInputRequest)) as MoneroTransactionSetInputRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSetInputRequest create() => MoneroTransactionSetInputRequest._();
  MoneroTransactionSetInputRequest createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionSetInputRequest> createRepeated() => $pb.PbList<MoneroTransactionSetInputRequest>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSetInputRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionSetInputRequest>(create);
  static MoneroTransactionSetInputRequest? _defaultInstance;

  @$pb.TagNumber(1)
  MoneroTransactionSourceEntry get srcEntr => $_getN(0);
  @$pb.TagNumber(1)
  set srcEntr(MoneroTransactionSourceEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSrcEntr() => $_has(0);
  @$pb.TagNumber(1)
  void clearSrcEntr() => clearField(1);
  @$pb.TagNumber(1)
  MoneroTransactionSourceEntry ensureSrcEntr() => $_ensure(0);
}

class MoneroTransactionSetInputAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionSetInputAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vini', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'viniHmac', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pseudoOut', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pseudoOutHmac', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pseudoOutAlpha', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spendKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MoneroTransactionSetInputAck._() : super();
  factory MoneroTransactionSetInputAck({
    $core.List<$core.int>? vini,
    $core.List<$core.int>? viniHmac,
    $core.List<$core.int>? pseudoOut,
    $core.List<$core.int>? pseudoOutHmac,
    $core.List<$core.int>? pseudoOutAlpha,
    $core.List<$core.int>? spendKey,
  }) {
    final _result = create();
    if (vini != null) {
      _result.vini = vini;
    }
    if (viniHmac != null) {
      _result.viniHmac = viniHmac;
    }
    if (pseudoOut != null) {
      _result.pseudoOut = pseudoOut;
    }
    if (pseudoOutHmac != null) {
      _result.pseudoOutHmac = pseudoOutHmac;
    }
    if (pseudoOutAlpha != null) {
      _result.pseudoOutAlpha = pseudoOutAlpha;
    }
    if (spendKey != null) {
      _result.spendKey = spendKey;
    }
    return _result;
  }
  factory MoneroTransactionSetInputAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionSetInputAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionSetInputAck clone() => MoneroTransactionSetInputAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionSetInputAck copyWith(void Function(MoneroTransactionSetInputAck) updates) => super.copyWith((message) => updates(message as MoneroTransactionSetInputAck)) as MoneroTransactionSetInputAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSetInputAck create() => MoneroTransactionSetInputAck._();
  MoneroTransactionSetInputAck createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionSetInputAck> createRepeated() => $pb.PbList<MoneroTransactionSetInputAck>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSetInputAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionSetInputAck>(create);
  static MoneroTransactionSetInputAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get vini => $_getN(0);
  @$pb.TagNumber(1)
  set vini($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVini() => $_has(0);
  @$pb.TagNumber(1)
  void clearVini() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get viniHmac => $_getN(1);
  @$pb.TagNumber(2)
  set viniHmac($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasViniHmac() => $_has(1);
  @$pb.TagNumber(2)
  void clearViniHmac() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get pseudoOut => $_getN(2);
  @$pb.TagNumber(3)
  set pseudoOut($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPseudoOut() => $_has(2);
  @$pb.TagNumber(3)
  void clearPseudoOut() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get pseudoOutHmac => $_getN(3);
  @$pb.TagNumber(4)
  set pseudoOutHmac($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPseudoOutHmac() => $_has(3);
  @$pb.TagNumber(4)
  void clearPseudoOutHmac() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get pseudoOutAlpha => $_getN(4);
  @$pb.TagNumber(5)
  set pseudoOutAlpha($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPseudoOutAlpha() => $_has(4);
  @$pb.TagNumber(5)
  void clearPseudoOutAlpha() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get spendKey => $_getN(5);
  @$pb.TagNumber(6)
  set spendKey($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSpendKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearSpendKey() => clearField(6);
}

class MoneroTransactionInputViniRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionInputViniRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..aOM<MoneroTransactionSourceEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'srcEntr', subBuilder: MoneroTransactionSourceEntry.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vini', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'viniHmac', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pseudoOut', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pseudoOutHmac', $pb.PbFieldType.OY)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'origIdx', $pb.PbFieldType.OU3)
  ;

  MoneroTransactionInputViniRequest._() : super();
  factory MoneroTransactionInputViniRequest({
    MoneroTransactionSourceEntry? srcEntr,
    $core.List<$core.int>? vini,
    $core.List<$core.int>? viniHmac,
    $core.List<$core.int>? pseudoOut,
    $core.List<$core.int>? pseudoOutHmac,
    $core.int? origIdx,
  }) {
    final _result = create();
    if (srcEntr != null) {
      _result.srcEntr = srcEntr;
    }
    if (vini != null) {
      _result.vini = vini;
    }
    if (viniHmac != null) {
      _result.viniHmac = viniHmac;
    }
    if (pseudoOut != null) {
      _result.pseudoOut = pseudoOut;
    }
    if (pseudoOutHmac != null) {
      _result.pseudoOutHmac = pseudoOutHmac;
    }
    if (origIdx != null) {
      _result.origIdx = origIdx;
    }
    return _result;
  }
  factory MoneroTransactionInputViniRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionInputViniRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionInputViniRequest clone() => MoneroTransactionInputViniRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionInputViniRequest copyWith(void Function(MoneroTransactionInputViniRequest) updates) => super.copyWith((message) => updates(message as MoneroTransactionInputViniRequest)) as MoneroTransactionInputViniRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionInputViniRequest create() => MoneroTransactionInputViniRequest._();
  MoneroTransactionInputViniRequest createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionInputViniRequest> createRepeated() => $pb.PbList<MoneroTransactionInputViniRequest>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionInputViniRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionInputViniRequest>(create);
  static MoneroTransactionInputViniRequest? _defaultInstance;

  @$pb.TagNumber(1)
  MoneroTransactionSourceEntry get srcEntr => $_getN(0);
  @$pb.TagNumber(1)
  set srcEntr(MoneroTransactionSourceEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSrcEntr() => $_has(0);
  @$pb.TagNumber(1)
  void clearSrcEntr() => clearField(1);
  @$pb.TagNumber(1)
  MoneroTransactionSourceEntry ensureSrcEntr() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get vini => $_getN(1);
  @$pb.TagNumber(2)
  set vini($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVini() => $_has(1);
  @$pb.TagNumber(2)
  void clearVini() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get viniHmac => $_getN(2);
  @$pb.TagNumber(3)
  set viniHmac($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasViniHmac() => $_has(2);
  @$pb.TagNumber(3)
  void clearViniHmac() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get pseudoOut => $_getN(3);
  @$pb.TagNumber(4)
  set pseudoOut($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPseudoOut() => $_has(3);
  @$pb.TagNumber(4)
  void clearPseudoOut() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get pseudoOutHmac => $_getN(4);
  @$pb.TagNumber(5)
  set pseudoOutHmac($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPseudoOutHmac() => $_has(4);
  @$pb.TagNumber(5)
  void clearPseudoOutHmac() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get origIdx => $_getIZ(5);
  @$pb.TagNumber(6)
  set origIdx($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOrigIdx() => $_has(5);
  @$pb.TagNumber(6)
  void clearOrigIdx() => clearField(6);
}

class MoneroTransactionInputViniAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionInputViniAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MoneroTransactionInputViniAck._() : super();
  factory MoneroTransactionInputViniAck() => create();
  factory MoneroTransactionInputViniAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionInputViniAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionInputViniAck clone() => MoneroTransactionInputViniAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionInputViniAck copyWith(void Function(MoneroTransactionInputViniAck) updates) => super.copyWith((message) => updates(message as MoneroTransactionInputViniAck)) as MoneroTransactionInputViniAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionInputViniAck create() => MoneroTransactionInputViniAck._();
  MoneroTransactionInputViniAck createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionInputViniAck> createRepeated() => $pb.PbList<MoneroTransactionInputViniAck>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionInputViniAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionInputViniAck>(create);
  static MoneroTransactionInputViniAck? _defaultInstance;
}

class MoneroTransactionAllInputsSetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionAllInputsSetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MoneroTransactionAllInputsSetRequest._() : super();
  factory MoneroTransactionAllInputsSetRequest() => create();
  factory MoneroTransactionAllInputsSetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionAllInputsSetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionAllInputsSetRequest clone() => MoneroTransactionAllInputsSetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionAllInputsSetRequest copyWith(void Function(MoneroTransactionAllInputsSetRequest) updates) => super.copyWith((message) => updates(message as MoneroTransactionAllInputsSetRequest)) as MoneroTransactionAllInputsSetRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionAllInputsSetRequest create() => MoneroTransactionAllInputsSetRequest._();
  MoneroTransactionAllInputsSetRequest createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionAllInputsSetRequest> createRepeated() => $pb.PbList<MoneroTransactionAllInputsSetRequest>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionAllInputsSetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionAllInputsSetRequest>(create);
  static MoneroTransactionAllInputsSetRequest? _defaultInstance;
}

class MoneroTransactionAllInputsSetAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionAllInputsSetAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..aOM<MoneroTransactionRsigData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rsigData', subBuilder: MoneroTransactionRsigData.create)
    ..hasRequiredFields = false
  ;

  MoneroTransactionAllInputsSetAck._() : super();
  factory MoneroTransactionAllInputsSetAck({
    MoneroTransactionRsigData? rsigData,
  }) {
    final _result = create();
    if (rsigData != null) {
      _result.rsigData = rsigData;
    }
    return _result;
  }
  factory MoneroTransactionAllInputsSetAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionAllInputsSetAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionAllInputsSetAck clone() => MoneroTransactionAllInputsSetAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionAllInputsSetAck copyWith(void Function(MoneroTransactionAllInputsSetAck) updates) => super.copyWith((message) => updates(message as MoneroTransactionAllInputsSetAck)) as MoneroTransactionAllInputsSetAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionAllInputsSetAck create() => MoneroTransactionAllInputsSetAck._();
  MoneroTransactionAllInputsSetAck createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionAllInputsSetAck> createRepeated() => $pb.PbList<MoneroTransactionAllInputsSetAck>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionAllInputsSetAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionAllInputsSetAck>(create);
  static MoneroTransactionAllInputsSetAck? _defaultInstance;

  @$pb.TagNumber(1)
  MoneroTransactionRsigData get rsigData => $_getN(0);
  @$pb.TagNumber(1)
  set rsigData(MoneroTransactionRsigData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRsigData() => $_has(0);
  @$pb.TagNumber(1)
  void clearRsigData() => clearField(1);
  @$pb.TagNumber(1)
  MoneroTransactionRsigData ensureRsigData() => $_ensure(0);
}

class MoneroTransactionSetOutputRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionSetOutputRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..aOM<MoneroTransactionDestinationEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dstEntr', subBuilder: MoneroTransactionDestinationEntry.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dstEntrHmac', $pb.PbFieldType.OY)
    ..aOM<MoneroTransactionRsigData>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rsigData', subBuilder: MoneroTransactionRsigData.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isOffloadedBp')
    ..hasRequiredFields = false
  ;

  MoneroTransactionSetOutputRequest._() : super();
  factory MoneroTransactionSetOutputRequest({
    MoneroTransactionDestinationEntry? dstEntr,
    $core.List<$core.int>? dstEntrHmac,
    MoneroTransactionRsigData? rsigData,
    $core.bool? isOffloadedBp,
  }) {
    final _result = create();
    if (dstEntr != null) {
      _result.dstEntr = dstEntr;
    }
    if (dstEntrHmac != null) {
      _result.dstEntrHmac = dstEntrHmac;
    }
    if (rsigData != null) {
      _result.rsigData = rsigData;
    }
    if (isOffloadedBp != null) {
      _result.isOffloadedBp = isOffloadedBp;
    }
    return _result;
  }
  factory MoneroTransactionSetOutputRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionSetOutputRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionSetOutputRequest clone() => MoneroTransactionSetOutputRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionSetOutputRequest copyWith(void Function(MoneroTransactionSetOutputRequest) updates) => super.copyWith((message) => updates(message as MoneroTransactionSetOutputRequest)) as MoneroTransactionSetOutputRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSetOutputRequest create() => MoneroTransactionSetOutputRequest._();
  MoneroTransactionSetOutputRequest createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionSetOutputRequest> createRepeated() => $pb.PbList<MoneroTransactionSetOutputRequest>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSetOutputRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionSetOutputRequest>(create);
  static MoneroTransactionSetOutputRequest? _defaultInstance;

  @$pb.TagNumber(1)
  MoneroTransactionDestinationEntry get dstEntr => $_getN(0);
  @$pb.TagNumber(1)
  set dstEntr(MoneroTransactionDestinationEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDstEntr() => $_has(0);
  @$pb.TagNumber(1)
  void clearDstEntr() => clearField(1);
  @$pb.TagNumber(1)
  MoneroTransactionDestinationEntry ensureDstEntr() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get dstEntrHmac => $_getN(1);
  @$pb.TagNumber(2)
  set dstEntrHmac($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDstEntrHmac() => $_has(1);
  @$pb.TagNumber(2)
  void clearDstEntrHmac() => clearField(2);

  @$pb.TagNumber(3)
  MoneroTransactionRsigData get rsigData => $_getN(2);
  @$pb.TagNumber(3)
  set rsigData(MoneroTransactionRsigData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRsigData() => $_has(2);
  @$pb.TagNumber(3)
  void clearRsigData() => clearField(3);
  @$pb.TagNumber(3)
  MoneroTransactionRsigData ensureRsigData() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get isOffloadedBp => $_getBF(3);
  @$pb.TagNumber(4)
  set isOffloadedBp($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsOffloadedBp() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsOffloadedBp() => clearField(4);
}

class MoneroTransactionSetOutputAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionSetOutputAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txOut', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'voutiHmac', $pb.PbFieldType.OY)
    ..aOM<MoneroTransactionRsigData>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rsigData', subBuilder: MoneroTransactionRsigData.create)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outPk', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ecdhInfo', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MoneroTransactionSetOutputAck._() : super();
  factory MoneroTransactionSetOutputAck({
    $core.List<$core.int>? txOut,
    $core.List<$core.int>? voutiHmac,
    MoneroTransactionRsigData? rsigData,
    $core.List<$core.int>? outPk,
    $core.List<$core.int>? ecdhInfo,
  }) {
    final _result = create();
    if (txOut != null) {
      _result.txOut = txOut;
    }
    if (voutiHmac != null) {
      _result.voutiHmac = voutiHmac;
    }
    if (rsigData != null) {
      _result.rsigData = rsigData;
    }
    if (outPk != null) {
      _result.outPk = outPk;
    }
    if (ecdhInfo != null) {
      _result.ecdhInfo = ecdhInfo;
    }
    return _result;
  }
  factory MoneroTransactionSetOutputAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionSetOutputAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionSetOutputAck clone() => MoneroTransactionSetOutputAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionSetOutputAck copyWith(void Function(MoneroTransactionSetOutputAck) updates) => super.copyWith((message) => updates(message as MoneroTransactionSetOutputAck)) as MoneroTransactionSetOutputAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSetOutputAck create() => MoneroTransactionSetOutputAck._();
  MoneroTransactionSetOutputAck createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionSetOutputAck> createRepeated() => $pb.PbList<MoneroTransactionSetOutputAck>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSetOutputAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionSetOutputAck>(create);
  static MoneroTransactionSetOutputAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get txOut => $_getN(0);
  @$pb.TagNumber(1)
  set txOut($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxOut() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxOut() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get voutiHmac => $_getN(1);
  @$pb.TagNumber(2)
  set voutiHmac($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVoutiHmac() => $_has(1);
  @$pb.TagNumber(2)
  void clearVoutiHmac() => clearField(2);

  @$pb.TagNumber(3)
  MoneroTransactionRsigData get rsigData => $_getN(2);
  @$pb.TagNumber(3)
  set rsigData(MoneroTransactionRsigData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRsigData() => $_has(2);
  @$pb.TagNumber(3)
  void clearRsigData() => clearField(3);
  @$pb.TagNumber(3)
  MoneroTransactionRsigData ensureRsigData() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get outPk => $_getN(3);
  @$pb.TagNumber(4)
  set outPk($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOutPk() => $_has(3);
  @$pb.TagNumber(4)
  void clearOutPk() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get ecdhInfo => $_getN(4);
  @$pb.TagNumber(5)
  set ecdhInfo($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEcdhInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearEcdhInfo() => clearField(5);
}

class MoneroTransactionAllOutSetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionAllOutSetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..aOM<MoneroTransactionRsigData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rsigData', subBuilder: MoneroTransactionRsigData.create)
    ..hasRequiredFields = false
  ;

  MoneroTransactionAllOutSetRequest._() : super();
  factory MoneroTransactionAllOutSetRequest({
    MoneroTransactionRsigData? rsigData,
  }) {
    final _result = create();
    if (rsigData != null) {
      _result.rsigData = rsigData;
    }
    return _result;
  }
  factory MoneroTransactionAllOutSetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionAllOutSetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionAllOutSetRequest clone() => MoneroTransactionAllOutSetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionAllOutSetRequest copyWith(void Function(MoneroTransactionAllOutSetRequest) updates) => super.copyWith((message) => updates(message as MoneroTransactionAllOutSetRequest)) as MoneroTransactionAllOutSetRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionAllOutSetRequest create() => MoneroTransactionAllOutSetRequest._();
  MoneroTransactionAllOutSetRequest createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionAllOutSetRequest> createRepeated() => $pb.PbList<MoneroTransactionAllOutSetRequest>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionAllOutSetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionAllOutSetRequest>(create);
  static MoneroTransactionAllOutSetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  MoneroTransactionRsigData get rsigData => $_getN(0);
  @$pb.TagNumber(1)
  set rsigData(MoneroTransactionRsigData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRsigData() => $_has(0);
  @$pb.TagNumber(1)
  void clearRsigData() => clearField(1);
  @$pb.TagNumber(1)
  MoneroTransactionRsigData ensureRsigData() => $_ensure(0);
}

class MoneroTransactionAllOutSetAck_MoneroRingCtSig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionAllOutSetAck.MoneroRingCtSig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnFee', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', $pb.PbFieldType.OY)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rvType', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  MoneroTransactionAllOutSetAck_MoneroRingCtSig._() : super();
  factory MoneroTransactionAllOutSetAck_MoneroRingCtSig({
    $fixnum.Int64? txnFee,
    $core.List<$core.int>? message,
    $core.int? rvType,
  }) {
    final _result = create();
    if (txnFee != null) {
      _result.txnFee = txnFee;
    }
    if (message != null) {
      _result.message = message;
    }
    if (rvType != null) {
      _result.rvType = rvType;
    }
    return _result;
  }
  factory MoneroTransactionAllOutSetAck_MoneroRingCtSig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionAllOutSetAck_MoneroRingCtSig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionAllOutSetAck_MoneroRingCtSig clone() => MoneroTransactionAllOutSetAck_MoneroRingCtSig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionAllOutSetAck_MoneroRingCtSig copyWith(void Function(MoneroTransactionAllOutSetAck_MoneroRingCtSig) updates) => super.copyWith((message) => updates(message as MoneroTransactionAllOutSetAck_MoneroRingCtSig)) as MoneroTransactionAllOutSetAck_MoneroRingCtSig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionAllOutSetAck_MoneroRingCtSig create() => MoneroTransactionAllOutSetAck_MoneroRingCtSig._();
  MoneroTransactionAllOutSetAck_MoneroRingCtSig createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionAllOutSetAck_MoneroRingCtSig> createRepeated() => $pb.PbList<MoneroTransactionAllOutSetAck_MoneroRingCtSig>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionAllOutSetAck_MoneroRingCtSig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionAllOutSetAck_MoneroRingCtSig>(create);
  static MoneroTransactionAllOutSetAck_MoneroRingCtSig? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get txnFee => $_getI64(0);
  @$pb.TagNumber(1)
  set txnFee($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxnFee() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxnFee() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get message => $_getN(1);
  @$pb.TagNumber(2)
  set message($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get rvType => $_getIZ(2);
  @$pb.TagNumber(3)
  set rvType($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRvType() => $_has(2);
  @$pb.TagNumber(3)
  void clearRvType() => clearField(3);
}

class MoneroTransactionAllOutSetAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionAllOutSetAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txPrefixHash', $pb.PbFieldType.OY)
    ..aOM<MoneroTransactionAllOutSetAck_MoneroRingCtSig>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rv', subBuilder: MoneroTransactionAllOutSetAck_MoneroRingCtSig.create)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fullMessageHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MoneroTransactionAllOutSetAck._() : super();
  factory MoneroTransactionAllOutSetAck({
    $core.List<$core.int>? extra,
    $core.List<$core.int>? txPrefixHash,
    MoneroTransactionAllOutSetAck_MoneroRingCtSig? rv,
    $core.List<$core.int>? fullMessageHash,
  }) {
    final _result = create();
    if (extra != null) {
      _result.extra = extra;
    }
    if (txPrefixHash != null) {
      _result.txPrefixHash = txPrefixHash;
    }
    if (rv != null) {
      _result.rv = rv;
    }
    if (fullMessageHash != null) {
      _result.fullMessageHash = fullMessageHash;
    }
    return _result;
  }
  factory MoneroTransactionAllOutSetAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionAllOutSetAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionAllOutSetAck clone() => MoneroTransactionAllOutSetAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionAllOutSetAck copyWith(void Function(MoneroTransactionAllOutSetAck) updates) => super.copyWith((message) => updates(message as MoneroTransactionAllOutSetAck)) as MoneroTransactionAllOutSetAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionAllOutSetAck create() => MoneroTransactionAllOutSetAck._();
  MoneroTransactionAllOutSetAck createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionAllOutSetAck> createRepeated() => $pb.PbList<MoneroTransactionAllOutSetAck>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionAllOutSetAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionAllOutSetAck>(create);
  static MoneroTransactionAllOutSetAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get extra => $_getN(0);
  @$pb.TagNumber(1)
  set extra($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExtra() => $_has(0);
  @$pb.TagNumber(1)
  void clearExtra() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get txPrefixHash => $_getN(1);
  @$pb.TagNumber(2)
  set txPrefixHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxPrefixHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxPrefixHash() => clearField(2);

  @$pb.TagNumber(4)
  MoneroTransactionAllOutSetAck_MoneroRingCtSig get rv => $_getN(2);
  @$pb.TagNumber(4)
  set rv(MoneroTransactionAllOutSetAck_MoneroRingCtSig v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRv() => $_has(2);
  @$pb.TagNumber(4)
  void clearRv() => clearField(4);
  @$pb.TagNumber(4)
  MoneroTransactionAllOutSetAck_MoneroRingCtSig ensureRv() => $_ensure(2);

  @$pb.TagNumber(5)
  $core.List<$core.int> get fullMessageHash => $_getN(3);
  @$pb.TagNumber(5)
  set fullMessageHash($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasFullMessageHash() => $_has(3);
  @$pb.TagNumber(5)
  void clearFullMessageHash() => clearField(5);
}

class MoneroTransactionSignInputRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionSignInputRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..aOM<MoneroTransactionSourceEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'srcEntr', subBuilder: MoneroTransactionSourceEntry.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vini', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'viniHmac', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pseudoOut', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pseudoOutHmac', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pseudoOutAlpha', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spendKey', $pb.PbFieldType.OY)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'origIdx', $pb.PbFieldType.OU3)
  ;

  MoneroTransactionSignInputRequest._() : super();
  factory MoneroTransactionSignInputRequest({
    MoneroTransactionSourceEntry? srcEntr,
    $core.List<$core.int>? vini,
    $core.List<$core.int>? viniHmac,
    $core.List<$core.int>? pseudoOut,
    $core.List<$core.int>? pseudoOutHmac,
    $core.List<$core.int>? pseudoOutAlpha,
    $core.List<$core.int>? spendKey,
    $core.int? origIdx,
  }) {
    final _result = create();
    if (srcEntr != null) {
      _result.srcEntr = srcEntr;
    }
    if (vini != null) {
      _result.vini = vini;
    }
    if (viniHmac != null) {
      _result.viniHmac = viniHmac;
    }
    if (pseudoOut != null) {
      _result.pseudoOut = pseudoOut;
    }
    if (pseudoOutHmac != null) {
      _result.pseudoOutHmac = pseudoOutHmac;
    }
    if (pseudoOutAlpha != null) {
      _result.pseudoOutAlpha = pseudoOutAlpha;
    }
    if (spendKey != null) {
      _result.spendKey = spendKey;
    }
    if (origIdx != null) {
      _result.origIdx = origIdx;
    }
    return _result;
  }
  factory MoneroTransactionSignInputRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionSignInputRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionSignInputRequest clone() => MoneroTransactionSignInputRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionSignInputRequest copyWith(void Function(MoneroTransactionSignInputRequest) updates) => super.copyWith((message) => updates(message as MoneroTransactionSignInputRequest)) as MoneroTransactionSignInputRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSignInputRequest create() => MoneroTransactionSignInputRequest._();
  MoneroTransactionSignInputRequest createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionSignInputRequest> createRepeated() => $pb.PbList<MoneroTransactionSignInputRequest>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSignInputRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionSignInputRequest>(create);
  static MoneroTransactionSignInputRequest? _defaultInstance;

  @$pb.TagNumber(1)
  MoneroTransactionSourceEntry get srcEntr => $_getN(0);
  @$pb.TagNumber(1)
  set srcEntr(MoneroTransactionSourceEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSrcEntr() => $_has(0);
  @$pb.TagNumber(1)
  void clearSrcEntr() => clearField(1);
  @$pb.TagNumber(1)
  MoneroTransactionSourceEntry ensureSrcEntr() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get vini => $_getN(1);
  @$pb.TagNumber(2)
  set vini($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVini() => $_has(1);
  @$pb.TagNumber(2)
  void clearVini() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get viniHmac => $_getN(2);
  @$pb.TagNumber(3)
  set viniHmac($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasViniHmac() => $_has(2);
  @$pb.TagNumber(3)
  void clearViniHmac() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get pseudoOut => $_getN(3);
  @$pb.TagNumber(4)
  set pseudoOut($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPseudoOut() => $_has(3);
  @$pb.TagNumber(4)
  void clearPseudoOut() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get pseudoOutHmac => $_getN(4);
  @$pb.TagNumber(5)
  set pseudoOutHmac($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPseudoOutHmac() => $_has(4);
  @$pb.TagNumber(5)
  void clearPseudoOutHmac() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get pseudoOutAlpha => $_getN(5);
  @$pb.TagNumber(6)
  set pseudoOutAlpha($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPseudoOutAlpha() => $_has(5);
  @$pb.TagNumber(6)
  void clearPseudoOutAlpha() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get spendKey => $_getN(6);
  @$pb.TagNumber(7)
  set spendKey($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSpendKey() => $_has(6);
  @$pb.TagNumber(7)
  void clearSpendKey() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get origIdx => $_getIZ(7);
  @$pb.TagNumber(8)
  set origIdx($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOrigIdx() => $_has(7);
  @$pb.TagNumber(8)
  void clearOrigIdx() => clearField(8);
}

class MoneroTransactionSignInputAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionSignInputAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pseudoOut', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MoneroTransactionSignInputAck._() : super();
  factory MoneroTransactionSignInputAck({
    $core.List<$core.int>? signature,
    $core.List<$core.int>? pseudoOut,
  }) {
    final _result = create();
    if (signature != null) {
      _result.signature = signature;
    }
    if (pseudoOut != null) {
      _result.pseudoOut = pseudoOut;
    }
    return _result;
  }
  factory MoneroTransactionSignInputAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionSignInputAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionSignInputAck clone() => MoneroTransactionSignInputAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionSignInputAck copyWith(void Function(MoneroTransactionSignInputAck) updates) => super.copyWith((message) => updates(message as MoneroTransactionSignInputAck)) as MoneroTransactionSignInputAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSignInputAck create() => MoneroTransactionSignInputAck._();
  MoneroTransactionSignInputAck createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionSignInputAck> createRepeated() => $pb.PbList<MoneroTransactionSignInputAck>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionSignInputAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionSignInputAck>(create);
  static MoneroTransactionSignInputAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get signature => $_getN(0);
  @$pb.TagNumber(1)
  set signature($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get pseudoOut => $_getN(1);
  @$pb.TagNumber(2)
  set pseudoOut($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPseudoOut() => $_has(1);
  @$pb.TagNumber(2)
  void clearPseudoOut() => clearField(2);
}

class MoneroTransactionFinalRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionFinalRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MoneroTransactionFinalRequest._() : super();
  factory MoneroTransactionFinalRequest() => create();
  factory MoneroTransactionFinalRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionFinalRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionFinalRequest clone() => MoneroTransactionFinalRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionFinalRequest copyWith(void Function(MoneroTransactionFinalRequest) updates) => super.copyWith((message) => updates(message as MoneroTransactionFinalRequest)) as MoneroTransactionFinalRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionFinalRequest create() => MoneroTransactionFinalRequest._();
  MoneroTransactionFinalRequest createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionFinalRequest> createRepeated() => $pb.PbList<MoneroTransactionFinalRequest>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionFinalRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionFinalRequest>(create);
  static MoneroTransactionFinalRequest? _defaultInstance;
}

class MoneroTransactionFinalAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroTransactionFinalAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coutKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salt', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'randMult', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txEncKeys', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openingKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MoneroTransactionFinalAck._() : super();
  factory MoneroTransactionFinalAck({
    $core.List<$core.int>? coutKey,
    $core.List<$core.int>? salt,
    $core.List<$core.int>? randMult,
    $core.List<$core.int>? txEncKeys,
    $core.List<$core.int>? openingKey,
  }) {
    final _result = create();
    if (coutKey != null) {
      _result.coutKey = coutKey;
    }
    if (salt != null) {
      _result.salt = salt;
    }
    if (randMult != null) {
      _result.randMult = randMult;
    }
    if (txEncKeys != null) {
      _result.txEncKeys = txEncKeys;
    }
    if (openingKey != null) {
      _result.openingKey = openingKey;
    }
    return _result;
  }
  factory MoneroTransactionFinalAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroTransactionFinalAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroTransactionFinalAck clone() => MoneroTransactionFinalAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroTransactionFinalAck copyWith(void Function(MoneroTransactionFinalAck) updates) => super.copyWith((message) => updates(message as MoneroTransactionFinalAck)) as MoneroTransactionFinalAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionFinalAck create() => MoneroTransactionFinalAck._();
  MoneroTransactionFinalAck createEmptyInstance() => create();
  static $pb.PbList<MoneroTransactionFinalAck> createRepeated() => $pb.PbList<MoneroTransactionFinalAck>();
  @$core.pragma('dart2js:noInline')
  static MoneroTransactionFinalAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroTransactionFinalAck>(create);
  static MoneroTransactionFinalAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get coutKey => $_getN(0);
  @$pb.TagNumber(1)
  set coutKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoutKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoutKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get salt => $_getN(1);
  @$pb.TagNumber(2)
  set salt($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSalt() => $_has(1);
  @$pb.TagNumber(2)
  void clearSalt() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get randMult => $_getN(2);
  @$pb.TagNumber(3)
  set randMult($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRandMult() => $_has(2);
  @$pb.TagNumber(3)
  void clearRandMult() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get txEncKeys => $_getN(3);
  @$pb.TagNumber(4)
  set txEncKeys($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTxEncKeys() => $_has(3);
  @$pb.TagNumber(4)
  void clearTxEncKeys() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get openingKey => $_getN(4);
  @$pb.TagNumber(5)
  set openingKey($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOpeningKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearOpeningKey() => clearField(5);
}

class MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroKeyImageExportInitRequest.MoneroSubAddressIndicesList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', $pb.PbFieldType.QU3)
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minorIndices', $pb.PbFieldType.PU3)
  ;

  MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList._() : super();
  factory MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList({
    $core.int? account,
    $core.Iterable<$core.int>? minorIndices,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    if (minorIndices != null) {
      _result.minorIndices.addAll(minorIndices);
    }
    return _result;
  }
  factory MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList clone() => MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList copyWith(void Function(MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList) updates) => super.copyWith((message) => updates(message as MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList)) as MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList create() => MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList._();
  MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList createEmptyInstance() => create();
  static $pb.PbList<MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList> createRepeated() => $pb.PbList<MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList>();
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList>(create);
  static MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get account => $_getIZ(0);
  @$pb.TagNumber(1)
  set account($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get minorIndices => $_getList(1);
}

class MoneroKeyImageExportInitRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroKeyImageExportInitRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'num', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash', $pb.PbFieldType.QY)
    ..p<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..e<MoneroNetworkType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkType', $pb.PbFieldType.OE, defaultOrMaker: MoneroNetworkType.MAINNET, valueOf: MoneroNetworkType.valueOf, enumValues: MoneroNetworkType.values)
    ..pc<MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subs', $pb.PbFieldType.PM, subBuilder: MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList.create)
  ;

  MoneroKeyImageExportInitRequest._() : super();
  factory MoneroKeyImageExportInitRequest({
    $fixnum.Int64? num,
    $core.List<$core.int>? hash,
    $core.Iterable<$core.int>? addressN,
    MoneroNetworkType? networkType,
    $core.Iterable<MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList>? subs,
  }) {
    final _result = create();
    if (num != null) {
      _result.num = num;
    }
    if (hash != null) {
      _result.hash = hash;
    }
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (networkType != null) {
      _result.networkType = networkType;
    }
    if (subs != null) {
      _result.subs.addAll(subs);
    }
    return _result;
  }
  factory MoneroKeyImageExportInitRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroKeyImageExportInitRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroKeyImageExportInitRequest clone() => MoneroKeyImageExportInitRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroKeyImageExportInitRequest copyWith(void Function(MoneroKeyImageExportInitRequest) updates) => super.copyWith((message) => updates(message as MoneroKeyImageExportInitRequest)) as MoneroKeyImageExportInitRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageExportInitRequest create() => MoneroKeyImageExportInitRequest._();
  MoneroKeyImageExportInitRequest createEmptyInstance() => create();
  static $pb.PbList<MoneroKeyImageExportInitRequest> createRepeated() => $pb.PbList<MoneroKeyImageExportInitRequest>();
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageExportInitRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroKeyImageExportInitRequest>(create);
  static MoneroKeyImageExportInitRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get num => $_getI64(0);
  @$pb.TagNumber(1)
  set num($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearNum() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get hash => $_getN(1);
  @$pb.TagNumber(2)
  set hash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get addressN => $_getList(2);

  @$pb.TagNumber(4)
  MoneroNetworkType get networkType => $_getN(3);
  @$pb.TagNumber(4)
  set networkType(MoneroNetworkType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasNetworkType() => $_has(3);
  @$pb.TagNumber(4)
  void clearNetworkType() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<MoneroKeyImageExportInitRequest_MoneroSubAddressIndicesList> get subs => $_getList(4);
}

class MoneroKeyImageExportInitAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroKeyImageExportInitAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MoneroKeyImageExportInitAck._() : super();
  factory MoneroKeyImageExportInitAck() => create();
  factory MoneroKeyImageExportInitAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroKeyImageExportInitAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroKeyImageExportInitAck clone() => MoneroKeyImageExportInitAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroKeyImageExportInitAck copyWith(void Function(MoneroKeyImageExportInitAck) updates) => super.copyWith((message) => updates(message as MoneroKeyImageExportInitAck)) as MoneroKeyImageExportInitAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageExportInitAck create() => MoneroKeyImageExportInitAck._();
  MoneroKeyImageExportInitAck createEmptyInstance() => create();
  static $pb.PbList<MoneroKeyImageExportInitAck> createRepeated() => $pb.PbList<MoneroKeyImageExportInitAck>();
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageExportInitAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroKeyImageExportInitAck>(create);
  static MoneroKeyImageExportInitAck? _defaultInstance;
}

class MoneroKeyImageSyncStepRequest_MoneroTransferDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroKeyImageSyncStepRequest.MoneroTransferDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outKey', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txPubKey', $pb.PbFieldType.QY)
    ..p<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'additionalTxPubKeys', $pb.PbFieldType.PY)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'internalOutputIndex', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subAddrMajor', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subAddrMinor', $pb.PbFieldType.OU3)
  ;

  MoneroKeyImageSyncStepRequest_MoneroTransferDetails._() : super();
  factory MoneroKeyImageSyncStepRequest_MoneroTransferDetails({
    $core.List<$core.int>? outKey,
    $core.List<$core.int>? txPubKey,
    $core.Iterable<$core.List<$core.int>>? additionalTxPubKeys,
    $fixnum.Int64? internalOutputIndex,
    $core.int? subAddrMajor,
    $core.int? subAddrMinor,
  }) {
    final _result = create();
    if (outKey != null) {
      _result.outKey = outKey;
    }
    if (txPubKey != null) {
      _result.txPubKey = txPubKey;
    }
    if (additionalTxPubKeys != null) {
      _result.additionalTxPubKeys.addAll(additionalTxPubKeys);
    }
    if (internalOutputIndex != null) {
      _result.internalOutputIndex = internalOutputIndex;
    }
    if (subAddrMajor != null) {
      _result.subAddrMajor = subAddrMajor;
    }
    if (subAddrMinor != null) {
      _result.subAddrMinor = subAddrMinor;
    }
    return _result;
  }
  factory MoneroKeyImageSyncStepRequest_MoneroTransferDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroKeyImageSyncStepRequest_MoneroTransferDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroKeyImageSyncStepRequest_MoneroTransferDetails clone() => MoneroKeyImageSyncStepRequest_MoneroTransferDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroKeyImageSyncStepRequest_MoneroTransferDetails copyWith(void Function(MoneroKeyImageSyncStepRequest_MoneroTransferDetails) updates) => super.copyWith((message) => updates(message as MoneroKeyImageSyncStepRequest_MoneroTransferDetails)) as MoneroKeyImageSyncStepRequest_MoneroTransferDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageSyncStepRequest_MoneroTransferDetails create() => MoneroKeyImageSyncStepRequest_MoneroTransferDetails._();
  MoneroKeyImageSyncStepRequest_MoneroTransferDetails createEmptyInstance() => create();
  static $pb.PbList<MoneroKeyImageSyncStepRequest_MoneroTransferDetails> createRepeated() => $pb.PbList<MoneroKeyImageSyncStepRequest_MoneroTransferDetails>();
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageSyncStepRequest_MoneroTransferDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroKeyImageSyncStepRequest_MoneroTransferDetails>(create);
  static MoneroKeyImageSyncStepRequest_MoneroTransferDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get outKey => $_getN(0);
  @$pb.TagNumber(1)
  set outKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOutKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearOutKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get txPubKey => $_getN(1);
  @$pb.TagNumber(2)
  set txPubKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxPubKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxPubKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get additionalTxPubKeys => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get internalOutputIndex => $_getI64(3);
  @$pb.TagNumber(4)
  set internalOutputIndex($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInternalOutputIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearInternalOutputIndex() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get subAddrMajor => $_getIZ(4);
  @$pb.TagNumber(5)
  set subAddrMajor($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSubAddrMajor() => $_has(4);
  @$pb.TagNumber(5)
  void clearSubAddrMajor() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get subAddrMinor => $_getIZ(5);
  @$pb.TagNumber(6)
  set subAddrMinor($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSubAddrMinor() => $_has(5);
  @$pb.TagNumber(6)
  void clearSubAddrMinor() => clearField(6);
}

class MoneroKeyImageSyncStepRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroKeyImageSyncStepRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..pc<MoneroKeyImageSyncStepRequest_MoneroTransferDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tdis', $pb.PbFieldType.PM, subBuilder: MoneroKeyImageSyncStepRequest_MoneroTransferDetails.create)
  ;

  MoneroKeyImageSyncStepRequest._() : super();
  factory MoneroKeyImageSyncStepRequest({
    $core.Iterable<MoneroKeyImageSyncStepRequest_MoneroTransferDetails>? tdis,
  }) {
    final _result = create();
    if (tdis != null) {
      _result.tdis.addAll(tdis);
    }
    return _result;
  }
  factory MoneroKeyImageSyncStepRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroKeyImageSyncStepRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroKeyImageSyncStepRequest clone() => MoneroKeyImageSyncStepRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroKeyImageSyncStepRequest copyWith(void Function(MoneroKeyImageSyncStepRequest) updates) => super.copyWith((message) => updates(message as MoneroKeyImageSyncStepRequest)) as MoneroKeyImageSyncStepRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageSyncStepRequest create() => MoneroKeyImageSyncStepRequest._();
  MoneroKeyImageSyncStepRequest createEmptyInstance() => create();
  static $pb.PbList<MoneroKeyImageSyncStepRequest> createRepeated() => $pb.PbList<MoneroKeyImageSyncStepRequest>();
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageSyncStepRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroKeyImageSyncStepRequest>(create);
  static MoneroKeyImageSyncStepRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MoneroKeyImageSyncStepRequest_MoneroTransferDetails> get tdis => $_getList(0);
}

class MoneroKeyImageSyncStepAck_MoneroExportedKeyImage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroKeyImageSyncStepAck.MoneroExportedKeyImage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iv', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blob', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MoneroKeyImageSyncStepAck_MoneroExportedKeyImage._() : super();
  factory MoneroKeyImageSyncStepAck_MoneroExportedKeyImage({
    $core.List<$core.int>? iv,
    $core.List<$core.int>? blob,
  }) {
    final _result = create();
    if (iv != null) {
      _result.iv = iv;
    }
    if (blob != null) {
      _result.blob = blob;
    }
    return _result;
  }
  factory MoneroKeyImageSyncStepAck_MoneroExportedKeyImage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroKeyImageSyncStepAck_MoneroExportedKeyImage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroKeyImageSyncStepAck_MoneroExportedKeyImage clone() => MoneroKeyImageSyncStepAck_MoneroExportedKeyImage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroKeyImageSyncStepAck_MoneroExportedKeyImage copyWith(void Function(MoneroKeyImageSyncStepAck_MoneroExportedKeyImage) updates) => super.copyWith((message) => updates(message as MoneroKeyImageSyncStepAck_MoneroExportedKeyImage)) as MoneroKeyImageSyncStepAck_MoneroExportedKeyImage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageSyncStepAck_MoneroExportedKeyImage create() => MoneroKeyImageSyncStepAck_MoneroExportedKeyImage._();
  MoneroKeyImageSyncStepAck_MoneroExportedKeyImage createEmptyInstance() => create();
  static $pb.PbList<MoneroKeyImageSyncStepAck_MoneroExportedKeyImage> createRepeated() => $pb.PbList<MoneroKeyImageSyncStepAck_MoneroExportedKeyImage>();
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageSyncStepAck_MoneroExportedKeyImage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroKeyImageSyncStepAck_MoneroExportedKeyImage>(create);
  static MoneroKeyImageSyncStepAck_MoneroExportedKeyImage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get iv => $_getN(0);
  @$pb.TagNumber(1)
  set iv($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIv() => $_has(0);
  @$pb.TagNumber(1)
  void clearIv() => clearField(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get blob => $_getN(1);
  @$pb.TagNumber(3)
  set blob($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlob() => $_has(1);
  @$pb.TagNumber(3)
  void clearBlob() => clearField(3);
}

class MoneroKeyImageSyncStepAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroKeyImageSyncStepAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..pc<MoneroKeyImageSyncStepAck_MoneroExportedKeyImage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kis', $pb.PbFieldType.PM, subBuilder: MoneroKeyImageSyncStepAck_MoneroExportedKeyImage.create)
    ..hasRequiredFields = false
  ;

  MoneroKeyImageSyncStepAck._() : super();
  factory MoneroKeyImageSyncStepAck({
    $core.Iterable<MoneroKeyImageSyncStepAck_MoneroExportedKeyImage>? kis,
  }) {
    final _result = create();
    if (kis != null) {
      _result.kis.addAll(kis);
    }
    return _result;
  }
  factory MoneroKeyImageSyncStepAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroKeyImageSyncStepAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroKeyImageSyncStepAck clone() => MoneroKeyImageSyncStepAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroKeyImageSyncStepAck copyWith(void Function(MoneroKeyImageSyncStepAck) updates) => super.copyWith((message) => updates(message as MoneroKeyImageSyncStepAck)) as MoneroKeyImageSyncStepAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageSyncStepAck create() => MoneroKeyImageSyncStepAck._();
  MoneroKeyImageSyncStepAck createEmptyInstance() => create();
  static $pb.PbList<MoneroKeyImageSyncStepAck> createRepeated() => $pb.PbList<MoneroKeyImageSyncStepAck>();
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageSyncStepAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroKeyImageSyncStepAck>(create);
  static MoneroKeyImageSyncStepAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MoneroKeyImageSyncStepAck_MoneroExportedKeyImage> get kis => $_getList(0);
}

class MoneroKeyImageSyncFinalRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroKeyImageSyncFinalRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MoneroKeyImageSyncFinalRequest._() : super();
  factory MoneroKeyImageSyncFinalRequest() => create();
  factory MoneroKeyImageSyncFinalRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroKeyImageSyncFinalRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroKeyImageSyncFinalRequest clone() => MoneroKeyImageSyncFinalRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroKeyImageSyncFinalRequest copyWith(void Function(MoneroKeyImageSyncFinalRequest) updates) => super.copyWith((message) => updates(message as MoneroKeyImageSyncFinalRequest)) as MoneroKeyImageSyncFinalRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageSyncFinalRequest create() => MoneroKeyImageSyncFinalRequest._();
  MoneroKeyImageSyncFinalRequest createEmptyInstance() => create();
  static $pb.PbList<MoneroKeyImageSyncFinalRequest> createRepeated() => $pb.PbList<MoneroKeyImageSyncFinalRequest>();
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageSyncFinalRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroKeyImageSyncFinalRequest>(create);
  static MoneroKeyImageSyncFinalRequest? _defaultInstance;
}

class MoneroKeyImageSyncFinalAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroKeyImageSyncFinalAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MoneroKeyImageSyncFinalAck._() : super();
  factory MoneroKeyImageSyncFinalAck({
    $core.List<$core.int>? encKey,
  }) {
    final _result = create();
    if (encKey != null) {
      _result.encKey = encKey;
    }
    return _result;
  }
  factory MoneroKeyImageSyncFinalAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroKeyImageSyncFinalAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroKeyImageSyncFinalAck clone() => MoneroKeyImageSyncFinalAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroKeyImageSyncFinalAck copyWith(void Function(MoneroKeyImageSyncFinalAck) updates) => super.copyWith((message) => updates(message as MoneroKeyImageSyncFinalAck)) as MoneroKeyImageSyncFinalAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageSyncFinalAck create() => MoneroKeyImageSyncFinalAck._();
  MoneroKeyImageSyncFinalAck createEmptyInstance() => create();
  static $pb.PbList<MoneroKeyImageSyncFinalAck> createRepeated() => $pb.PbList<MoneroKeyImageSyncFinalAck>();
  @$core.pragma('dart2js:noInline')
  static MoneroKeyImageSyncFinalAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroKeyImageSyncFinalAck>(create);
  static MoneroKeyImageSyncFinalAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get encKey => $_getN(0);
  @$pb.TagNumber(1)
  set encKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEncKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncKey() => clearField(1);
}

class MoneroGetTxKeyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroGetTxKeyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..e<MoneroNetworkType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkType', $pb.PbFieldType.OE, defaultOrMaker: MoneroNetworkType.MAINNET, valueOf: MoneroNetworkType.valueOf, enumValues: MoneroNetworkType.values)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salt1', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salt2', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txEncKeys', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txPrefixHash', $pb.PbFieldType.QY)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reason', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'viewPublicKey', $pb.PbFieldType.OY)
  ;

  MoneroGetTxKeyRequest._() : super();
  factory MoneroGetTxKeyRequest({
    $core.Iterable<$core.int>? addressN,
    MoneroNetworkType? networkType,
    $core.List<$core.int>? salt1,
    $core.List<$core.int>? salt2,
    $core.List<$core.int>? txEncKeys,
    $core.List<$core.int>? txPrefixHash,
    $core.int? reason,
    $core.List<$core.int>? viewPublicKey,
  }) {
    final _result = create();
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (networkType != null) {
      _result.networkType = networkType;
    }
    if (salt1 != null) {
      _result.salt1 = salt1;
    }
    if (salt2 != null) {
      _result.salt2 = salt2;
    }
    if (txEncKeys != null) {
      _result.txEncKeys = txEncKeys;
    }
    if (txPrefixHash != null) {
      _result.txPrefixHash = txPrefixHash;
    }
    if (reason != null) {
      _result.reason = reason;
    }
    if (viewPublicKey != null) {
      _result.viewPublicKey = viewPublicKey;
    }
    return _result;
  }
  factory MoneroGetTxKeyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroGetTxKeyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroGetTxKeyRequest clone() => MoneroGetTxKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroGetTxKeyRequest copyWith(void Function(MoneroGetTxKeyRequest) updates) => super.copyWith((message) => updates(message as MoneroGetTxKeyRequest)) as MoneroGetTxKeyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroGetTxKeyRequest create() => MoneroGetTxKeyRequest._();
  MoneroGetTxKeyRequest createEmptyInstance() => create();
  static $pb.PbList<MoneroGetTxKeyRequest> createRepeated() => $pb.PbList<MoneroGetTxKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static MoneroGetTxKeyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroGetTxKeyRequest>(create);
  static MoneroGetTxKeyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get addressN => $_getList(0);

  @$pb.TagNumber(2)
  MoneroNetworkType get networkType => $_getN(1);
  @$pb.TagNumber(2)
  set networkType(MoneroNetworkType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNetworkType() => $_has(1);
  @$pb.TagNumber(2)
  void clearNetworkType() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get salt1 => $_getN(2);
  @$pb.TagNumber(3)
  set salt1($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSalt1() => $_has(2);
  @$pb.TagNumber(3)
  void clearSalt1() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get salt2 => $_getN(3);
  @$pb.TagNumber(4)
  set salt2($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSalt2() => $_has(3);
  @$pb.TagNumber(4)
  void clearSalt2() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get txEncKeys => $_getN(4);
  @$pb.TagNumber(5)
  set txEncKeys($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTxEncKeys() => $_has(4);
  @$pb.TagNumber(5)
  void clearTxEncKeys() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get txPrefixHash => $_getN(5);
  @$pb.TagNumber(6)
  set txPrefixHash($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTxPrefixHash() => $_has(5);
  @$pb.TagNumber(6)
  void clearTxPrefixHash() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get reason => $_getIZ(6);
  @$pb.TagNumber(7)
  set reason($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasReason() => $_has(6);
  @$pb.TagNumber(7)
  void clearReason() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get viewPublicKey => $_getN(7);
  @$pb.TagNumber(8)
  set viewPublicKey($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasViewPublicKey() => $_has(7);
  @$pb.TagNumber(8)
  void clearViewPublicKey() => clearField(8);
}

class MoneroGetTxKeyAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroGetTxKeyAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salt', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txKeys', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txDerivations', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MoneroGetTxKeyAck._() : super();
  factory MoneroGetTxKeyAck({
    $core.List<$core.int>? salt,
    $core.List<$core.int>? txKeys,
    $core.List<$core.int>? txDerivations,
  }) {
    final _result = create();
    if (salt != null) {
      _result.salt = salt;
    }
    if (txKeys != null) {
      _result.txKeys = txKeys;
    }
    if (txDerivations != null) {
      _result.txDerivations = txDerivations;
    }
    return _result;
  }
  factory MoneroGetTxKeyAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroGetTxKeyAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroGetTxKeyAck clone() => MoneroGetTxKeyAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroGetTxKeyAck copyWith(void Function(MoneroGetTxKeyAck) updates) => super.copyWith((message) => updates(message as MoneroGetTxKeyAck)) as MoneroGetTxKeyAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroGetTxKeyAck create() => MoneroGetTxKeyAck._();
  MoneroGetTxKeyAck createEmptyInstance() => create();
  static $pb.PbList<MoneroGetTxKeyAck> createRepeated() => $pb.PbList<MoneroGetTxKeyAck>();
  @$core.pragma('dart2js:noInline')
  static MoneroGetTxKeyAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroGetTxKeyAck>(create);
  static MoneroGetTxKeyAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get salt => $_getN(0);
  @$pb.TagNumber(1)
  set salt($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSalt() => $_has(0);
  @$pb.TagNumber(1)
  void clearSalt() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get txKeys => $_getN(1);
  @$pb.TagNumber(2)
  set txKeys($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxKeys() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxKeys() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get txDerivations => $_getN(2);
  @$pb.TagNumber(3)
  set txDerivations($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxDerivations() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxDerivations() => clearField(3);
}

class MoneroLiveRefreshStartRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroLiveRefreshStartRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..e<MoneroNetworkType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkType', $pb.PbFieldType.OE, defaultOrMaker: MoneroNetworkType.MAINNET, valueOf: MoneroNetworkType.valueOf, enumValues: MoneroNetworkType.values)
    ..hasRequiredFields = false
  ;

  MoneroLiveRefreshStartRequest._() : super();
  factory MoneroLiveRefreshStartRequest({
    $core.Iterable<$core.int>? addressN,
    MoneroNetworkType? networkType,
  }) {
    final _result = create();
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (networkType != null) {
      _result.networkType = networkType;
    }
    return _result;
  }
  factory MoneroLiveRefreshStartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroLiveRefreshStartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroLiveRefreshStartRequest clone() => MoneroLiveRefreshStartRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroLiveRefreshStartRequest copyWith(void Function(MoneroLiveRefreshStartRequest) updates) => super.copyWith((message) => updates(message as MoneroLiveRefreshStartRequest)) as MoneroLiveRefreshStartRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroLiveRefreshStartRequest create() => MoneroLiveRefreshStartRequest._();
  MoneroLiveRefreshStartRequest createEmptyInstance() => create();
  static $pb.PbList<MoneroLiveRefreshStartRequest> createRepeated() => $pb.PbList<MoneroLiveRefreshStartRequest>();
  @$core.pragma('dart2js:noInline')
  static MoneroLiveRefreshStartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroLiveRefreshStartRequest>(create);
  static MoneroLiveRefreshStartRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get addressN => $_getList(0);

  @$pb.TagNumber(2)
  MoneroNetworkType get networkType => $_getN(1);
  @$pb.TagNumber(2)
  set networkType(MoneroNetworkType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNetworkType() => $_has(1);
  @$pb.TagNumber(2)
  void clearNetworkType() => clearField(2);
}

class MoneroLiveRefreshStartAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroLiveRefreshStartAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MoneroLiveRefreshStartAck._() : super();
  factory MoneroLiveRefreshStartAck() => create();
  factory MoneroLiveRefreshStartAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroLiveRefreshStartAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroLiveRefreshStartAck clone() => MoneroLiveRefreshStartAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroLiveRefreshStartAck copyWith(void Function(MoneroLiveRefreshStartAck) updates) => super.copyWith((message) => updates(message as MoneroLiveRefreshStartAck)) as MoneroLiveRefreshStartAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroLiveRefreshStartAck create() => MoneroLiveRefreshStartAck._();
  MoneroLiveRefreshStartAck createEmptyInstance() => create();
  static $pb.PbList<MoneroLiveRefreshStartAck> createRepeated() => $pb.PbList<MoneroLiveRefreshStartAck>();
  @$core.pragma('dart2js:noInline')
  static MoneroLiveRefreshStartAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroLiveRefreshStartAck>(create);
  static MoneroLiveRefreshStartAck? _defaultInstance;
}

class MoneroLiveRefreshStepRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroLiveRefreshStepRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outKey', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recvDeriv', $pb.PbFieldType.QY)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'realOutIdx', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subAddrMajor', $pb.PbFieldType.QU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subAddrMinor', $pb.PbFieldType.QU3)
  ;

  MoneroLiveRefreshStepRequest._() : super();
  factory MoneroLiveRefreshStepRequest({
    $core.List<$core.int>? outKey,
    $core.List<$core.int>? recvDeriv,
    $fixnum.Int64? realOutIdx,
    $core.int? subAddrMajor,
    $core.int? subAddrMinor,
  }) {
    final _result = create();
    if (outKey != null) {
      _result.outKey = outKey;
    }
    if (recvDeriv != null) {
      _result.recvDeriv = recvDeriv;
    }
    if (realOutIdx != null) {
      _result.realOutIdx = realOutIdx;
    }
    if (subAddrMajor != null) {
      _result.subAddrMajor = subAddrMajor;
    }
    if (subAddrMinor != null) {
      _result.subAddrMinor = subAddrMinor;
    }
    return _result;
  }
  factory MoneroLiveRefreshStepRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroLiveRefreshStepRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroLiveRefreshStepRequest clone() => MoneroLiveRefreshStepRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroLiveRefreshStepRequest copyWith(void Function(MoneroLiveRefreshStepRequest) updates) => super.copyWith((message) => updates(message as MoneroLiveRefreshStepRequest)) as MoneroLiveRefreshStepRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroLiveRefreshStepRequest create() => MoneroLiveRefreshStepRequest._();
  MoneroLiveRefreshStepRequest createEmptyInstance() => create();
  static $pb.PbList<MoneroLiveRefreshStepRequest> createRepeated() => $pb.PbList<MoneroLiveRefreshStepRequest>();
  @$core.pragma('dart2js:noInline')
  static MoneroLiveRefreshStepRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroLiveRefreshStepRequest>(create);
  static MoneroLiveRefreshStepRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get outKey => $_getN(0);
  @$pb.TagNumber(1)
  set outKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOutKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearOutKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get recvDeriv => $_getN(1);
  @$pb.TagNumber(2)
  set recvDeriv($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecvDeriv() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecvDeriv() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get realOutIdx => $_getI64(2);
  @$pb.TagNumber(3)
  set realOutIdx($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRealOutIdx() => $_has(2);
  @$pb.TagNumber(3)
  void clearRealOutIdx() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get subAddrMajor => $_getIZ(3);
  @$pb.TagNumber(4)
  set subAddrMajor($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSubAddrMajor() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubAddrMajor() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get subAddrMinor => $_getIZ(4);
  @$pb.TagNumber(5)
  set subAddrMinor($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSubAddrMinor() => $_has(4);
  @$pb.TagNumber(5)
  void clearSubAddrMinor() => clearField(5);
}

class MoneroLiveRefreshStepAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroLiveRefreshStepAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salt', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyImage', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MoneroLiveRefreshStepAck._() : super();
  factory MoneroLiveRefreshStepAck({
    $core.List<$core.int>? salt,
    $core.List<$core.int>? keyImage,
  }) {
    final _result = create();
    if (salt != null) {
      _result.salt = salt;
    }
    if (keyImage != null) {
      _result.keyImage = keyImage;
    }
    return _result;
  }
  factory MoneroLiveRefreshStepAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroLiveRefreshStepAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroLiveRefreshStepAck clone() => MoneroLiveRefreshStepAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroLiveRefreshStepAck copyWith(void Function(MoneroLiveRefreshStepAck) updates) => super.copyWith((message) => updates(message as MoneroLiveRefreshStepAck)) as MoneroLiveRefreshStepAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroLiveRefreshStepAck create() => MoneroLiveRefreshStepAck._();
  MoneroLiveRefreshStepAck createEmptyInstance() => create();
  static $pb.PbList<MoneroLiveRefreshStepAck> createRepeated() => $pb.PbList<MoneroLiveRefreshStepAck>();
  @$core.pragma('dart2js:noInline')
  static MoneroLiveRefreshStepAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroLiveRefreshStepAck>(create);
  static MoneroLiveRefreshStepAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get salt => $_getN(0);
  @$pb.TagNumber(1)
  set salt($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSalt() => $_has(0);
  @$pb.TagNumber(1)
  void clearSalt() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get keyImage => $_getN(1);
  @$pb.TagNumber(2)
  set keyImage($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKeyImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeyImage() => clearField(2);
}

class MoneroLiveRefreshFinalRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroLiveRefreshFinalRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MoneroLiveRefreshFinalRequest._() : super();
  factory MoneroLiveRefreshFinalRequest() => create();
  factory MoneroLiveRefreshFinalRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroLiveRefreshFinalRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroLiveRefreshFinalRequest clone() => MoneroLiveRefreshFinalRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroLiveRefreshFinalRequest copyWith(void Function(MoneroLiveRefreshFinalRequest) updates) => super.copyWith((message) => updates(message as MoneroLiveRefreshFinalRequest)) as MoneroLiveRefreshFinalRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroLiveRefreshFinalRequest create() => MoneroLiveRefreshFinalRequest._();
  MoneroLiveRefreshFinalRequest createEmptyInstance() => create();
  static $pb.PbList<MoneroLiveRefreshFinalRequest> createRepeated() => $pb.PbList<MoneroLiveRefreshFinalRequest>();
  @$core.pragma('dart2js:noInline')
  static MoneroLiveRefreshFinalRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroLiveRefreshFinalRequest>(create);
  static MoneroLiveRefreshFinalRequest? _defaultInstance;
}

class MoneroLiveRefreshFinalAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoneroLiveRefreshFinalAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MoneroLiveRefreshFinalAck._() : super();
  factory MoneroLiveRefreshFinalAck() => create();
  factory MoneroLiveRefreshFinalAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoneroLiveRefreshFinalAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoneroLiveRefreshFinalAck clone() => MoneroLiveRefreshFinalAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoneroLiveRefreshFinalAck copyWith(void Function(MoneroLiveRefreshFinalAck) updates) => super.copyWith((message) => updates(message as MoneroLiveRefreshFinalAck)) as MoneroLiveRefreshFinalAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoneroLiveRefreshFinalAck create() => MoneroLiveRefreshFinalAck._();
  MoneroLiveRefreshFinalAck createEmptyInstance() => create();
  static $pb.PbList<MoneroLiveRefreshFinalAck> createRepeated() => $pb.PbList<MoneroLiveRefreshFinalAck>();
  @$core.pragma('dart2js:noInline')
  static MoneroLiveRefreshFinalAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoneroLiveRefreshFinalAck>(create);
  static MoneroLiveRefreshFinalAck? _defaultInstance;
}

class DebugMoneroDiagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DebugMoneroDiagRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ins', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'p1', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'p2', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pd', $pb.PbFieldType.PU6)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data1', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data2', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  DebugMoneroDiagRequest._() : super();
  factory DebugMoneroDiagRequest({
    $fixnum.Int64? ins,
    $fixnum.Int64? p1,
    $fixnum.Int64? p2,
    $core.Iterable<$fixnum.Int64>? pd,
    $core.List<$core.int>? data1,
    $core.List<$core.int>? data2,
  }) {
    final _result = create();
    if (ins != null) {
      _result.ins = ins;
    }
    if (p1 != null) {
      _result.p1 = p1;
    }
    if (p2 != null) {
      _result.p2 = p2;
    }
    if (pd != null) {
      _result.pd.addAll(pd);
    }
    if (data1 != null) {
      _result.data1 = data1;
    }
    if (data2 != null) {
      _result.data2 = data2;
    }
    return _result;
  }
  factory DebugMoneroDiagRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DebugMoneroDiagRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DebugMoneroDiagRequest clone() => DebugMoneroDiagRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DebugMoneroDiagRequest copyWith(void Function(DebugMoneroDiagRequest) updates) => super.copyWith((message) => updates(message as DebugMoneroDiagRequest)) as DebugMoneroDiagRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DebugMoneroDiagRequest create() => DebugMoneroDiagRequest._();
  DebugMoneroDiagRequest createEmptyInstance() => create();
  static $pb.PbList<DebugMoneroDiagRequest> createRepeated() => $pb.PbList<DebugMoneroDiagRequest>();
  @$core.pragma('dart2js:noInline')
  static DebugMoneroDiagRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DebugMoneroDiagRequest>(create);
  static DebugMoneroDiagRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get ins => $_getI64(0);
  @$pb.TagNumber(1)
  set ins($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIns() => $_has(0);
  @$pb.TagNumber(1)
  void clearIns() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get p1 => $_getI64(1);
  @$pb.TagNumber(2)
  set p1($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasP1() => $_has(1);
  @$pb.TagNumber(2)
  void clearP1() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get p2 => $_getI64(2);
  @$pb.TagNumber(3)
  set p2($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasP2() => $_has(2);
  @$pb.TagNumber(3)
  void clearP2() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$fixnum.Int64> get pd => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get data1 => $_getN(4);
  @$pb.TagNumber(5)
  set data1($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasData1() => $_has(4);
  @$pb.TagNumber(5)
  void clearData1() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get data2 => $_getN(5);
  @$pb.TagNumber(6)
  set data2($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasData2() => $_has(5);
  @$pb.TagNumber(6)
  void clearData2() => clearField(6);
}

class DebugMoneroDiagAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DebugMoneroDiagAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.monero'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ins', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'p1', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'p2', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pd', $pb.PbFieldType.PU6)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data1', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data2', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  DebugMoneroDiagAck._() : super();
  factory DebugMoneroDiagAck({
    $fixnum.Int64? ins,
    $fixnum.Int64? p1,
    $fixnum.Int64? p2,
    $core.Iterable<$fixnum.Int64>? pd,
    $core.List<$core.int>? data1,
    $core.List<$core.int>? data2,
  }) {
    final _result = create();
    if (ins != null) {
      _result.ins = ins;
    }
    if (p1 != null) {
      _result.p1 = p1;
    }
    if (p2 != null) {
      _result.p2 = p2;
    }
    if (pd != null) {
      _result.pd.addAll(pd);
    }
    if (data1 != null) {
      _result.data1 = data1;
    }
    if (data2 != null) {
      _result.data2 = data2;
    }
    return _result;
  }
  factory DebugMoneroDiagAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DebugMoneroDiagAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DebugMoneroDiagAck clone() => DebugMoneroDiagAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DebugMoneroDiagAck copyWith(void Function(DebugMoneroDiagAck) updates) => super.copyWith((message) => updates(message as DebugMoneroDiagAck)) as DebugMoneroDiagAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DebugMoneroDiagAck create() => DebugMoneroDiagAck._();
  DebugMoneroDiagAck createEmptyInstance() => create();
  static $pb.PbList<DebugMoneroDiagAck> createRepeated() => $pb.PbList<DebugMoneroDiagAck>();
  @$core.pragma('dart2js:noInline')
  static DebugMoneroDiagAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DebugMoneroDiagAck>(create);
  static DebugMoneroDiagAck? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get ins => $_getI64(0);
  @$pb.TagNumber(1)
  set ins($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIns() => $_has(0);
  @$pb.TagNumber(1)
  void clearIns() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get p1 => $_getI64(1);
  @$pb.TagNumber(2)
  set p1($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasP1() => $_has(1);
  @$pb.TagNumber(2)
  void clearP1() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get p2 => $_getI64(2);
  @$pb.TagNumber(3)
  set p2($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasP2() => $_has(2);
  @$pb.TagNumber(3)
  void clearP2() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$fixnum.Int64> get pd => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get data1 => $_getN(4);
  @$pb.TagNumber(5)
  set data1($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasData1() => $_has(4);
  @$pb.TagNumber(5)
  void clearData1() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get data2 => $_getN(5);
  @$pb.TagNumber(6)
  set data2($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasData2() => $_has(5);
  @$pb.TagNumber(6)
  void clearData2() => clearField(6);
}

