///
//  Generated code. Do not modify.
//  source: messages-bitcoin.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'messages-common.pb.dart' as $0;

import 'messages-bitcoin.pbenum.dart';

export 'messages-bitcoin.pbenum.dart';

class MultisigRedeemScriptType_HDNodePathType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MultisigRedeemScriptType.HDNodePathType', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQM<$0.HDNodeType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'node', subBuilder: $0.HDNodeType.create)
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
  ;

  MultisigRedeemScriptType_HDNodePathType._() : super();
  factory MultisigRedeemScriptType_HDNodePathType({
    $0.HDNodeType? node,
    $core.Iterable<$core.int>? addressN,
  }) {
    final _result = create();
    if (node != null) {
      _result.node = node;
    }
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    return _result;
  }
  factory MultisigRedeemScriptType_HDNodePathType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultisigRedeemScriptType_HDNodePathType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultisigRedeemScriptType_HDNodePathType clone() => MultisigRedeemScriptType_HDNodePathType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultisigRedeemScriptType_HDNodePathType copyWith(void Function(MultisigRedeemScriptType_HDNodePathType) updates) => super.copyWith((message) => updates(message as MultisigRedeemScriptType_HDNodePathType)) as MultisigRedeemScriptType_HDNodePathType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MultisigRedeemScriptType_HDNodePathType create() => MultisigRedeemScriptType_HDNodePathType._();
  MultisigRedeemScriptType_HDNodePathType createEmptyInstance() => create();
  static $pb.PbList<MultisigRedeemScriptType_HDNodePathType> createRepeated() => $pb.PbList<MultisigRedeemScriptType_HDNodePathType>();
  @$core.pragma('dart2js:noInline')
  static MultisigRedeemScriptType_HDNodePathType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultisigRedeemScriptType_HDNodePathType>(create);
  static MultisigRedeemScriptType_HDNodePathType? _defaultInstance;

  @$pb.TagNumber(1)
  $0.HDNodeType get node => $_getN(0);
  @$pb.TagNumber(1)
  set node($0.HDNodeType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNode() => $_has(0);
  @$pb.TagNumber(1)
  void clearNode() => clearField(1);
  @$pb.TagNumber(1)
  $0.HDNodeType ensureNode() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get addressN => $_getList(1);
}

class MultisigRedeemScriptType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MultisigRedeemScriptType', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..pc<MultisigRedeemScriptType_HDNodePathType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubkeys', $pb.PbFieldType.PM, subBuilder: MultisigRedeemScriptType_HDNodePathType.create)
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signatures', $pb.PbFieldType.PY)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'm', $pb.PbFieldType.QU3)
    ..pc<$0.HDNodeType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodes', $pb.PbFieldType.PM, subBuilder: $0.HDNodeType.create)
    ..p<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..e<MultisigPubkeysOrder>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubkeysOrder', $pb.PbFieldType.OE, defaultOrMaker: MultisigPubkeysOrder.PRESERVED, valueOf: MultisigPubkeysOrder.valueOf, enumValues: MultisigPubkeysOrder.values)
  ;

  MultisigRedeemScriptType._() : super();
  factory MultisigRedeemScriptType({
    $core.Iterable<MultisigRedeemScriptType_HDNodePathType>? pubkeys,
    $core.Iterable<$core.List<$core.int>>? signatures,
    $core.int? m,
    $core.Iterable<$0.HDNodeType>? nodes,
    $core.Iterable<$core.int>? addressN,
    MultisigPubkeysOrder? pubkeysOrder,
  }) {
    final _result = create();
    if (pubkeys != null) {
      _result.pubkeys.addAll(pubkeys);
    }
    if (signatures != null) {
      _result.signatures.addAll(signatures);
    }
    if (m != null) {
      _result.m = m;
    }
    if (nodes != null) {
      _result.nodes.addAll(nodes);
    }
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (pubkeysOrder != null) {
      _result.pubkeysOrder = pubkeysOrder;
    }
    return _result;
  }
  factory MultisigRedeemScriptType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultisigRedeemScriptType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultisigRedeemScriptType clone() => MultisigRedeemScriptType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultisigRedeemScriptType copyWith(void Function(MultisigRedeemScriptType) updates) => super.copyWith((message) => updates(message as MultisigRedeemScriptType)) as MultisigRedeemScriptType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MultisigRedeemScriptType create() => MultisigRedeemScriptType._();
  MultisigRedeemScriptType createEmptyInstance() => create();
  static $pb.PbList<MultisigRedeemScriptType> createRepeated() => $pb.PbList<MultisigRedeemScriptType>();
  @$core.pragma('dart2js:noInline')
  static MultisigRedeemScriptType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultisigRedeemScriptType>(create);
  static MultisigRedeemScriptType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MultisigRedeemScriptType_HDNodePathType> get pubkeys => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get signatures => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get m => $_getIZ(2);
  @$pb.TagNumber(3)
  set m($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasM() => $_has(2);
  @$pb.TagNumber(3)
  void clearM() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$0.HDNodeType> get nodes => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get addressN => $_getList(4);

  @$pb.TagNumber(6)
  MultisigPubkeysOrder get pubkeysOrder => $_getN(5);
  @$pb.TagNumber(6)
  set pubkeysOrder(MultisigPubkeysOrder v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPubkeysOrder() => $_has(5);
  @$pb.TagNumber(6)
  void clearPubkeysOrder() => clearField(6);
}

class GetPublicKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPublicKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ecdsaCurveName')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'showDisplay')
    ..a<$core.String>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinName', $pb.PbFieldType.OS, defaultOrMaker: 'Bitcoin')
    ..e<InputScriptType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptType', $pb.PbFieldType.OE, defaultOrMaker: InputScriptType.SPENDADDRESS, valueOf: InputScriptType.valueOf, enumValues: InputScriptType.values)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignoreXpubMagic')
    ..hasRequiredFields = false
  ;

  GetPublicKey._() : super();
  factory GetPublicKey({
    $core.Iterable<$core.int>? addressN,
    $core.String? ecdsaCurveName,
    $core.bool? showDisplay,
    $core.String? coinName,
    InputScriptType? scriptType,
    $core.bool? ignoreXpubMagic,
  }) {
    final _result = create();
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (ecdsaCurveName != null) {
      _result.ecdsaCurveName = ecdsaCurveName;
    }
    if (showDisplay != null) {
      _result.showDisplay = showDisplay;
    }
    if (coinName != null) {
      _result.coinName = coinName;
    }
    if (scriptType != null) {
      _result.scriptType = scriptType;
    }
    if (ignoreXpubMagic != null) {
      _result.ignoreXpubMagic = ignoreXpubMagic;
    }
    return _result;
  }
  factory GetPublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPublicKey clone() => GetPublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPublicKey copyWith(void Function(GetPublicKey) updates) => super.copyWith((message) => updates(message as GetPublicKey)) as GetPublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPublicKey create() => GetPublicKey._();
  GetPublicKey createEmptyInstance() => create();
  static $pb.PbList<GetPublicKey> createRepeated() => $pb.PbList<GetPublicKey>();
  @$core.pragma('dart2js:noInline')
  static GetPublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPublicKey>(create);
  static GetPublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get addressN => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get ecdsaCurveName => $_getSZ(1);
  @$pb.TagNumber(2)
  set ecdsaCurveName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEcdsaCurveName() => $_has(1);
  @$pb.TagNumber(2)
  void clearEcdsaCurveName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get showDisplay => $_getBF(2);
  @$pb.TagNumber(3)
  set showDisplay($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShowDisplay() => $_has(2);
  @$pb.TagNumber(3)
  void clearShowDisplay() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get coinName => $_getS(3, 'Bitcoin');
  @$pb.TagNumber(4)
  set coinName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCoinName() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoinName() => clearField(4);

  @$pb.TagNumber(5)
  InputScriptType get scriptType => $_getN(4);
  @$pb.TagNumber(5)
  set scriptType(InputScriptType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasScriptType() => $_has(4);
  @$pb.TagNumber(5)
  void clearScriptType() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get ignoreXpubMagic => $_getBF(5);
  @$pb.TagNumber(6)
  set ignoreXpubMagic($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIgnoreXpubMagic() => $_has(5);
  @$pb.TagNumber(6)
  void clearIgnoreXpubMagic() => clearField(6);
}

class PublicKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublicKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQM<$0.HDNodeType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'node', subBuilder: $0.HDNodeType.create)
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'xpub')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rootFingerprint', $pb.PbFieldType.OU3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'descriptor')
  ;

  PublicKey._() : super();
  factory PublicKey({
    $0.HDNodeType? node,
    $core.String? xpub,
    $core.int? rootFingerprint,
    $core.String? descriptor,
  }) {
    final _result = create();
    if (node != null) {
      _result.node = node;
    }
    if (xpub != null) {
      _result.xpub = xpub;
    }
    if (rootFingerprint != null) {
      _result.rootFingerprint = rootFingerprint;
    }
    if (descriptor != null) {
      _result.descriptor = descriptor;
    }
    return _result;
  }
  factory PublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublicKey clone() => PublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublicKey copyWith(void Function(PublicKey) updates) => super.copyWith((message) => updates(message as PublicKey)) as PublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublicKey create() => PublicKey._();
  PublicKey createEmptyInstance() => create();
  static $pb.PbList<PublicKey> createRepeated() => $pb.PbList<PublicKey>();
  @$core.pragma('dart2js:noInline')
  static PublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublicKey>(create);
  static PublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $0.HDNodeType get node => $_getN(0);
  @$pb.TagNumber(1)
  set node($0.HDNodeType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNode() => $_has(0);
  @$pb.TagNumber(1)
  void clearNode() => clearField(1);
  @$pb.TagNumber(1)
  $0.HDNodeType ensureNode() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get xpub => $_getSZ(1);
  @$pb.TagNumber(2)
  set xpub($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasXpub() => $_has(1);
  @$pb.TagNumber(2)
  void clearXpub() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get rootFingerprint => $_getIZ(2);
  @$pb.TagNumber(3)
  set rootFingerprint($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRootFingerprint() => $_has(2);
  @$pb.TagNumber(3)
  void clearRootFingerprint() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get descriptor => $_getSZ(3);
  @$pb.TagNumber(4)
  set descriptor($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescriptor() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescriptor() => clearField(4);
}

class GetAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAddress', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..a<$core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinName', $pb.PbFieldType.OS, defaultOrMaker: 'Bitcoin')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'showDisplay')
    ..aOM<MultisigRedeemScriptType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multisig', subBuilder: MultisigRedeemScriptType.create)
    ..e<InputScriptType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptType', $pb.PbFieldType.OE, defaultOrMaker: InputScriptType.SPENDADDRESS, valueOf: InputScriptType.valueOf, enumValues: InputScriptType.values)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignoreXpubMagic')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunkify')
  ;

  GetAddress._() : super();
  factory GetAddress({
    $core.Iterable<$core.int>? addressN,
    $core.String? coinName,
    $core.bool? showDisplay,
    MultisigRedeemScriptType? multisig,
    InputScriptType? scriptType,
    $core.bool? ignoreXpubMagic,
    $core.bool? chunkify,
  }) {
    final _result = create();
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (coinName != null) {
      _result.coinName = coinName;
    }
    if (showDisplay != null) {
      _result.showDisplay = showDisplay;
    }
    if (multisig != null) {
      _result.multisig = multisig;
    }
    if (scriptType != null) {
      _result.scriptType = scriptType;
    }
    if (ignoreXpubMagic != null) {
      _result.ignoreXpubMagic = ignoreXpubMagic;
    }
    if (chunkify != null) {
      _result.chunkify = chunkify;
    }
    return _result;
  }
  factory GetAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAddress clone() => GetAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAddress copyWith(void Function(GetAddress) updates) => super.copyWith((message) => updates(message as GetAddress)) as GetAddress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAddress create() => GetAddress._();
  GetAddress createEmptyInstance() => create();
  static $pb.PbList<GetAddress> createRepeated() => $pb.PbList<GetAddress>();
  @$core.pragma('dart2js:noInline')
  static GetAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAddress>(create);
  static GetAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get addressN => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get coinName => $_getS(1, 'Bitcoin');
  @$pb.TagNumber(2)
  set coinName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoinName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoinName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get showDisplay => $_getBF(2);
  @$pb.TagNumber(3)
  set showDisplay($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShowDisplay() => $_has(2);
  @$pb.TagNumber(3)
  void clearShowDisplay() => clearField(3);

  @$pb.TagNumber(4)
  MultisigRedeemScriptType get multisig => $_getN(3);
  @$pb.TagNumber(4)
  set multisig(MultisigRedeemScriptType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMultisig() => $_has(3);
  @$pb.TagNumber(4)
  void clearMultisig() => clearField(4);
  @$pb.TagNumber(4)
  MultisigRedeemScriptType ensureMultisig() => $_ensure(3);

  @$pb.TagNumber(5)
  InputScriptType get scriptType => $_getN(4);
  @$pb.TagNumber(5)
  set scriptType(InputScriptType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasScriptType() => $_has(4);
  @$pb.TagNumber(5)
  void clearScriptType() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get ignoreXpubMagic => $_getBF(5);
  @$pb.TagNumber(6)
  set ignoreXpubMagic($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIgnoreXpubMagic() => $_has(5);
  @$pb.TagNumber(6)
  void clearIgnoreXpubMagic() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get chunkify => $_getBF(6);
  @$pb.TagNumber(7)
  set chunkify($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasChunkify() => $_has(6);
  @$pb.TagNumber(7)
  void clearChunkify() => clearField(7);
}

class Address extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Address', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mac', $pb.PbFieldType.OY)
  ;

  Address._() : super();
  factory Address({
    $core.String? address,
    $core.List<$core.int>? mac,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (mac != null) {
      _result.mac = mac;
    }
    return _result;
  }
  factory Address.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Address.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Address clone() => Address()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Address copyWith(void Function(Address) updates) => super.copyWith((message) => updates(message as Address)) as Address; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Address create() => Address._();
  Address createEmptyInstance() => create();
  static $pb.PbList<Address> createRepeated() => $pb.PbList<Address>();
  @$core.pragma('dart2js:noInline')
  static Address getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Address>(create);
  static Address? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get mac => $_getN(1);
  @$pb.TagNumber(2)
  set mac($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMac() => $_has(1);
  @$pb.TagNumber(2)
  void clearMac() => clearField(2);
}

class GetOwnershipId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOwnershipId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..a<$core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinName', $pb.PbFieldType.OS, defaultOrMaker: 'Bitcoin')
    ..aOM<MultisigRedeemScriptType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multisig', subBuilder: MultisigRedeemScriptType.create)
    ..e<InputScriptType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptType', $pb.PbFieldType.OE, defaultOrMaker: InputScriptType.SPENDADDRESS, valueOf: InputScriptType.valueOf, enumValues: InputScriptType.values)
  ;

  GetOwnershipId._() : super();
  factory GetOwnershipId({
    $core.Iterable<$core.int>? addressN,
    $core.String? coinName,
    MultisigRedeemScriptType? multisig,
    InputScriptType? scriptType,
  }) {
    final _result = create();
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (coinName != null) {
      _result.coinName = coinName;
    }
    if (multisig != null) {
      _result.multisig = multisig;
    }
    if (scriptType != null) {
      _result.scriptType = scriptType;
    }
    return _result;
  }
  factory GetOwnershipId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOwnershipId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOwnershipId clone() => GetOwnershipId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOwnershipId copyWith(void Function(GetOwnershipId) updates) => super.copyWith((message) => updates(message as GetOwnershipId)) as GetOwnershipId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOwnershipId create() => GetOwnershipId._();
  GetOwnershipId createEmptyInstance() => create();
  static $pb.PbList<GetOwnershipId> createRepeated() => $pb.PbList<GetOwnershipId>();
  @$core.pragma('dart2js:noInline')
  static GetOwnershipId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOwnershipId>(create);
  static GetOwnershipId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get addressN => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get coinName => $_getS(1, 'Bitcoin');
  @$pb.TagNumber(2)
  set coinName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoinName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoinName() => clearField(2);

  @$pb.TagNumber(3)
  MultisigRedeemScriptType get multisig => $_getN(2);
  @$pb.TagNumber(3)
  set multisig(MultisigRedeemScriptType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMultisig() => $_has(2);
  @$pb.TagNumber(3)
  void clearMultisig() => clearField(3);
  @$pb.TagNumber(3)
  MultisigRedeemScriptType ensureMultisig() => $_ensure(2);

  @$pb.TagNumber(4)
  InputScriptType get scriptType => $_getN(3);
  @$pb.TagNumber(4)
  set scriptType(InputScriptType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasScriptType() => $_has(3);
  @$pb.TagNumber(4)
  void clearScriptType() => clearField(4);
}

class OwnershipId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OwnershipId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownershipId', $pb.PbFieldType.QY)
  ;

  OwnershipId._() : super();
  factory OwnershipId({
    $core.List<$core.int>? ownershipId,
  }) {
    final _result = create();
    if (ownershipId != null) {
      _result.ownershipId = ownershipId;
    }
    return _result;
  }
  factory OwnershipId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OwnershipId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OwnershipId clone() => OwnershipId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OwnershipId copyWith(void Function(OwnershipId) updates) => super.copyWith((message) => updates(message as OwnershipId)) as OwnershipId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OwnershipId create() => OwnershipId._();
  OwnershipId createEmptyInstance() => create();
  static $pb.PbList<OwnershipId> createRepeated() => $pb.PbList<OwnershipId>();
  @$core.pragma('dart2js:noInline')
  static OwnershipId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OwnershipId>(create);
  static OwnershipId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get ownershipId => $_getN(0);
  @$pb.TagNumber(1)
  set ownershipId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOwnershipId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwnershipId() => clearField(1);
}

class SignMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', $pb.PbFieldType.QY)
    ..a<$core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinName', $pb.PbFieldType.OS, defaultOrMaker: 'Bitcoin')
    ..e<InputScriptType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptType', $pb.PbFieldType.OE, defaultOrMaker: InputScriptType.SPENDADDRESS, valueOf: InputScriptType.valueOf, enumValues: InputScriptType.values)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noScriptType')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunkify')
  ;

  SignMessage._() : super();
  factory SignMessage({
    $core.Iterable<$core.int>? addressN,
    $core.List<$core.int>? message,
    $core.String? coinName,
    InputScriptType? scriptType,
    $core.bool? noScriptType,
    $core.bool? chunkify,
  }) {
    final _result = create();
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (message != null) {
      _result.message = message;
    }
    if (coinName != null) {
      _result.coinName = coinName;
    }
    if (scriptType != null) {
      _result.scriptType = scriptType;
    }
    if (noScriptType != null) {
      _result.noScriptType = noScriptType;
    }
    if (chunkify != null) {
      _result.chunkify = chunkify;
    }
    return _result;
  }
  factory SignMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignMessage clone() => SignMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignMessage copyWith(void Function(SignMessage) updates) => super.copyWith((message) => updates(message as SignMessage)) as SignMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignMessage create() => SignMessage._();
  SignMessage createEmptyInstance() => create();
  static $pb.PbList<SignMessage> createRepeated() => $pb.PbList<SignMessage>();
  @$core.pragma('dart2js:noInline')
  static SignMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignMessage>(create);
  static SignMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get addressN => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get message => $_getN(1);
  @$pb.TagNumber(2)
  set message($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get coinName => $_getS(2, 'Bitcoin');
  @$pb.TagNumber(3)
  set coinName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCoinName() => $_has(2);
  @$pb.TagNumber(3)
  void clearCoinName() => clearField(3);

  @$pb.TagNumber(4)
  InputScriptType get scriptType => $_getN(3);
  @$pb.TagNumber(4)
  set scriptType(InputScriptType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasScriptType() => $_has(3);
  @$pb.TagNumber(4)
  void clearScriptType() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get noScriptType => $_getBF(4);
  @$pb.TagNumber(5)
  set noScriptType($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNoScriptType() => $_has(4);
  @$pb.TagNumber(5)
  void clearNoScriptType() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get chunkify => $_getBF(5);
  @$pb.TagNumber(6)
  set chunkify($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasChunkify() => $_has(5);
  @$pb.TagNumber(6)
  void clearChunkify() => clearField(6);
}

class MessageSignature extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageSignature', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.QY)
  ;

  MessageSignature._() : super();
  factory MessageSignature({
    $core.String? address,
    $core.List<$core.int>? signature,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory MessageSignature.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageSignature.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageSignature clone() => MessageSignature()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageSignature copyWith(void Function(MessageSignature) updates) => super.copyWith((message) => updates(message as MessageSignature)) as MessageSignature; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageSignature create() => MessageSignature._();
  MessageSignature createEmptyInstance() => create();
  static $pb.PbList<MessageSignature> createRepeated() => $pb.PbList<MessageSignature>();
  @$core.pragma('dart2js:noInline')
  static MessageSignature getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageSignature>(create);
  static MessageSignature? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
}

class VerifyMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', $pb.PbFieldType.QY)
    ..a<$core.String>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinName', $pb.PbFieldType.OS, defaultOrMaker: 'Bitcoin')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunkify')
  ;

  VerifyMessage._() : super();
  factory VerifyMessage({
    $core.String? address,
    $core.List<$core.int>? signature,
    $core.List<$core.int>? message,
    $core.String? coinName,
    $core.bool? chunkify,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    if (message != null) {
      _result.message = message;
    }
    if (coinName != null) {
      _result.coinName = coinName;
    }
    if (chunkify != null) {
      _result.chunkify = chunkify;
    }
    return _result;
  }
  factory VerifyMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyMessage clone() => VerifyMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyMessage copyWith(void Function(VerifyMessage) updates) => super.copyWith((message) => updates(message as VerifyMessage)) as VerifyMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyMessage create() => VerifyMessage._();
  VerifyMessage createEmptyInstance() => create();
  static $pb.PbList<VerifyMessage> createRepeated() => $pb.PbList<VerifyMessage>();
  @$core.pragma('dart2js:noInline')
  static VerifyMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyMessage>(create);
  static VerifyMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get message => $_getN(2);
  @$pb.TagNumber(3)
  set message($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get coinName => $_getS(3, 'Bitcoin');
  @$pb.TagNumber(4)
  set coinName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCoinName() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoinName() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get chunkify => $_getBF(4);
  @$pb.TagNumber(5)
  set chunkify($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasChunkify() => $_has(4);
  @$pb.TagNumber(5)
  void clearChunkify() => clearField(5);
}

class SignTx_CoinJoinRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignTx.CoinJoinRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeRate', $pb.PbFieldType.QU3)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noFeeThreshold', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minRegistrableAmount', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maskPublicKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.OY)
  ;

  SignTx_CoinJoinRequest._() : super();
  factory SignTx_CoinJoinRequest({
    $core.int? feeRate,
    $fixnum.Int64? noFeeThreshold,
    $fixnum.Int64? minRegistrableAmount,
    $core.List<$core.int>? maskPublicKey,
    $core.List<$core.int>? signature,
  }) {
    final _result = create();
    if (feeRate != null) {
      _result.feeRate = feeRate;
    }
    if (noFeeThreshold != null) {
      _result.noFeeThreshold = noFeeThreshold;
    }
    if (minRegistrableAmount != null) {
      _result.minRegistrableAmount = minRegistrableAmount;
    }
    if (maskPublicKey != null) {
      _result.maskPublicKey = maskPublicKey;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory SignTx_CoinJoinRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignTx_CoinJoinRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignTx_CoinJoinRequest clone() => SignTx_CoinJoinRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignTx_CoinJoinRequest copyWith(void Function(SignTx_CoinJoinRequest) updates) => super.copyWith((message) => updates(message as SignTx_CoinJoinRequest)) as SignTx_CoinJoinRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignTx_CoinJoinRequest create() => SignTx_CoinJoinRequest._();
  SignTx_CoinJoinRequest createEmptyInstance() => create();
  static $pb.PbList<SignTx_CoinJoinRequest> createRepeated() => $pb.PbList<SignTx_CoinJoinRequest>();
  @$core.pragma('dart2js:noInline')
  static SignTx_CoinJoinRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignTx_CoinJoinRequest>(create);
  static SignTx_CoinJoinRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get feeRate => $_getIZ(0);
  @$pb.TagNumber(1)
  set feeRate($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeeRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeeRate() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get noFeeThreshold => $_getI64(1);
  @$pb.TagNumber(2)
  set noFeeThreshold($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNoFeeThreshold() => $_has(1);
  @$pb.TagNumber(2)
  void clearNoFeeThreshold() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get minRegistrableAmount => $_getI64(2);
  @$pb.TagNumber(3)
  set minRegistrableAmount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMinRegistrableAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinRegistrableAmount() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get maskPublicKey => $_getN(3);
  @$pb.TagNumber(4)
  set maskPublicKey($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaskPublicKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaskPublicKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get signature => $_getN(4);
  @$pb.TagNumber(5)
  set signature($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSignature() => $_has(4);
  @$pb.TagNumber(5)
  void clearSignature() => clearField(5);
}

class SignTx extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignTx', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputsCount', $pb.PbFieldType.QU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputsCount', $pb.PbFieldType.QU3)
    ..a<$core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinName', $pb.PbFieldType.OS, defaultOrMaker: 'Bitcoin')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.OU3, defaultOrMaker: 1)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lockTime', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiry', $pb.PbFieldType.OU3)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'overwintered')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'versionGroupId', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'branchId', $pb.PbFieldType.OU3)
    ..e<AmountUnit>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountUnit', $pb.PbFieldType.OE, defaultOrMaker: AmountUnit.BITCOIN, valueOf: AmountUnit.valueOf, enumValues: AmountUnit.values)
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decredStakingTicket')
    ..a<$core.bool>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serialize', $pb.PbFieldType.OB, defaultOrMaker: true)
    ..aOM<SignTx_CoinJoinRequest>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinjoinRequest', subBuilder: SignTx_CoinJoinRequest.create)
    ..aOB(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunkify')
  ;

  SignTx._() : super();
  factory SignTx({
    $core.int? outputsCount,
    $core.int? inputsCount,
    $core.String? coinName,
    $core.int? version,
    $core.int? lockTime,
    $core.int? expiry,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? overwintered,
    $core.int? versionGroupId,
    $core.int? timestamp,
    $core.int? branchId,
    AmountUnit? amountUnit,
    $core.bool? decredStakingTicket,
    $core.bool? serialize,
    SignTx_CoinJoinRequest? coinjoinRequest,
    $core.bool? chunkify,
  }) {
    final _result = create();
    if (outputsCount != null) {
      _result.outputsCount = outputsCount;
    }
    if (inputsCount != null) {
      _result.inputsCount = inputsCount;
    }
    if (coinName != null) {
      _result.coinName = coinName;
    }
    if (version != null) {
      _result.version = version;
    }
    if (lockTime != null) {
      _result.lockTime = lockTime;
    }
    if (expiry != null) {
      _result.expiry = expiry;
    }
    if (overwintered != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.overwintered = overwintered;
    }
    if (versionGroupId != null) {
      _result.versionGroupId = versionGroupId;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (branchId != null) {
      _result.branchId = branchId;
    }
    if (amountUnit != null) {
      _result.amountUnit = amountUnit;
    }
    if (decredStakingTicket != null) {
      _result.decredStakingTicket = decredStakingTicket;
    }
    if (serialize != null) {
      _result.serialize = serialize;
    }
    if (coinjoinRequest != null) {
      _result.coinjoinRequest = coinjoinRequest;
    }
    if (chunkify != null) {
      _result.chunkify = chunkify;
    }
    return _result;
  }
  factory SignTx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignTx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignTx clone() => SignTx()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignTx copyWith(void Function(SignTx) updates) => super.copyWith((message) => updates(message as SignTx)) as SignTx; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignTx create() => SignTx._();
  SignTx createEmptyInstance() => create();
  static $pb.PbList<SignTx> createRepeated() => $pb.PbList<SignTx>();
  @$core.pragma('dart2js:noInline')
  static SignTx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignTx>(create);
  static SignTx? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get outputsCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set outputsCount($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOutputsCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearOutputsCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get inputsCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set inputsCount($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInputsCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearInputsCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get coinName => $_getS(2, 'Bitcoin');
  @$pb.TagNumber(3)
  set coinName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCoinName() => $_has(2);
  @$pb.TagNumber(3)
  void clearCoinName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get version => $_getI(3, 1);
  @$pb.TagNumber(4)
  set version($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get lockTime => $_getIZ(4);
  @$pb.TagNumber(5)
  set lockTime($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLockTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearLockTime() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get expiry => $_getIZ(5);
  @$pb.TagNumber(6)
  set expiry($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasExpiry() => $_has(5);
  @$pb.TagNumber(6)
  void clearExpiry() => clearField(6);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  $core.bool get overwintered => $_getBF(6);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  set overwintered($core.bool v) { $_setBool(6, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  $core.bool hasOverwintered() => $_has(6);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  void clearOverwintered() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get versionGroupId => $_getIZ(7);
  @$pb.TagNumber(8)
  set versionGroupId($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasVersionGroupId() => $_has(7);
  @$pb.TagNumber(8)
  void clearVersionGroupId() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get timestamp => $_getIZ(8);
  @$pb.TagNumber(9)
  set timestamp($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTimestamp() => $_has(8);
  @$pb.TagNumber(9)
  void clearTimestamp() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get branchId => $_getIZ(9);
  @$pb.TagNumber(10)
  set branchId($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBranchId() => $_has(9);
  @$pb.TagNumber(10)
  void clearBranchId() => clearField(10);

  @$pb.TagNumber(11)
  AmountUnit get amountUnit => $_getN(10);
  @$pb.TagNumber(11)
  set amountUnit(AmountUnit v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasAmountUnit() => $_has(10);
  @$pb.TagNumber(11)
  void clearAmountUnit() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get decredStakingTicket => $_getBF(11);
  @$pb.TagNumber(12)
  set decredStakingTicket($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasDecredStakingTicket() => $_has(11);
  @$pb.TagNumber(12)
  void clearDecredStakingTicket() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get serialize => $_getB(12, true);
  @$pb.TagNumber(13)
  set serialize($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSerialize() => $_has(12);
  @$pb.TagNumber(13)
  void clearSerialize() => clearField(13);

  @$pb.TagNumber(14)
  SignTx_CoinJoinRequest get coinjoinRequest => $_getN(13);
  @$pb.TagNumber(14)
  set coinjoinRequest(SignTx_CoinJoinRequest v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasCoinjoinRequest() => $_has(13);
  @$pb.TagNumber(14)
  void clearCoinjoinRequest() => clearField(14);
  @$pb.TagNumber(14)
  SignTx_CoinJoinRequest ensureCoinjoinRequest() => $_ensure(13);

  @$pb.TagNumber(15)
  $core.bool get chunkify => $_getBF(14);
  @$pb.TagNumber(15)
  set chunkify($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasChunkify() => $_has(14);
  @$pb.TagNumber(15)
  void clearChunkify() => clearField(15);
}

class TxRequest_TxRequestDetailsType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxRequest.TxRequestDetailsType', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestIndex', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txHash', $pb.PbFieldType.OY)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraDataLen', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraDataOffset', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  TxRequest_TxRequestDetailsType._() : super();
  factory TxRequest_TxRequestDetailsType({
    $core.int? requestIndex,
    $core.List<$core.int>? txHash,
    $core.int? extraDataLen,
    $core.int? extraDataOffset,
  }) {
    final _result = create();
    if (requestIndex != null) {
      _result.requestIndex = requestIndex;
    }
    if (txHash != null) {
      _result.txHash = txHash;
    }
    if (extraDataLen != null) {
      _result.extraDataLen = extraDataLen;
    }
    if (extraDataOffset != null) {
      _result.extraDataOffset = extraDataOffset;
    }
    return _result;
  }
  factory TxRequest_TxRequestDetailsType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxRequest_TxRequestDetailsType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxRequest_TxRequestDetailsType clone() => TxRequest_TxRequestDetailsType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxRequest_TxRequestDetailsType copyWith(void Function(TxRequest_TxRequestDetailsType) updates) => super.copyWith((message) => updates(message as TxRequest_TxRequestDetailsType)) as TxRequest_TxRequestDetailsType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxRequest_TxRequestDetailsType create() => TxRequest_TxRequestDetailsType._();
  TxRequest_TxRequestDetailsType createEmptyInstance() => create();
  static $pb.PbList<TxRequest_TxRequestDetailsType> createRepeated() => $pb.PbList<TxRequest_TxRequestDetailsType>();
  @$core.pragma('dart2js:noInline')
  static TxRequest_TxRequestDetailsType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxRequest_TxRequestDetailsType>(create);
  static TxRequest_TxRequestDetailsType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get requestIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set requestIndex($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get txHash => $_getN(1);
  @$pb.TagNumber(2)
  set txHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxHash() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get extraDataLen => $_getIZ(2);
  @$pb.TagNumber(3)
  set extraDataLen($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExtraDataLen() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtraDataLen() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get extraDataOffset => $_getIZ(3);
  @$pb.TagNumber(4)
  set extraDataOffset($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExtraDataOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearExtraDataOffset() => clearField(4);
}

class TxRequest_TxRequestSerializedType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxRequest.TxRequestSerializedType', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signatureIndex', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serializedTx', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  TxRequest_TxRequestSerializedType._() : super();
  factory TxRequest_TxRequestSerializedType({
    $core.int? signatureIndex,
    $core.List<$core.int>? signature,
    $core.List<$core.int>? serializedTx,
  }) {
    final _result = create();
    if (signatureIndex != null) {
      _result.signatureIndex = signatureIndex;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    if (serializedTx != null) {
      _result.serializedTx = serializedTx;
    }
    return _result;
  }
  factory TxRequest_TxRequestSerializedType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxRequest_TxRequestSerializedType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxRequest_TxRequestSerializedType clone() => TxRequest_TxRequestSerializedType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxRequest_TxRequestSerializedType copyWith(void Function(TxRequest_TxRequestSerializedType) updates) => super.copyWith((message) => updates(message as TxRequest_TxRequestSerializedType)) as TxRequest_TxRequestSerializedType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxRequest_TxRequestSerializedType create() => TxRequest_TxRequestSerializedType._();
  TxRequest_TxRequestSerializedType createEmptyInstance() => create();
  static $pb.PbList<TxRequest_TxRequestSerializedType> createRepeated() => $pb.PbList<TxRequest_TxRequestSerializedType>();
  @$core.pragma('dart2js:noInline')
  static TxRequest_TxRequestSerializedType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxRequest_TxRequestSerializedType>(create);
  static TxRequest_TxRequestSerializedType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get signatureIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set signatureIndex($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignatureIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignatureIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get serializedTx => $_getN(2);
  @$pb.TagNumber(3)
  set serializedTx($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSerializedTx() => $_has(2);
  @$pb.TagNumber(3)
  void clearSerializedTx() => clearField(3);
}

class TxRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..e<TxRequest_RequestType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestType', $pb.PbFieldType.OE, defaultOrMaker: TxRequest_RequestType.TXINPUT, valueOf: TxRequest_RequestType.valueOf, enumValues: TxRequest_RequestType.values)
    ..aOM<TxRequest_TxRequestDetailsType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'details', subBuilder: TxRequest_TxRequestDetailsType.create)
    ..aOM<TxRequest_TxRequestSerializedType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serialized', subBuilder: TxRequest_TxRequestSerializedType.create)
    ..hasRequiredFields = false
  ;

  TxRequest._() : super();
  factory TxRequest({
    TxRequest_RequestType? requestType,
    TxRequest_TxRequestDetailsType? details,
    TxRequest_TxRequestSerializedType? serialized,
  }) {
    final _result = create();
    if (requestType != null) {
      _result.requestType = requestType;
    }
    if (details != null) {
      _result.details = details;
    }
    if (serialized != null) {
      _result.serialized = serialized;
    }
    return _result;
  }
  factory TxRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxRequest clone() => TxRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxRequest copyWith(void Function(TxRequest) updates) => super.copyWith((message) => updates(message as TxRequest)) as TxRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxRequest create() => TxRequest._();
  TxRequest createEmptyInstance() => create();
  static $pb.PbList<TxRequest> createRepeated() => $pb.PbList<TxRequest>();
  @$core.pragma('dart2js:noInline')
  static TxRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxRequest>(create);
  static TxRequest? _defaultInstance;

  @$pb.TagNumber(1)
  TxRequest_RequestType get requestType => $_getN(0);
  @$pb.TagNumber(1)
  set requestType(TxRequest_RequestType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestType() => clearField(1);

  @$pb.TagNumber(2)
  TxRequest_TxRequestDetailsType get details => $_getN(1);
  @$pb.TagNumber(2)
  set details(TxRequest_TxRequestDetailsType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearDetails() => clearField(2);
  @$pb.TagNumber(2)
  TxRequest_TxRequestDetailsType ensureDetails() => $_ensure(1);

  @$pb.TagNumber(3)
  TxRequest_TxRequestSerializedType get serialized => $_getN(2);
  @$pb.TagNumber(3)
  set serialized(TxRequest_TxRequestSerializedType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSerialized() => $_has(2);
  @$pb.TagNumber(3)
  void clearSerialized() => clearField(3);
  @$pb.TagNumber(3)
  TxRequest_TxRequestSerializedType ensureSerialized() => $_ensure(2);
}

class TxAck_TransactionType_TxInputType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAck.TransactionType.TxInputType', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prevHash', $pb.PbFieldType.QY)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prevIndex', $pb.PbFieldType.QU3)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptSig', $pb.PbFieldType.OY)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequence', $pb.PbFieldType.OU3, defaultOrMaker: 4294967295)
    ..e<InputScriptType>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptType', $pb.PbFieldType.OE, defaultOrMaker: InputScriptType.SPENDADDRESS, valueOf: InputScriptType.valueOf, enumValues: InputScriptType.values)
    ..aOM<MultisigRedeemScriptType>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multisig', subBuilder: MultisigRedeemScriptType.create)
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decredTree', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'witness', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownershipProof', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitmentData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'origHash', $pb.PbFieldType.OY)
    ..a<$core.int>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'origIndex', $pb.PbFieldType.OU3)
    ..e<DecredStakingSpendType>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decredStakingSpend', $pb.PbFieldType.OE, defaultOrMaker: DecredStakingSpendType.SSGen, valueOf: DecredStakingSpendType.valueOf, enumValues: DecredStakingSpendType.values)
    ..a<$core.List<$core.int>>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptPubkey', $pb.PbFieldType.OY)
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinjoinFlags', $pb.PbFieldType.OU3)
  ;

  TxAck_TransactionType_TxInputType._() : super();
  factory TxAck_TransactionType_TxInputType({
    $core.Iterable<$core.int>? addressN,
    $core.List<$core.int>? prevHash,
    $core.int? prevIndex,
    $core.List<$core.int>? scriptSig,
    $core.int? sequence,
    InputScriptType? scriptType,
    MultisigRedeemScriptType? multisig,
    $fixnum.Int64? amount,
    $core.int? decredTree,
    $core.List<$core.int>? witness,
    $core.List<$core.int>? ownershipProof,
    $core.List<$core.int>? commitmentData,
    $core.List<$core.int>? origHash,
    $core.int? origIndex,
    DecredStakingSpendType? decredStakingSpend,
    $core.List<$core.int>? scriptPubkey,
    $core.int? coinjoinFlags,
  }) {
    final _result = create();
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (prevHash != null) {
      _result.prevHash = prevHash;
    }
    if (prevIndex != null) {
      _result.prevIndex = prevIndex;
    }
    if (scriptSig != null) {
      _result.scriptSig = scriptSig;
    }
    if (sequence != null) {
      _result.sequence = sequence;
    }
    if (scriptType != null) {
      _result.scriptType = scriptType;
    }
    if (multisig != null) {
      _result.multisig = multisig;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (decredTree != null) {
      _result.decredTree = decredTree;
    }
    if (witness != null) {
      _result.witness = witness;
    }
    if (ownershipProof != null) {
      _result.ownershipProof = ownershipProof;
    }
    if (commitmentData != null) {
      _result.commitmentData = commitmentData;
    }
    if (origHash != null) {
      _result.origHash = origHash;
    }
    if (origIndex != null) {
      _result.origIndex = origIndex;
    }
    if (decredStakingSpend != null) {
      _result.decredStakingSpend = decredStakingSpend;
    }
    if (scriptPubkey != null) {
      _result.scriptPubkey = scriptPubkey;
    }
    if (coinjoinFlags != null) {
      _result.coinjoinFlags = coinjoinFlags;
    }
    return _result;
  }
  factory TxAck_TransactionType_TxInputType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAck_TransactionType_TxInputType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAck_TransactionType_TxInputType clone() => TxAck_TransactionType_TxInputType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAck_TransactionType_TxInputType copyWith(void Function(TxAck_TransactionType_TxInputType) updates) => super.copyWith((message) => updates(message as TxAck_TransactionType_TxInputType)) as TxAck_TransactionType_TxInputType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAck_TransactionType_TxInputType create() => TxAck_TransactionType_TxInputType._();
  TxAck_TransactionType_TxInputType createEmptyInstance() => create();
  static $pb.PbList<TxAck_TransactionType_TxInputType> createRepeated() => $pb.PbList<TxAck_TransactionType_TxInputType>();
  @$core.pragma('dart2js:noInline')
  static TxAck_TransactionType_TxInputType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAck_TransactionType_TxInputType>(create);
  static TxAck_TransactionType_TxInputType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get addressN => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get prevHash => $_getN(1);
  @$pb.TagNumber(2)
  set prevHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrevHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrevHash() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get prevIndex => $_getIZ(2);
  @$pb.TagNumber(3)
  set prevIndex($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrevIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrevIndex() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get scriptSig => $_getN(3);
  @$pb.TagNumber(4)
  set scriptSig($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasScriptSig() => $_has(3);
  @$pb.TagNumber(4)
  void clearScriptSig() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get sequence => $_getI(4, 4294967295);
  @$pb.TagNumber(5)
  set sequence($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSequence() => $_has(4);
  @$pb.TagNumber(5)
  void clearSequence() => clearField(5);

  @$pb.TagNumber(6)
  InputScriptType get scriptType => $_getN(5);
  @$pb.TagNumber(6)
  set scriptType(InputScriptType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasScriptType() => $_has(5);
  @$pb.TagNumber(6)
  void clearScriptType() => clearField(6);

  @$pb.TagNumber(7)
  MultisigRedeemScriptType get multisig => $_getN(6);
  @$pb.TagNumber(7)
  set multisig(MultisigRedeemScriptType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasMultisig() => $_has(6);
  @$pb.TagNumber(7)
  void clearMultisig() => clearField(7);
  @$pb.TagNumber(7)
  MultisigRedeemScriptType ensureMultisig() => $_ensure(6);

  @$pb.TagNumber(8)
  $fixnum.Int64 get amount => $_getI64(7);
  @$pb.TagNumber(8)
  set amount($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAmount() => $_has(7);
  @$pb.TagNumber(8)
  void clearAmount() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get decredTree => $_getIZ(8);
  @$pb.TagNumber(9)
  set decredTree($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDecredTree() => $_has(8);
  @$pb.TagNumber(9)
  void clearDecredTree() => clearField(9);

  @$pb.TagNumber(13)
  $core.List<$core.int> get witness => $_getN(9);
  @$pb.TagNumber(13)
  set witness($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(13)
  $core.bool hasWitness() => $_has(9);
  @$pb.TagNumber(13)
  void clearWitness() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.int> get ownershipProof => $_getN(10);
  @$pb.TagNumber(14)
  set ownershipProof($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(14)
  $core.bool hasOwnershipProof() => $_has(10);
  @$pb.TagNumber(14)
  void clearOwnershipProof() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<$core.int> get commitmentData => $_getN(11);
  @$pb.TagNumber(15)
  set commitmentData($core.List<$core.int> v) { $_setBytes(11, v); }
  @$pb.TagNumber(15)
  $core.bool hasCommitmentData() => $_has(11);
  @$pb.TagNumber(15)
  void clearCommitmentData() => clearField(15);

  @$pb.TagNumber(16)
  $core.List<$core.int> get origHash => $_getN(12);
  @$pb.TagNumber(16)
  set origHash($core.List<$core.int> v) { $_setBytes(12, v); }
  @$pb.TagNumber(16)
  $core.bool hasOrigHash() => $_has(12);
  @$pb.TagNumber(16)
  void clearOrigHash() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get origIndex => $_getIZ(13);
  @$pb.TagNumber(17)
  set origIndex($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(17)
  $core.bool hasOrigIndex() => $_has(13);
  @$pb.TagNumber(17)
  void clearOrigIndex() => clearField(17);

  @$pb.TagNumber(18)
  DecredStakingSpendType get decredStakingSpend => $_getN(14);
  @$pb.TagNumber(18)
  set decredStakingSpend(DecredStakingSpendType v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasDecredStakingSpend() => $_has(14);
  @$pb.TagNumber(18)
  void clearDecredStakingSpend() => clearField(18);

  @$pb.TagNumber(19)
  $core.List<$core.int> get scriptPubkey => $_getN(15);
  @$pb.TagNumber(19)
  set scriptPubkey($core.List<$core.int> v) { $_setBytes(15, v); }
  @$pb.TagNumber(19)
  $core.bool hasScriptPubkey() => $_has(15);
  @$pb.TagNumber(19)
  void clearScriptPubkey() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get coinjoinFlags => $_getIZ(16);
  @$pb.TagNumber(20)
  set coinjoinFlags($core.int v) { $_setUnsignedInt32(16, v); }
  @$pb.TagNumber(20)
  $core.bool hasCoinjoinFlags() => $_has(16);
  @$pb.TagNumber(20)
  void clearCoinjoinFlags() => clearField(20);
}

class TxAck_TransactionType_TxOutputBinType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAck.TransactionType.TxOutputBinType', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptPubkey', $pb.PbFieldType.QY)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decredScriptVersion', $pb.PbFieldType.OU3)
  ;

  TxAck_TransactionType_TxOutputBinType._() : super();
  factory TxAck_TransactionType_TxOutputBinType({
    $fixnum.Int64? amount,
    $core.List<$core.int>? scriptPubkey,
    $core.int? decredScriptVersion,
  }) {
    final _result = create();
    if (amount != null) {
      _result.amount = amount;
    }
    if (scriptPubkey != null) {
      _result.scriptPubkey = scriptPubkey;
    }
    if (decredScriptVersion != null) {
      _result.decredScriptVersion = decredScriptVersion;
    }
    return _result;
  }
  factory TxAck_TransactionType_TxOutputBinType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAck_TransactionType_TxOutputBinType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAck_TransactionType_TxOutputBinType clone() => TxAck_TransactionType_TxOutputBinType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAck_TransactionType_TxOutputBinType copyWith(void Function(TxAck_TransactionType_TxOutputBinType) updates) => super.copyWith((message) => updates(message as TxAck_TransactionType_TxOutputBinType)) as TxAck_TransactionType_TxOutputBinType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAck_TransactionType_TxOutputBinType create() => TxAck_TransactionType_TxOutputBinType._();
  TxAck_TransactionType_TxOutputBinType createEmptyInstance() => create();
  static $pb.PbList<TxAck_TransactionType_TxOutputBinType> createRepeated() => $pb.PbList<TxAck_TransactionType_TxOutputBinType>();
  @$core.pragma('dart2js:noInline')
  static TxAck_TransactionType_TxOutputBinType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAck_TransactionType_TxOutputBinType>(create);
  static TxAck_TransactionType_TxOutputBinType? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get amount => $_getI64(0);
  @$pb.TagNumber(1)
  set amount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get scriptPubkey => $_getN(1);
  @$pb.TagNumber(2)
  set scriptPubkey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScriptPubkey() => $_has(1);
  @$pb.TagNumber(2)
  void clearScriptPubkey() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get decredScriptVersion => $_getIZ(2);
  @$pb.TagNumber(3)
  set decredScriptVersion($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDecredScriptVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearDecredScriptVersion() => clearField(3);
}

class TxAck_TransactionType_TxOutputType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAck.TransactionType.TxOutputType', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<OutputScriptType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptType', $pb.PbFieldType.OE, defaultOrMaker: OutputScriptType.PAYTOADDRESS, valueOf: OutputScriptType.valueOf, enumValues: OutputScriptType.values)
    ..aOM<MultisigRedeemScriptType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multisig', subBuilder: MultisigRedeemScriptType.create)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'opReturnData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'origHash', $pb.PbFieldType.OY)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'origIndex', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentReqIndex', $pb.PbFieldType.OU3)
  ;

  TxAck_TransactionType_TxOutputType._() : super();
  factory TxAck_TransactionType_TxOutputType({
    $core.String? address,
    $core.Iterable<$core.int>? addressN,
    $fixnum.Int64? amount,
    OutputScriptType? scriptType,
    MultisigRedeemScriptType? multisig,
    $core.List<$core.int>? opReturnData,
    $core.List<$core.int>? origHash,
    $core.int? origIndex,
    $core.int? paymentReqIndex,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (scriptType != null) {
      _result.scriptType = scriptType;
    }
    if (multisig != null) {
      _result.multisig = multisig;
    }
    if (opReturnData != null) {
      _result.opReturnData = opReturnData;
    }
    if (origHash != null) {
      _result.origHash = origHash;
    }
    if (origIndex != null) {
      _result.origIndex = origIndex;
    }
    if (paymentReqIndex != null) {
      _result.paymentReqIndex = paymentReqIndex;
    }
    return _result;
  }
  factory TxAck_TransactionType_TxOutputType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAck_TransactionType_TxOutputType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAck_TransactionType_TxOutputType clone() => TxAck_TransactionType_TxOutputType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAck_TransactionType_TxOutputType copyWith(void Function(TxAck_TransactionType_TxOutputType) updates) => super.copyWith((message) => updates(message as TxAck_TransactionType_TxOutputType)) as TxAck_TransactionType_TxOutputType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAck_TransactionType_TxOutputType create() => TxAck_TransactionType_TxOutputType._();
  TxAck_TransactionType_TxOutputType createEmptyInstance() => create();
  static $pb.PbList<TxAck_TransactionType_TxOutputType> createRepeated() => $pb.PbList<TxAck_TransactionType_TxOutputType>();
  @$core.pragma('dart2js:noInline')
  static TxAck_TransactionType_TxOutputType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAck_TransactionType_TxOutputType>(create);
  static TxAck_TransactionType_TxOutputType? _defaultInstance;

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
  $fixnum.Int64 get amount => $_getI64(2);
  @$pb.TagNumber(3)
  set amount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  OutputScriptType get scriptType => $_getN(3);
  @$pb.TagNumber(4)
  set scriptType(OutputScriptType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasScriptType() => $_has(3);
  @$pb.TagNumber(4)
  void clearScriptType() => clearField(4);

  @$pb.TagNumber(5)
  MultisigRedeemScriptType get multisig => $_getN(4);
  @$pb.TagNumber(5)
  set multisig(MultisigRedeemScriptType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMultisig() => $_has(4);
  @$pb.TagNumber(5)
  void clearMultisig() => clearField(5);
  @$pb.TagNumber(5)
  MultisigRedeemScriptType ensureMultisig() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get opReturnData => $_getN(5);
  @$pb.TagNumber(6)
  set opReturnData($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOpReturnData() => $_has(5);
  @$pb.TagNumber(6)
  void clearOpReturnData() => clearField(6);

  @$pb.TagNumber(10)
  $core.List<$core.int> get origHash => $_getN(6);
  @$pb.TagNumber(10)
  set origHash($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(10)
  $core.bool hasOrigHash() => $_has(6);
  @$pb.TagNumber(10)
  void clearOrigHash() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get origIndex => $_getIZ(7);
  @$pb.TagNumber(11)
  set origIndex($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(11)
  $core.bool hasOrigIndex() => $_has(7);
  @$pb.TagNumber(11)
  void clearOrigIndex() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get paymentReqIndex => $_getIZ(8);
  @$pb.TagNumber(12)
  set paymentReqIndex($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(12)
  $core.bool hasPaymentReqIndex() => $_has(8);
  @$pb.TagNumber(12)
  void clearPaymentReqIndex() => clearField(12);
}

class TxAck_TransactionType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAck.TransactionType', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.OU3)
    ..pc<TxAck_TransactionType_TxInputType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputs', $pb.PbFieldType.PM, subBuilder: TxAck_TransactionType_TxInputType.create)
    ..pc<TxAck_TransactionType_TxOutputBinType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'binOutputs', $pb.PbFieldType.PM, subBuilder: TxAck_TransactionType_TxOutputBinType.create)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lockTime', $pb.PbFieldType.OU3)
    ..pc<TxAck_TransactionType_TxOutputType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputs', $pb.PbFieldType.PM, subBuilder: TxAck_TransactionType_TxOutputType.create)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputsCnt', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputsCnt', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraData', $pb.PbFieldType.OY)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraDataLen', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiry', $pb.PbFieldType.OU3)
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'overwintered')
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'versionGroupId', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'branchId', $pb.PbFieldType.OU3)
  ;

  TxAck_TransactionType._() : super();
  factory TxAck_TransactionType({
    $core.int? version,
    $core.Iterable<TxAck_TransactionType_TxInputType>? inputs,
    $core.Iterable<TxAck_TransactionType_TxOutputBinType>? binOutputs,
    $core.int? lockTime,
    $core.Iterable<TxAck_TransactionType_TxOutputType>? outputs,
    $core.int? inputsCnt,
    $core.int? outputsCnt,
    $core.List<$core.int>? extraData,
    $core.int? extraDataLen,
    $core.int? expiry,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? overwintered,
    $core.int? versionGroupId,
    $core.int? timestamp,
    $core.int? branchId,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (inputs != null) {
      _result.inputs.addAll(inputs);
    }
    if (binOutputs != null) {
      _result.binOutputs.addAll(binOutputs);
    }
    if (lockTime != null) {
      _result.lockTime = lockTime;
    }
    if (outputs != null) {
      _result.outputs.addAll(outputs);
    }
    if (inputsCnt != null) {
      _result.inputsCnt = inputsCnt;
    }
    if (outputsCnt != null) {
      _result.outputsCnt = outputsCnt;
    }
    if (extraData != null) {
      _result.extraData = extraData;
    }
    if (extraDataLen != null) {
      _result.extraDataLen = extraDataLen;
    }
    if (expiry != null) {
      _result.expiry = expiry;
    }
    if (overwintered != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.overwintered = overwintered;
    }
    if (versionGroupId != null) {
      _result.versionGroupId = versionGroupId;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (branchId != null) {
      _result.branchId = branchId;
    }
    return _result;
  }
  factory TxAck_TransactionType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAck_TransactionType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAck_TransactionType clone() => TxAck_TransactionType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAck_TransactionType copyWith(void Function(TxAck_TransactionType) updates) => super.copyWith((message) => updates(message as TxAck_TransactionType)) as TxAck_TransactionType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAck_TransactionType create() => TxAck_TransactionType._();
  TxAck_TransactionType createEmptyInstance() => create();
  static $pb.PbList<TxAck_TransactionType> createRepeated() => $pb.PbList<TxAck_TransactionType>();
  @$core.pragma('dart2js:noInline')
  static TxAck_TransactionType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAck_TransactionType>(create);
  static TxAck_TransactionType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<TxAck_TransactionType_TxInputType> get inputs => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<TxAck_TransactionType_TxOutputBinType> get binOutputs => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get lockTime => $_getIZ(3);
  @$pb.TagNumber(4)
  set lockTime($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLockTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLockTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<TxAck_TransactionType_TxOutputType> get outputs => $_getList(4);

  @$pb.TagNumber(6)
  $core.int get inputsCnt => $_getIZ(5);
  @$pb.TagNumber(6)
  set inputsCnt($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasInputsCnt() => $_has(5);
  @$pb.TagNumber(6)
  void clearInputsCnt() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get outputsCnt => $_getIZ(6);
  @$pb.TagNumber(7)
  set outputsCnt($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOutputsCnt() => $_has(6);
  @$pb.TagNumber(7)
  void clearOutputsCnt() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get extraData => $_getN(7);
  @$pb.TagNumber(8)
  set extraData($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasExtraData() => $_has(7);
  @$pb.TagNumber(8)
  void clearExtraData() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get extraDataLen => $_getIZ(8);
  @$pb.TagNumber(9)
  set extraDataLen($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasExtraDataLen() => $_has(8);
  @$pb.TagNumber(9)
  void clearExtraDataLen() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get expiry => $_getIZ(9);
  @$pb.TagNumber(10)
  set expiry($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasExpiry() => $_has(9);
  @$pb.TagNumber(10)
  void clearExpiry() => clearField(10);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $core.bool get overwintered => $_getBF(10);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  set overwintered($core.bool v) { $_setBool(10, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $core.bool hasOverwintered() => $_has(10);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  void clearOverwintered() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get versionGroupId => $_getIZ(11);
  @$pb.TagNumber(12)
  set versionGroupId($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasVersionGroupId() => $_has(11);
  @$pb.TagNumber(12)
  void clearVersionGroupId() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get timestamp => $_getIZ(12);
  @$pb.TagNumber(13)
  set timestamp($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasTimestamp() => $_has(12);
  @$pb.TagNumber(13)
  void clearTimestamp() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get branchId => $_getIZ(13);
  @$pb.TagNumber(14)
  set branchId($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasBranchId() => $_has(13);
  @$pb.TagNumber(14)
  void clearBranchId() => clearField(14);
}

class TxAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aOM<TxAck_TransactionType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tx', subBuilder: TxAck_TransactionType.create)
  ;

  TxAck._() : super();
  factory TxAck({
    TxAck_TransactionType? tx,
  }) {
    final _result = create();
    if (tx != null) {
      _result.tx = tx;
    }
    return _result;
  }
  factory TxAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAck clone() => TxAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAck copyWith(void Function(TxAck) updates) => super.copyWith((message) => updates(message as TxAck)) as TxAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAck create() => TxAck._();
  TxAck createEmptyInstance() => create();
  static $pb.PbList<TxAck> createRepeated() => $pb.PbList<TxAck>();
  @$core.pragma('dart2js:noInline')
  static TxAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAck>(create);
  static TxAck? _defaultInstance;

  @$pb.TagNumber(1)
  TxAck_TransactionType get tx => $_getN(0);
  @$pb.TagNumber(1)
  set tx(TxAck_TransactionType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTx() => $_has(0);
  @$pb.TagNumber(1)
  void clearTx() => clearField(1);
  @$pb.TagNumber(1)
  TxAck_TransactionType ensureTx() => $_ensure(0);
}

class TxInput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxInput', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prevHash', $pb.PbFieldType.QY)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prevIndex', $pb.PbFieldType.QU3)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptSig', $pb.PbFieldType.OY)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequence', $pb.PbFieldType.OU3, defaultOrMaker: 4294967295)
    ..e<InputScriptType>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptType', $pb.PbFieldType.OE, defaultOrMaker: InputScriptType.SPENDADDRESS, valueOf: InputScriptType.valueOf, enumValues: InputScriptType.values)
    ..aOM<MultisigRedeemScriptType>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multisig', subBuilder: MultisigRedeemScriptType.create)
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decredTree', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'witness', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownershipProof', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitmentData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'origHash', $pb.PbFieldType.OY)
    ..a<$core.int>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'origIndex', $pb.PbFieldType.OU3)
    ..e<DecredStakingSpendType>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decredStakingSpend', $pb.PbFieldType.OE, defaultOrMaker: DecredStakingSpendType.SSGen, valueOf: DecredStakingSpendType.valueOf, enumValues: DecredStakingSpendType.values)
    ..a<$core.List<$core.int>>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptPubkey', $pb.PbFieldType.OY)
    ..a<$core.int>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinjoinFlags', $pb.PbFieldType.OU3)
  ;

  TxInput._() : super();
  factory TxInput({
    $core.Iterable<$core.int>? addressN,
    $core.List<$core.int>? prevHash,
    $core.int? prevIndex,
    $core.List<$core.int>? scriptSig,
    $core.int? sequence,
    InputScriptType? scriptType,
    MultisigRedeemScriptType? multisig,
    $fixnum.Int64? amount,
    $core.int? decredTree,
    $core.List<$core.int>? witness,
    $core.List<$core.int>? ownershipProof,
    $core.List<$core.int>? commitmentData,
    $core.List<$core.int>? origHash,
    $core.int? origIndex,
    DecredStakingSpendType? decredStakingSpend,
    $core.List<$core.int>? scriptPubkey,
    $core.int? coinjoinFlags,
  }) {
    final _result = create();
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (prevHash != null) {
      _result.prevHash = prevHash;
    }
    if (prevIndex != null) {
      _result.prevIndex = prevIndex;
    }
    if (scriptSig != null) {
      _result.scriptSig = scriptSig;
    }
    if (sequence != null) {
      _result.sequence = sequence;
    }
    if (scriptType != null) {
      _result.scriptType = scriptType;
    }
    if (multisig != null) {
      _result.multisig = multisig;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (decredTree != null) {
      _result.decredTree = decredTree;
    }
    if (witness != null) {
      _result.witness = witness;
    }
    if (ownershipProof != null) {
      _result.ownershipProof = ownershipProof;
    }
    if (commitmentData != null) {
      _result.commitmentData = commitmentData;
    }
    if (origHash != null) {
      _result.origHash = origHash;
    }
    if (origIndex != null) {
      _result.origIndex = origIndex;
    }
    if (decredStakingSpend != null) {
      _result.decredStakingSpend = decredStakingSpend;
    }
    if (scriptPubkey != null) {
      _result.scriptPubkey = scriptPubkey;
    }
    if (coinjoinFlags != null) {
      _result.coinjoinFlags = coinjoinFlags;
    }
    return _result;
  }
  factory TxInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxInput clone() => TxInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxInput copyWith(void Function(TxInput) updates) => super.copyWith((message) => updates(message as TxInput)) as TxInput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxInput create() => TxInput._();
  TxInput createEmptyInstance() => create();
  static $pb.PbList<TxInput> createRepeated() => $pb.PbList<TxInput>();
  @$core.pragma('dart2js:noInline')
  static TxInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxInput>(create);
  static TxInput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get addressN => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get prevHash => $_getN(1);
  @$pb.TagNumber(2)
  set prevHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrevHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrevHash() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get prevIndex => $_getIZ(2);
  @$pb.TagNumber(3)
  set prevIndex($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrevIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrevIndex() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get scriptSig => $_getN(3);
  @$pb.TagNumber(4)
  set scriptSig($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasScriptSig() => $_has(3);
  @$pb.TagNumber(4)
  void clearScriptSig() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get sequence => $_getI(4, 4294967295);
  @$pb.TagNumber(5)
  set sequence($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSequence() => $_has(4);
  @$pb.TagNumber(5)
  void clearSequence() => clearField(5);

  @$pb.TagNumber(6)
  InputScriptType get scriptType => $_getN(5);
  @$pb.TagNumber(6)
  set scriptType(InputScriptType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasScriptType() => $_has(5);
  @$pb.TagNumber(6)
  void clearScriptType() => clearField(6);

  @$pb.TagNumber(7)
  MultisigRedeemScriptType get multisig => $_getN(6);
  @$pb.TagNumber(7)
  set multisig(MultisigRedeemScriptType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasMultisig() => $_has(6);
  @$pb.TagNumber(7)
  void clearMultisig() => clearField(7);
  @$pb.TagNumber(7)
  MultisigRedeemScriptType ensureMultisig() => $_ensure(6);

  @$pb.TagNumber(8)
  $fixnum.Int64 get amount => $_getI64(7);
  @$pb.TagNumber(8)
  set amount($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAmount() => $_has(7);
  @$pb.TagNumber(8)
  void clearAmount() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get decredTree => $_getIZ(8);
  @$pb.TagNumber(9)
  set decredTree($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDecredTree() => $_has(8);
  @$pb.TagNumber(9)
  void clearDecredTree() => clearField(9);

  @$pb.TagNumber(13)
  $core.List<$core.int> get witness => $_getN(9);
  @$pb.TagNumber(13)
  set witness($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(13)
  $core.bool hasWitness() => $_has(9);
  @$pb.TagNumber(13)
  void clearWitness() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.int> get ownershipProof => $_getN(10);
  @$pb.TagNumber(14)
  set ownershipProof($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(14)
  $core.bool hasOwnershipProof() => $_has(10);
  @$pb.TagNumber(14)
  void clearOwnershipProof() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<$core.int> get commitmentData => $_getN(11);
  @$pb.TagNumber(15)
  set commitmentData($core.List<$core.int> v) { $_setBytes(11, v); }
  @$pb.TagNumber(15)
  $core.bool hasCommitmentData() => $_has(11);
  @$pb.TagNumber(15)
  void clearCommitmentData() => clearField(15);

  @$pb.TagNumber(16)
  $core.List<$core.int> get origHash => $_getN(12);
  @$pb.TagNumber(16)
  set origHash($core.List<$core.int> v) { $_setBytes(12, v); }
  @$pb.TagNumber(16)
  $core.bool hasOrigHash() => $_has(12);
  @$pb.TagNumber(16)
  void clearOrigHash() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get origIndex => $_getIZ(13);
  @$pb.TagNumber(17)
  set origIndex($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(17)
  $core.bool hasOrigIndex() => $_has(13);
  @$pb.TagNumber(17)
  void clearOrigIndex() => clearField(17);

  @$pb.TagNumber(18)
  DecredStakingSpendType get decredStakingSpend => $_getN(14);
  @$pb.TagNumber(18)
  set decredStakingSpend(DecredStakingSpendType v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasDecredStakingSpend() => $_has(14);
  @$pb.TagNumber(18)
  void clearDecredStakingSpend() => clearField(18);

  @$pb.TagNumber(19)
  $core.List<$core.int> get scriptPubkey => $_getN(15);
  @$pb.TagNumber(19)
  set scriptPubkey($core.List<$core.int> v) { $_setBytes(15, v); }
  @$pb.TagNumber(19)
  $core.bool hasScriptPubkey() => $_has(15);
  @$pb.TagNumber(19)
  void clearScriptPubkey() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get coinjoinFlags => $_getIZ(16);
  @$pb.TagNumber(20)
  set coinjoinFlags($core.int v) { $_setUnsignedInt32(16, v); }
  @$pb.TagNumber(20)
  $core.bool hasCoinjoinFlags() => $_has(16);
  @$pb.TagNumber(20)
  void clearCoinjoinFlags() => clearField(20);
}

class TxOutput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxOutput', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<OutputScriptType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptType', $pb.PbFieldType.OE, defaultOrMaker: OutputScriptType.PAYTOADDRESS, valueOf: OutputScriptType.valueOf, enumValues: OutputScriptType.values)
    ..aOM<MultisigRedeemScriptType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multisig', subBuilder: MultisigRedeemScriptType.create)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'opReturnData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'origHash', $pb.PbFieldType.OY)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'origIndex', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentReqIndex', $pb.PbFieldType.OU3)
  ;

  TxOutput._() : super();
  factory TxOutput({
    $core.String? address,
    $core.Iterable<$core.int>? addressN,
    $fixnum.Int64? amount,
    OutputScriptType? scriptType,
    MultisigRedeemScriptType? multisig,
    $core.List<$core.int>? opReturnData,
    $core.List<$core.int>? origHash,
    $core.int? origIndex,
    $core.int? paymentReqIndex,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (scriptType != null) {
      _result.scriptType = scriptType;
    }
    if (multisig != null) {
      _result.multisig = multisig;
    }
    if (opReturnData != null) {
      _result.opReturnData = opReturnData;
    }
    if (origHash != null) {
      _result.origHash = origHash;
    }
    if (origIndex != null) {
      _result.origIndex = origIndex;
    }
    if (paymentReqIndex != null) {
      _result.paymentReqIndex = paymentReqIndex;
    }
    return _result;
  }
  factory TxOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxOutput clone() => TxOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxOutput copyWith(void Function(TxOutput) updates) => super.copyWith((message) => updates(message as TxOutput)) as TxOutput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxOutput create() => TxOutput._();
  TxOutput createEmptyInstance() => create();
  static $pb.PbList<TxOutput> createRepeated() => $pb.PbList<TxOutput>();
  @$core.pragma('dart2js:noInline')
  static TxOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxOutput>(create);
  static TxOutput? _defaultInstance;

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
  $fixnum.Int64 get amount => $_getI64(2);
  @$pb.TagNumber(3)
  set amount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  OutputScriptType get scriptType => $_getN(3);
  @$pb.TagNumber(4)
  set scriptType(OutputScriptType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasScriptType() => $_has(3);
  @$pb.TagNumber(4)
  void clearScriptType() => clearField(4);

  @$pb.TagNumber(5)
  MultisigRedeemScriptType get multisig => $_getN(4);
  @$pb.TagNumber(5)
  set multisig(MultisigRedeemScriptType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMultisig() => $_has(4);
  @$pb.TagNumber(5)
  void clearMultisig() => clearField(5);
  @$pb.TagNumber(5)
  MultisigRedeemScriptType ensureMultisig() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get opReturnData => $_getN(5);
  @$pb.TagNumber(6)
  set opReturnData($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOpReturnData() => $_has(5);
  @$pb.TagNumber(6)
  void clearOpReturnData() => clearField(6);

  @$pb.TagNumber(10)
  $core.List<$core.int> get origHash => $_getN(6);
  @$pb.TagNumber(10)
  set origHash($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(10)
  $core.bool hasOrigHash() => $_has(6);
  @$pb.TagNumber(10)
  void clearOrigHash() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get origIndex => $_getIZ(7);
  @$pb.TagNumber(11)
  set origIndex($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(11)
  $core.bool hasOrigIndex() => $_has(7);
  @$pb.TagNumber(11)
  void clearOrigIndex() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get paymentReqIndex => $_getIZ(8);
  @$pb.TagNumber(12)
  set paymentReqIndex($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(12)
  $core.bool hasPaymentReqIndex() => $_has(8);
  @$pb.TagNumber(12)
  void clearPaymentReqIndex() => clearField(12);
}

class PrevTx extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PrevTx', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.QU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lockTime', $pb.PbFieldType.QU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputsCount', $pb.PbFieldType.QU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputsCount', $pb.PbFieldType.QU3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraDataLen', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiry', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'versionGroupId', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'branchId', $pb.PbFieldType.OU3)
  ;

  PrevTx._() : super();
  factory PrevTx({
    $core.int? version,
    $core.int? lockTime,
    $core.int? inputsCount,
    $core.int? outputsCount,
    $core.int? extraDataLen,
    $core.int? expiry,
    $core.int? versionGroupId,
    $core.int? timestamp,
    $core.int? branchId,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (lockTime != null) {
      _result.lockTime = lockTime;
    }
    if (inputsCount != null) {
      _result.inputsCount = inputsCount;
    }
    if (outputsCount != null) {
      _result.outputsCount = outputsCount;
    }
    if (extraDataLen != null) {
      _result.extraDataLen = extraDataLen;
    }
    if (expiry != null) {
      _result.expiry = expiry;
    }
    if (versionGroupId != null) {
      _result.versionGroupId = versionGroupId;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (branchId != null) {
      _result.branchId = branchId;
    }
    return _result;
  }
  factory PrevTx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrevTx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrevTx clone() => PrevTx()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrevTx copyWith(void Function(PrevTx) updates) => super.copyWith((message) => updates(message as PrevTx)) as PrevTx; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrevTx create() => PrevTx._();
  PrevTx createEmptyInstance() => create();
  static $pb.PbList<PrevTx> createRepeated() => $pb.PbList<PrevTx>();
  @$core.pragma('dart2js:noInline')
  static PrevTx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrevTx>(create);
  static PrevTx? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(4)
  $core.int get lockTime => $_getIZ(1);
  @$pb.TagNumber(4)
  set lockTime($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasLockTime() => $_has(1);
  @$pb.TagNumber(4)
  void clearLockTime() => clearField(4);

  @$pb.TagNumber(6)
  $core.int get inputsCount => $_getIZ(2);
  @$pb.TagNumber(6)
  set inputsCount($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(6)
  $core.bool hasInputsCount() => $_has(2);
  @$pb.TagNumber(6)
  void clearInputsCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get outputsCount => $_getIZ(3);
  @$pb.TagNumber(7)
  set outputsCount($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(7)
  $core.bool hasOutputsCount() => $_has(3);
  @$pb.TagNumber(7)
  void clearOutputsCount() => clearField(7);

  @$pb.TagNumber(9)
  $core.int get extraDataLen => $_getIZ(4);
  @$pb.TagNumber(9)
  set extraDataLen($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(9)
  $core.bool hasExtraDataLen() => $_has(4);
  @$pb.TagNumber(9)
  void clearExtraDataLen() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get expiry => $_getIZ(5);
  @$pb.TagNumber(10)
  set expiry($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(10)
  $core.bool hasExpiry() => $_has(5);
  @$pb.TagNumber(10)
  void clearExpiry() => clearField(10);

  @$pb.TagNumber(12)
  $core.int get versionGroupId => $_getIZ(6);
  @$pb.TagNumber(12)
  set versionGroupId($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(12)
  $core.bool hasVersionGroupId() => $_has(6);
  @$pb.TagNumber(12)
  void clearVersionGroupId() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get timestamp => $_getIZ(7);
  @$pb.TagNumber(13)
  set timestamp($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(13)
  $core.bool hasTimestamp() => $_has(7);
  @$pb.TagNumber(13)
  void clearTimestamp() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get branchId => $_getIZ(8);
  @$pb.TagNumber(14)
  set branchId($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(14)
  $core.bool hasBranchId() => $_has(8);
  @$pb.TagNumber(14)
  void clearBranchId() => clearField(14);
}

class PrevInput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PrevInput', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prevHash', $pb.PbFieldType.QY)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prevIndex', $pb.PbFieldType.QU3)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptSig', $pb.PbFieldType.QY)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequence', $pb.PbFieldType.QU3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decredTree', $pb.PbFieldType.OU3)
  ;

  PrevInput._() : super();
  factory PrevInput({
    $core.List<$core.int>? prevHash,
    $core.int? prevIndex,
    $core.List<$core.int>? scriptSig,
    $core.int? sequence,
    $core.int? decredTree,
  }) {
    final _result = create();
    if (prevHash != null) {
      _result.prevHash = prevHash;
    }
    if (prevIndex != null) {
      _result.prevIndex = prevIndex;
    }
    if (scriptSig != null) {
      _result.scriptSig = scriptSig;
    }
    if (sequence != null) {
      _result.sequence = sequence;
    }
    if (decredTree != null) {
      _result.decredTree = decredTree;
    }
    return _result;
  }
  factory PrevInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrevInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrevInput clone() => PrevInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrevInput copyWith(void Function(PrevInput) updates) => super.copyWith((message) => updates(message as PrevInput)) as PrevInput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrevInput create() => PrevInput._();
  PrevInput createEmptyInstance() => create();
  static $pb.PbList<PrevInput> createRepeated() => $pb.PbList<PrevInput>();
  @$core.pragma('dart2js:noInline')
  static PrevInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrevInput>(create);
  static PrevInput? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.int> get prevHash => $_getN(0);
  @$pb.TagNumber(2)
  set prevHash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrevHash() => $_has(0);
  @$pb.TagNumber(2)
  void clearPrevHash() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get prevIndex => $_getIZ(1);
  @$pb.TagNumber(3)
  set prevIndex($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrevIndex() => $_has(1);
  @$pb.TagNumber(3)
  void clearPrevIndex() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get scriptSig => $_getN(2);
  @$pb.TagNumber(4)
  set scriptSig($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasScriptSig() => $_has(2);
  @$pb.TagNumber(4)
  void clearScriptSig() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get sequence => $_getIZ(3);
  @$pb.TagNumber(5)
  set sequence($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasSequence() => $_has(3);
  @$pb.TagNumber(5)
  void clearSequence() => clearField(5);

  @$pb.TagNumber(9)
  $core.int get decredTree => $_getIZ(4);
  @$pb.TagNumber(9)
  set decredTree($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(9)
  $core.bool hasDecredTree() => $_has(4);
  @$pb.TagNumber(9)
  void clearDecredTree() => clearField(9);
}

class PrevOutput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PrevOutput', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptPubkey', $pb.PbFieldType.QY)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decredScriptVersion', $pb.PbFieldType.OU3)
  ;

  PrevOutput._() : super();
  factory PrevOutput({
    $fixnum.Int64? amount,
    $core.List<$core.int>? scriptPubkey,
    $core.int? decredScriptVersion,
  }) {
    final _result = create();
    if (amount != null) {
      _result.amount = amount;
    }
    if (scriptPubkey != null) {
      _result.scriptPubkey = scriptPubkey;
    }
    if (decredScriptVersion != null) {
      _result.decredScriptVersion = decredScriptVersion;
    }
    return _result;
  }
  factory PrevOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrevOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrevOutput clone() => PrevOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrevOutput copyWith(void Function(PrevOutput) updates) => super.copyWith((message) => updates(message as PrevOutput)) as PrevOutput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrevOutput create() => PrevOutput._();
  PrevOutput createEmptyInstance() => create();
  static $pb.PbList<PrevOutput> createRepeated() => $pb.PbList<PrevOutput>();
  @$core.pragma('dart2js:noInline')
  static PrevOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrevOutput>(create);
  static PrevOutput? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get amount => $_getI64(0);
  @$pb.TagNumber(1)
  set amount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get scriptPubkey => $_getN(1);
  @$pb.TagNumber(2)
  set scriptPubkey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScriptPubkey() => $_has(1);
  @$pb.TagNumber(2)
  void clearScriptPubkey() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get decredScriptVersion => $_getIZ(2);
  @$pb.TagNumber(3)
  set decredScriptVersion($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDecredScriptVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearDecredScriptVersion() => clearField(3);
}

class TxAckInput_TxAckInputWrapper extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAckInput.TxAckInputWrapper', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQM<TxInput>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'input', subBuilder: TxInput.create)
  ;

  TxAckInput_TxAckInputWrapper._() : super();
  factory TxAckInput_TxAckInputWrapper({
    TxInput? input,
  }) {
    final _result = create();
    if (input != null) {
      _result.input = input;
    }
    return _result;
  }
  factory TxAckInput_TxAckInputWrapper.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAckInput_TxAckInputWrapper.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAckInput_TxAckInputWrapper clone() => TxAckInput_TxAckInputWrapper()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAckInput_TxAckInputWrapper copyWith(void Function(TxAckInput_TxAckInputWrapper) updates) => super.copyWith((message) => updates(message as TxAckInput_TxAckInputWrapper)) as TxAckInput_TxAckInputWrapper; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAckInput_TxAckInputWrapper create() => TxAckInput_TxAckInputWrapper._();
  TxAckInput_TxAckInputWrapper createEmptyInstance() => create();
  static $pb.PbList<TxAckInput_TxAckInputWrapper> createRepeated() => $pb.PbList<TxAckInput_TxAckInputWrapper>();
  @$core.pragma('dart2js:noInline')
  static TxAckInput_TxAckInputWrapper getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAckInput_TxAckInputWrapper>(create);
  static TxAckInput_TxAckInputWrapper? _defaultInstance;

  @$pb.TagNumber(2)
  TxInput get input => $_getN(0);
  @$pb.TagNumber(2)
  set input(TxInput v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInput() => $_has(0);
  @$pb.TagNumber(2)
  void clearInput() => clearField(2);
  @$pb.TagNumber(2)
  TxInput ensureInput() => $_ensure(0);
}

class TxAckInput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAckInput', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQM<TxAckInput_TxAckInputWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tx', subBuilder: TxAckInput_TxAckInputWrapper.create)
  ;

  TxAckInput._() : super();
  factory TxAckInput({
    TxAckInput_TxAckInputWrapper? tx,
  }) {
    final _result = create();
    if (tx != null) {
      _result.tx = tx;
    }
    return _result;
  }
  factory TxAckInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAckInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAckInput clone() => TxAckInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAckInput copyWith(void Function(TxAckInput) updates) => super.copyWith((message) => updates(message as TxAckInput)) as TxAckInput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAckInput create() => TxAckInput._();
  TxAckInput createEmptyInstance() => create();
  static $pb.PbList<TxAckInput> createRepeated() => $pb.PbList<TxAckInput>();
  @$core.pragma('dart2js:noInline')
  static TxAckInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAckInput>(create);
  static TxAckInput? _defaultInstance;

  @$pb.TagNumber(1)
  TxAckInput_TxAckInputWrapper get tx => $_getN(0);
  @$pb.TagNumber(1)
  set tx(TxAckInput_TxAckInputWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTx() => $_has(0);
  @$pb.TagNumber(1)
  void clearTx() => clearField(1);
  @$pb.TagNumber(1)
  TxAckInput_TxAckInputWrapper ensureTx() => $_ensure(0);
}

class TxAckOutput_TxAckOutputWrapper extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAckOutput.TxAckOutputWrapper', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQM<TxOutput>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'output', subBuilder: TxOutput.create)
  ;

  TxAckOutput_TxAckOutputWrapper._() : super();
  factory TxAckOutput_TxAckOutputWrapper({
    TxOutput? output,
  }) {
    final _result = create();
    if (output != null) {
      _result.output = output;
    }
    return _result;
  }
  factory TxAckOutput_TxAckOutputWrapper.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAckOutput_TxAckOutputWrapper.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAckOutput_TxAckOutputWrapper clone() => TxAckOutput_TxAckOutputWrapper()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAckOutput_TxAckOutputWrapper copyWith(void Function(TxAckOutput_TxAckOutputWrapper) updates) => super.copyWith((message) => updates(message as TxAckOutput_TxAckOutputWrapper)) as TxAckOutput_TxAckOutputWrapper; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAckOutput_TxAckOutputWrapper create() => TxAckOutput_TxAckOutputWrapper._();
  TxAckOutput_TxAckOutputWrapper createEmptyInstance() => create();
  static $pb.PbList<TxAckOutput_TxAckOutputWrapper> createRepeated() => $pb.PbList<TxAckOutput_TxAckOutputWrapper>();
  @$core.pragma('dart2js:noInline')
  static TxAckOutput_TxAckOutputWrapper getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAckOutput_TxAckOutputWrapper>(create);
  static TxAckOutput_TxAckOutputWrapper? _defaultInstance;

  @$pb.TagNumber(5)
  TxOutput get output => $_getN(0);
  @$pb.TagNumber(5)
  set output(TxOutput v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasOutput() => $_has(0);
  @$pb.TagNumber(5)
  void clearOutput() => clearField(5);
  @$pb.TagNumber(5)
  TxOutput ensureOutput() => $_ensure(0);
}

class TxAckOutput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAckOutput', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQM<TxAckOutput_TxAckOutputWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tx', subBuilder: TxAckOutput_TxAckOutputWrapper.create)
  ;

  TxAckOutput._() : super();
  factory TxAckOutput({
    TxAckOutput_TxAckOutputWrapper? tx,
  }) {
    final _result = create();
    if (tx != null) {
      _result.tx = tx;
    }
    return _result;
  }
  factory TxAckOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAckOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAckOutput clone() => TxAckOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAckOutput copyWith(void Function(TxAckOutput) updates) => super.copyWith((message) => updates(message as TxAckOutput)) as TxAckOutput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAckOutput create() => TxAckOutput._();
  TxAckOutput createEmptyInstance() => create();
  static $pb.PbList<TxAckOutput> createRepeated() => $pb.PbList<TxAckOutput>();
  @$core.pragma('dart2js:noInline')
  static TxAckOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAckOutput>(create);
  static TxAckOutput? _defaultInstance;

  @$pb.TagNumber(1)
  TxAckOutput_TxAckOutputWrapper get tx => $_getN(0);
  @$pb.TagNumber(1)
  set tx(TxAckOutput_TxAckOutputWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTx() => $_has(0);
  @$pb.TagNumber(1)
  void clearTx() => clearField(1);
  @$pb.TagNumber(1)
  TxAckOutput_TxAckOutputWrapper ensureTx() => $_ensure(0);
}

class TxAckPrevMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAckPrevMeta', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQM<PrevTx>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tx', subBuilder: PrevTx.create)
  ;

  TxAckPrevMeta._() : super();
  factory TxAckPrevMeta({
    PrevTx? tx,
  }) {
    final _result = create();
    if (tx != null) {
      _result.tx = tx;
    }
    return _result;
  }
  factory TxAckPrevMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAckPrevMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAckPrevMeta clone() => TxAckPrevMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAckPrevMeta copyWith(void Function(TxAckPrevMeta) updates) => super.copyWith((message) => updates(message as TxAckPrevMeta)) as TxAckPrevMeta; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAckPrevMeta create() => TxAckPrevMeta._();
  TxAckPrevMeta createEmptyInstance() => create();
  static $pb.PbList<TxAckPrevMeta> createRepeated() => $pb.PbList<TxAckPrevMeta>();
  @$core.pragma('dart2js:noInline')
  static TxAckPrevMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAckPrevMeta>(create);
  static TxAckPrevMeta? _defaultInstance;

  @$pb.TagNumber(1)
  PrevTx get tx => $_getN(0);
  @$pb.TagNumber(1)
  set tx(PrevTx v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTx() => $_has(0);
  @$pb.TagNumber(1)
  void clearTx() => clearField(1);
  @$pb.TagNumber(1)
  PrevTx ensureTx() => $_ensure(0);
}

class TxAckPrevInput_TxAckPrevInputWrapper extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAckPrevInput.TxAckPrevInputWrapper', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQM<PrevInput>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'input', subBuilder: PrevInput.create)
  ;

  TxAckPrevInput_TxAckPrevInputWrapper._() : super();
  factory TxAckPrevInput_TxAckPrevInputWrapper({
    PrevInput? input,
  }) {
    final _result = create();
    if (input != null) {
      _result.input = input;
    }
    return _result;
  }
  factory TxAckPrevInput_TxAckPrevInputWrapper.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAckPrevInput_TxAckPrevInputWrapper.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAckPrevInput_TxAckPrevInputWrapper clone() => TxAckPrevInput_TxAckPrevInputWrapper()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAckPrevInput_TxAckPrevInputWrapper copyWith(void Function(TxAckPrevInput_TxAckPrevInputWrapper) updates) => super.copyWith((message) => updates(message as TxAckPrevInput_TxAckPrevInputWrapper)) as TxAckPrevInput_TxAckPrevInputWrapper; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAckPrevInput_TxAckPrevInputWrapper create() => TxAckPrevInput_TxAckPrevInputWrapper._();
  TxAckPrevInput_TxAckPrevInputWrapper createEmptyInstance() => create();
  static $pb.PbList<TxAckPrevInput_TxAckPrevInputWrapper> createRepeated() => $pb.PbList<TxAckPrevInput_TxAckPrevInputWrapper>();
  @$core.pragma('dart2js:noInline')
  static TxAckPrevInput_TxAckPrevInputWrapper getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAckPrevInput_TxAckPrevInputWrapper>(create);
  static TxAckPrevInput_TxAckPrevInputWrapper? _defaultInstance;

  @$pb.TagNumber(2)
  PrevInput get input => $_getN(0);
  @$pb.TagNumber(2)
  set input(PrevInput v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInput() => $_has(0);
  @$pb.TagNumber(2)
  void clearInput() => clearField(2);
  @$pb.TagNumber(2)
  PrevInput ensureInput() => $_ensure(0);
}

class TxAckPrevInput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAckPrevInput', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQM<TxAckPrevInput_TxAckPrevInputWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tx', subBuilder: TxAckPrevInput_TxAckPrevInputWrapper.create)
  ;

  TxAckPrevInput._() : super();
  factory TxAckPrevInput({
    TxAckPrevInput_TxAckPrevInputWrapper? tx,
  }) {
    final _result = create();
    if (tx != null) {
      _result.tx = tx;
    }
    return _result;
  }
  factory TxAckPrevInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAckPrevInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAckPrevInput clone() => TxAckPrevInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAckPrevInput copyWith(void Function(TxAckPrevInput) updates) => super.copyWith((message) => updates(message as TxAckPrevInput)) as TxAckPrevInput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAckPrevInput create() => TxAckPrevInput._();
  TxAckPrevInput createEmptyInstance() => create();
  static $pb.PbList<TxAckPrevInput> createRepeated() => $pb.PbList<TxAckPrevInput>();
  @$core.pragma('dart2js:noInline')
  static TxAckPrevInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAckPrevInput>(create);
  static TxAckPrevInput? _defaultInstance;

  @$pb.TagNumber(1)
  TxAckPrevInput_TxAckPrevInputWrapper get tx => $_getN(0);
  @$pb.TagNumber(1)
  set tx(TxAckPrevInput_TxAckPrevInputWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTx() => $_has(0);
  @$pb.TagNumber(1)
  void clearTx() => clearField(1);
  @$pb.TagNumber(1)
  TxAckPrevInput_TxAckPrevInputWrapper ensureTx() => $_ensure(0);
}

class TxAckPrevOutput_TxAckPrevOutputWrapper extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAckPrevOutput.TxAckPrevOutputWrapper', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQM<PrevOutput>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'output', subBuilder: PrevOutput.create)
  ;

  TxAckPrevOutput_TxAckPrevOutputWrapper._() : super();
  factory TxAckPrevOutput_TxAckPrevOutputWrapper({
    PrevOutput? output,
  }) {
    final _result = create();
    if (output != null) {
      _result.output = output;
    }
    return _result;
  }
  factory TxAckPrevOutput_TxAckPrevOutputWrapper.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAckPrevOutput_TxAckPrevOutputWrapper.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAckPrevOutput_TxAckPrevOutputWrapper clone() => TxAckPrevOutput_TxAckPrevOutputWrapper()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAckPrevOutput_TxAckPrevOutputWrapper copyWith(void Function(TxAckPrevOutput_TxAckPrevOutputWrapper) updates) => super.copyWith((message) => updates(message as TxAckPrevOutput_TxAckPrevOutputWrapper)) as TxAckPrevOutput_TxAckPrevOutputWrapper; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAckPrevOutput_TxAckPrevOutputWrapper create() => TxAckPrevOutput_TxAckPrevOutputWrapper._();
  TxAckPrevOutput_TxAckPrevOutputWrapper createEmptyInstance() => create();
  static $pb.PbList<TxAckPrevOutput_TxAckPrevOutputWrapper> createRepeated() => $pb.PbList<TxAckPrevOutput_TxAckPrevOutputWrapper>();
  @$core.pragma('dart2js:noInline')
  static TxAckPrevOutput_TxAckPrevOutputWrapper getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAckPrevOutput_TxAckPrevOutputWrapper>(create);
  static TxAckPrevOutput_TxAckPrevOutputWrapper? _defaultInstance;

  @$pb.TagNumber(3)
  PrevOutput get output => $_getN(0);
  @$pb.TagNumber(3)
  set output(PrevOutput v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOutput() => $_has(0);
  @$pb.TagNumber(3)
  void clearOutput() => clearField(3);
  @$pb.TagNumber(3)
  PrevOutput ensureOutput() => $_ensure(0);
}

class TxAckPrevOutput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAckPrevOutput', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQM<TxAckPrevOutput_TxAckPrevOutputWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tx', subBuilder: TxAckPrevOutput_TxAckPrevOutputWrapper.create)
  ;

  TxAckPrevOutput._() : super();
  factory TxAckPrevOutput({
    TxAckPrevOutput_TxAckPrevOutputWrapper? tx,
  }) {
    final _result = create();
    if (tx != null) {
      _result.tx = tx;
    }
    return _result;
  }
  factory TxAckPrevOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAckPrevOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAckPrevOutput clone() => TxAckPrevOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAckPrevOutput copyWith(void Function(TxAckPrevOutput) updates) => super.copyWith((message) => updates(message as TxAckPrevOutput)) as TxAckPrevOutput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAckPrevOutput create() => TxAckPrevOutput._();
  TxAckPrevOutput createEmptyInstance() => create();
  static $pb.PbList<TxAckPrevOutput> createRepeated() => $pb.PbList<TxAckPrevOutput>();
  @$core.pragma('dart2js:noInline')
  static TxAckPrevOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAckPrevOutput>(create);
  static TxAckPrevOutput? _defaultInstance;

  @$pb.TagNumber(1)
  TxAckPrevOutput_TxAckPrevOutputWrapper get tx => $_getN(0);
  @$pb.TagNumber(1)
  set tx(TxAckPrevOutput_TxAckPrevOutputWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTx() => $_has(0);
  @$pb.TagNumber(1)
  void clearTx() => clearField(1);
  @$pb.TagNumber(1)
  TxAckPrevOutput_TxAckPrevOutputWrapper ensureTx() => $_ensure(0);
}

class TxAckPrevExtraData_TxAckPrevExtraDataWrapper extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAckPrevExtraData.TxAckPrevExtraDataWrapper', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraDataChunk', $pb.PbFieldType.QY)
  ;

  TxAckPrevExtraData_TxAckPrevExtraDataWrapper._() : super();
  factory TxAckPrevExtraData_TxAckPrevExtraDataWrapper({
    $core.List<$core.int>? extraDataChunk,
  }) {
    final _result = create();
    if (extraDataChunk != null) {
      _result.extraDataChunk = extraDataChunk;
    }
    return _result;
  }
  factory TxAckPrevExtraData_TxAckPrevExtraDataWrapper.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAckPrevExtraData_TxAckPrevExtraDataWrapper.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAckPrevExtraData_TxAckPrevExtraDataWrapper clone() => TxAckPrevExtraData_TxAckPrevExtraDataWrapper()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAckPrevExtraData_TxAckPrevExtraDataWrapper copyWith(void Function(TxAckPrevExtraData_TxAckPrevExtraDataWrapper) updates) => super.copyWith((message) => updates(message as TxAckPrevExtraData_TxAckPrevExtraDataWrapper)) as TxAckPrevExtraData_TxAckPrevExtraDataWrapper; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAckPrevExtraData_TxAckPrevExtraDataWrapper create() => TxAckPrevExtraData_TxAckPrevExtraDataWrapper._();
  TxAckPrevExtraData_TxAckPrevExtraDataWrapper createEmptyInstance() => create();
  static $pb.PbList<TxAckPrevExtraData_TxAckPrevExtraDataWrapper> createRepeated() => $pb.PbList<TxAckPrevExtraData_TxAckPrevExtraDataWrapper>();
  @$core.pragma('dart2js:noInline')
  static TxAckPrevExtraData_TxAckPrevExtraDataWrapper getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAckPrevExtraData_TxAckPrevExtraDataWrapper>(create);
  static TxAckPrevExtraData_TxAckPrevExtraDataWrapper? _defaultInstance;

  @$pb.TagNumber(8)
  $core.List<$core.int> get extraDataChunk => $_getN(0);
  @$pb.TagNumber(8)
  set extraDataChunk($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(8)
  $core.bool hasExtraDataChunk() => $_has(0);
  @$pb.TagNumber(8)
  void clearExtraDataChunk() => clearField(8);
}

class TxAckPrevExtraData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxAckPrevExtraData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQM<TxAckPrevExtraData_TxAckPrevExtraDataWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tx', subBuilder: TxAckPrevExtraData_TxAckPrevExtraDataWrapper.create)
  ;

  TxAckPrevExtraData._() : super();
  factory TxAckPrevExtraData({
    TxAckPrevExtraData_TxAckPrevExtraDataWrapper? tx,
  }) {
    final _result = create();
    if (tx != null) {
      _result.tx = tx;
    }
    return _result;
  }
  factory TxAckPrevExtraData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxAckPrevExtraData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxAckPrevExtraData clone() => TxAckPrevExtraData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxAckPrevExtraData copyWith(void Function(TxAckPrevExtraData) updates) => super.copyWith((message) => updates(message as TxAckPrevExtraData)) as TxAckPrevExtraData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxAckPrevExtraData create() => TxAckPrevExtraData._();
  TxAckPrevExtraData createEmptyInstance() => create();
  static $pb.PbList<TxAckPrevExtraData> createRepeated() => $pb.PbList<TxAckPrevExtraData>();
  @$core.pragma('dart2js:noInline')
  static TxAckPrevExtraData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxAckPrevExtraData>(create);
  static TxAckPrevExtraData? _defaultInstance;

  @$pb.TagNumber(1)
  TxAckPrevExtraData_TxAckPrevExtraDataWrapper get tx => $_getN(0);
  @$pb.TagNumber(1)
  set tx(TxAckPrevExtraData_TxAckPrevExtraDataWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTx() => $_has(0);
  @$pb.TagNumber(1)
  void clearTx() => clearField(1);
  @$pb.TagNumber(1)
  TxAckPrevExtraData_TxAckPrevExtraDataWrapper ensureTx() => $_ensure(0);
}

class GetOwnershipProof extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOwnershipProof', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..a<$core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinName', $pb.PbFieldType.OS, defaultOrMaker: 'Bitcoin')
    ..e<InputScriptType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptType', $pb.PbFieldType.OE, defaultOrMaker: InputScriptType.SPENDWITNESS, valueOf: InputScriptType.valueOf, enumValues: InputScriptType.values)
    ..aOM<MultisigRedeemScriptType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multisig', subBuilder: MultisigRedeemScriptType.create)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userConfirmation')
    ..p<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownershipIds', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitmentData', $pb.PbFieldType.OY)
  ;

  GetOwnershipProof._() : super();
  factory GetOwnershipProof({
    $core.Iterable<$core.int>? addressN,
    $core.String? coinName,
    InputScriptType? scriptType,
    MultisigRedeemScriptType? multisig,
    $core.bool? userConfirmation,
    $core.Iterable<$core.List<$core.int>>? ownershipIds,
    $core.List<$core.int>? commitmentData,
  }) {
    final _result = create();
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (coinName != null) {
      _result.coinName = coinName;
    }
    if (scriptType != null) {
      _result.scriptType = scriptType;
    }
    if (multisig != null) {
      _result.multisig = multisig;
    }
    if (userConfirmation != null) {
      _result.userConfirmation = userConfirmation;
    }
    if (ownershipIds != null) {
      _result.ownershipIds.addAll(ownershipIds);
    }
    if (commitmentData != null) {
      _result.commitmentData = commitmentData;
    }
    return _result;
  }
  factory GetOwnershipProof.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOwnershipProof.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOwnershipProof clone() => GetOwnershipProof()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOwnershipProof copyWith(void Function(GetOwnershipProof) updates) => super.copyWith((message) => updates(message as GetOwnershipProof)) as GetOwnershipProof; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOwnershipProof create() => GetOwnershipProof._();
  GetOwnershipProof createEmptyInstance() => create();
  static $pb.PbList<GetOwnershipProof> createRepeated() => $pb.PbList<GetOwnershipProof>();
  @$core.pragma('dart2js:noInline')
  static GetOwnershipProof getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOwnershipProof>(create);
  static GetOwnershipProof? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get addressN => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get coinName => $_getS(1, 'Bitcoin');
  @$pb.TagNumber(2)
  set coinName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoinName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoinName() => clearField(2);

  @$pb.TagNumber(3)
  InputScriptType get scriptType => $_getN(2);
  @$pb.TagNumber(3)
  set scriptType(InputScriptType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasScriptType() => $_has(2);
  @$pb.TagNumber(3)
  void clearScriptType() => clearField(3);

  @$pb.TagNumber(4)
  MultisigRedeemScriptType get multisig => $_getN(3);
  @$pb.TagNumber(4)
  set multisig(MultisigRedeemScriptType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMultisig() => $_has(3);
  @$pb.TagNumber(4)
  void clearMultisig() => clearField(4);
  @$pb.TagNumber(4)
  MultisigRedeemScriptType ensureMultisig() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.bool get userConfirmation => $_getBF(4);
  @$pb.TagNumber(5)
  set userConfirmation($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserConfirmation() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserConfirmation() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.List<$core.int>> get ownershipIds => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$core.int> get commitmentData => $_getN(6);
  @$pb.TagNumber(7)
  set commitmentData($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCommitmentData() => $_has(6);
  @$pb.TagNumber(7)
  void clearCommitmentData() => clearField(7);
}

class OwnershipProof extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OwnershipProof', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownershipProof', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.QY)
  ;

  OwnershipProof._() : super();
  factory OwnershipProof({
    $core.List<$core.int>? ownershipProof,
    $core.List<$core.int>? signature,
  }) {
    final _result = create();
    if (ownershipProof != null) {
      _result.ownershipProof = ownershipProof;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory OwnershipProof.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OwnershipProof.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OwnershipProof clone() => OwnershipProof()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OwnershipProof copyWith(void Function(OwnershipProof) updates) => super.copyWith((message) => updates(message as OwnershipProof)) as OwnershipProof; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OwnershipProof create() => OwnershipProof._();
  OwnershipProof createEmptyInstance() => create();
  static $pb.PbList<OwnershipProof> createRepeated() => $pb.PbList<OwnershipProof>();
  @$core.pragma('dart2js:noInline')
  static OwnershipProof getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OwnershipProof>(create);
  static OwnershipProof? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get ownershipProof => $_getN(0);
  @$pb.TagNumber(1)
  set ownershipProof($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOwnershipProof() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwnershipProof() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
}

class AuthorizeCoinJoin extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthorizeCoinJoin', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hw.trezor.messages.bitcoin'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coordinator')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxRounds', $pb.PbFieldType.QU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxCoordinatorFeeRate', $pb.PbFieldType.QU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxFeePerKvbyte', $pb.PbFieldType.QU3)
    ..p<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressN', $pb.PbFieldType.PU3)
    ..a<$core.String>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinName', $pb.PbFieldType.OS, defaultOrMaker: 'Bitcoin')
    ..e<InputScriptType>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptType', $pb.PbFieldType.OE, defaultOrMaker: InputScriptType.SPENDADDRESS, valueOf: InputScriptType.valueOf, enumValues: InputScriptType.values)
    ..e<AmountUnit>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountUnit', $pb.PbFieldType.OE, defaultOrMaker: AmountUnit.BITCOIN, valueOf: AmountUnit.valueOf, enumValues: AmountUnit.values)
  ;

  AuthorizeCoinJoin._() : super();
  factory AuthorizeCoinJoin({
    $core.String? coordinator,
    $fixnum.Int64? maxRounds,
    $core.int? maxCoordinatorFeeRate,
    $core.int? maxFeePerKvbyte,
    $core.Iterable<$core.int>? addressN,
    $core.String? coinName,
    InputScriptType? scriptType,
    AmountUnit? amountUnit,
  }) {
    final _result = create();
    if (coordinator != null) {
      _result.coordinator = coordinator;
    }
    if (maxRounds != null) {
      _result.maxRounds = maxRounds;
    }
    if (maxCoordinatorFeeRate != null) {
      _result.maxCoordinatorFeeRate = maxCoordinatorFeeRate;
    }
    if (maxFeePerKvbyte != null) {
      _result.maxFeePerKvbyte = maxFeePerKvbyte;
    }
    if (addressN != null) {
      _result.addressN.addAll(addressN);
    }
    if (coinName != null) {
      _result.coinName = coinName;
    }
    if (scriptType != null) {
      _result.scriptType = scriptType;
    }
    if (amountUnit != null) {
      _result.amountUnit = amountUnit;
    }
    return _result;
  }
  factory AuthorizeCoinJoin.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthorizeCoinJoin.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthorizeCoinJoin clone() => AuthorizeCoinJoin()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthorizeCoinJoin copyWith(void Function(AuthorizeCoinJoin) updates) => super.copyWith((message) => updates(message as AuthorizeCoinJoin)) as AuthorizeCoinJoin; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthorizeCoinJoin create() => AuthorizeCoinJoin._();
  AuthorizeCoinJoin createEmptyInstance() => create();
  static $pb.PbList<AuthorizeCoinJoin> createRepeated() => $pb.PbList<AuthorizeCoinJoin>();
  @$core.pragma('dart2js:noInline')
  static AuthorizeCoinJoin getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthorizeCoinJoin>(create);
  static AuthorizeCoinJoin? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get coordinator => $_getSZ(0);
  @$pb.TagNumber(1)
  set coordinator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoordinator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoordinator() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get maxRounds => $_getI64(1);
  @$pb.TagNumber(2)
  set maxRounds($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaxRounds() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxRounds() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxCoordinatorFeeRate => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxCoordinatorFeeRate($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxCoordinatorFeeRate() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxCoordinatorFeeRate() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get maxFeePerKvbyte => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxFeePerKvbyte($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxFeePerKvbyte() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxFeePerKvbyte() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get addressN => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get coinName => $_getS(5, 'Bitcoin');
  @$pb.TagNumber(6)
  set coinName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCoinName() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoinName() => clearField(6);

  @$pb.TagNumber(7)
  InputScriptType get scriptType => $_getN(6);
  @$pb.TagNumber(7)
  set scriptType(InputScriptType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasScriptType() => $_has(6);
  @$pb.TagNumber(7)
  void clearScriptType() => clearField(7);

  @$pb.TagNumber(8)
  AmountUnit get amountUnit => $_getN(7);
  @$pb.TagNumber(8)
  set amountUnit(AmountUnit v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAmountUnit() => $_has(7);
  @$pb.TagNumber(8)
  void clearAmountUnit() => clearField(8);
}

