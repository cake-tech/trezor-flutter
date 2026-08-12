///
//  Generated code. Do not modify.
//  source: messages-bitcoin.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class InputScriptType extends $pb.ProtobufEnum {
  static const InputScriptType SPENDADDRESS = InputScriptType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPENDADDRESS');
  static const InputScriptType SPENDMULTISIG = InputScriptType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPENDMULTISIG');
  static const InputScriptType EXTERNAL = InputScriptType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXTERNAL');
  static const InputScriptType SPENDWITNESS = InputScriptType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPENDWITNESS');
  static const InputScriptType SPENDP2SHWITNESS = InputScriptType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPENDP2SHWITNESS');
  static const InputScriptType SPENDTAPROOT = InputScriptType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPENDTAPROOT');

  static const $core.List<InputScriptType> values = <InputScriptType> [
    SPENDADDRESS,
    SPENDMULTISIG,
    EXTERNAL,
    SPENDWITNESS,
    SPENDP2SHWITNESS,
    SPENDTAPROOT,
  ];

  static final $core.Map<$core.int, InputScriptType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static InputScriptType? valueOf($core.int value) => _byValue[value];

  const InputScriptType._($core.int v, $core.String n) : super(v, n);
}

class OutputScriptType extends $pb.ProtobufEnum {
  static const OutputScriptType PAYTOADDRESS = OutputScriptType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAYTOADDRESS');
  static const OutputScriptType PAYTOSCRIPTHASH = OutputScriptType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAYTOSCRIPTHASH');
  static const OutputScriptType PAYTOMULTISIG = OutputScriptType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAYTOMULTISIG');
  static const OutputScriptType PAYTOOPRETURN = OutputScriptType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAYTOOPRETURN');
  static const OutputScriptType PAYTOWITNESS = OutputScriptType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAYTOWITNESS');
  static const OutputScriptType PAYTOP2SHWITNESS = OutputScriptType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAYTOP2SHWITNESS');
  static const OutputScriptType PAYTOTAPROOT = OutputScriptType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAYTOTAPROOT');

  static const $core.List<OutputScriptType> values = <OutputScriptType> [
    PAYTOADDRESS,
    PAYTOSCRIPTHASH,
    PAYTOMULTISIG,
    PAYTOOPRETURN,
    PAYTOWITNESS,
    PAYTOP2SHWITNESS,
    PAYTOTAPROOT,
  ];

  static final $core.Map<$core.int, OutputScriptType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OutputScriptType? valueOf($core.int value) => _byValue[value];

  const OutputScriptType._($core.int v, $core.String n) : super(v, n);
}

class DecredStakingSpendType extends $pb.ProtobufEnum {
  static const DecredStakingSpendType SSGen = DecredStakingSpendType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SSGen');
  static const DecredStakingSpendType SSRTX = DecredStakingSpendType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SSRTX');

  static const $core.List<DecredStakingSpendType> values = <DecredStakingSpendType> [
    SSGen,
    SSRTX,
  ];

  static final $core.Map<$core.int, DecredStakingSpendType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DecredStakingSpendType? valueOf($core.int value) => _byValue[value];

  const DecredStakingSpendType._($core.int v, $core.String n) : super(v, n);
}

class AmountUnit extends $pb.ProtobufEnum {
  static const AmountUnit BITCOIN = AmountUnit._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BITCOIN');
  static const AmountUnit MILLIBITCOIN = AmountUnit._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MILLIBITCOIN');
  static const AmountUnit MICROBITCOIN = AmountUnit._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MICROBITCOIN');
  static const AmountUnit SATOSHI = AmountUnit._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SATOSHI');

  static const $core.List<AmountUnit> values = <AmountUnit> [
    BITCOIN,
    MILLIBITCOIN,
    MICROBITCOIN,
    SATOSHI,
  ];

  static final $core.Map<$core.int, AmountUnit> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AmountUnit? valueOf($core.int value) => _byValue[value];

  const AmountUnit._($core.int v, $core.String n) : super(v, n);
}

class MultisigPubkeysOrder extends $pb.ProtobufEnum {
  static const MultisigPubkeysOrder PRESERVED = MultisigPubkeysOrder._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRESERVED');
  static const MultisigPubkeysOrder LEXICOGRAPHIC = MultisigPubkeysOrder._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LEXICOGRAPHIC');

  static const $core.List<MultisigPubkeysOrder> values = <MultisigPubkeysOrder> [
    PRESERVED,
    LEXICOGRAPHIC,
  ];

  static final $core.Map<$core.int, MultisigPubkeysOrder> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MultisigPubkeysOrder? valueOf($core.int value) => _byValue[value];

  const MultisigPubkeysOrder._($core.int v, $core.String n) : super(v, n);
}

class TxRequest_RequestType extends $pb.ProtobufEnum {
  static const TxRequest_RequestType TXINPUT = TxRequest_RequestType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TXINPUT');
  static const TxRequest_RequestType TXOUTPUT = TxRequest_RequestType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TXOUTPUT');
  static const TxRequest_RequestType TXMETA = TxRequest_RequestType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TXMETA');
  static const TxRequest_RequestType TXFINISHED = TxRequest_RequestType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TXFINISHED');
  static const TxRequest_RequestType TXEXTRADATA = TxRequest_RequestType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TXEXTRADATA');
  static const TxRequest_RequestType TXORIGINPUT = TxRequest_RequestType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TXORIGINPUT');
  static const TxRequest_RequestType TXORIGOUTPUT = TxRequest_RequestType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TXORIGOUTPUT');
  static const TxRequest_RequestType TXPAYMENTREQ = TxRequest_RequestType._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TXPAYMENTREQ');

  static const $core.List<TxRequest_RequestType> values = <TxRequest_RequestType> [
    TXINPUT,
    TXOUTPUT,
    TXMETA,
    TXFINISHED,
    TXEXTRADATA,
    TXORIGINPUT,
    TXORIGOUTPUT,
    TXPAYMENTREQ,
  ];

  static final $core.Map<$core.int, TxRequest_RequestType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TxRequest_RequestType? valueOf($core.int value) => _byValue[value];

  const TxRequest_RequestType._($core.int v, $core.String n) : super(v, n);
}

