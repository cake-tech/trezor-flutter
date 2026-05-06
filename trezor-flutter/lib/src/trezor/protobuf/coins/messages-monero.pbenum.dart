// This is a generated file - do not edit.
//
// Generated from messages-monero.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MoneroNetworkType extends $pb.ProtobufEnum {
  static const MoneroNetworkType MAINNET =
      MoneroNetworkType._(0, _omitEnumNames ? '' : 'MAINNET');
  static const MoneroNetworkType TESTNET =
      MoneroNetworkType._(1, _omitEnumNames ? '' : 'TESTNET');
  static const MoneroNetworkType STAGENET =
      MoneroNetworkType._(2, _omitEnumNames ? '' : 'STAGENET');
  static const MoneroNetworkType FAKECHAIN =
      MoneroNetworkType._(3, _omitEnumNames ? '' : 'FAKECHAIN');

  static const $core.List<MoneroNetworkType> values = <MoneroNetworkType>[
    MAINNET,
    TESTNET,
    STAGENET,
    FAKECHAIN,
  ];

  static final $core.List<MoneroNetworkType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static MoneroNetworkType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MoneroNetworkType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
