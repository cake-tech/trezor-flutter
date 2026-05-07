///
//  Generated code. Do not modify.
//  source: messages-monero.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MoneroNetworkType extends $pb.ProtobufEnum {
  static const MoneroNetworkType MAINNET = MoneroNetworkType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MAINNET');
  static const MoneroNetworkType TESTNET = MoneroNetworkType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TESTNET');
  static const MoneroNetworkType STAGENET = MoneroNetworkType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STAGENET');
  static const MoneroNetworkType FAKECHAIN = MoneroNetworkType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAKECHAIN');

  static const $core.List<MoneroNetworkType> values = <MoneroNetworkType> [
    MAINNET,
    TESTNET,
    STAGENET,
    FAKECHAIN,
  ];

  static final $core.Map<$core.int, MoneroNetworkType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MoneroNetworkType? valueOf($core.int value) => _byValue[value];

  const MoneroNetworkType._($core.int v, $core.String n) : super(v, n);
}

