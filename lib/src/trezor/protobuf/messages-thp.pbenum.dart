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

/// *
///  Mapping between Trezor wire identifier (uint) and a Thp protobuf message
class ThpMessageType extends $pb.ProtobufEnum {
  static const ThpMessageType ThpMessageType_Cancel =
      ThpMessageType._(20, _omitEnumNames ? '' : 'ThpMessageType_Cancel');
  static const ThpMessageType ThpMessageType_ButtonRequest = ThpMessageType._(
      26, _omitEnumNames ? '' : 'ThpMessageType_ButtonRequest');
  static const ThpMessageType ThpMessageType_ButtonAck =
      ThpMessageType._(27, _omitEnumNames ? '' : 'ThpMessageType_ButtonAck');
  static const ThpMessageType ThpMessageType_ThpPairingRequest =
      ThpMessageType._(
          1008, _omitEnumNames ? '' : 'ThpMessageType_ThpPairingRequest');
  static const ThpMessageType ThpMessageType_ThpPairingRequestApproved =
      ThpMessageType._(1009,
          _omitEnumNames ? '' : 'ThpMessageType_ThpPairingRequestApproved');
  static const ThpMessageType ThpMessageType_ThpSelectMethod = ThpMessageType._(
      1010, _omitEnumNames ? '' : 'ThpMessageType_ThpSelectMethod');
  static const ThpMessageType ThpMessageType_ThpPairingPreparationsFinished =
      ThpMessageType._(
          1011,
          _omitEnumNames
              ? ''
              : 'ThpMessageType_ThpPairingPreparationsFinished');
  static const ThpMessageType ThpMessageType_ThpCredentialRequest =
      ThpMessageType._(
          1016, _omitEnumNames ? '' : 'ThpMessageType_ThpCredentialRequest');
  static const ThpMessageType ThpMessageType_ThpCredentialResponse =
      ThpMessageType._(
          1017, _omitEnumNames ? '' : 'ThpMessageType_ThpCredentialResponse');
  static const ThpMessageType ThpMessageType_ThpEndRequest = ThpMessageType._(
      1018, _omitEnumNames ? '' : 'ThpMessageType_ThpEndRequest');
  static const ThpMessageType ThpMessageType_ThpEndResponse = ThpMessageType._(
      1019, _omitEnumNames ? '' : 'ThpMessageType_ThpEndResponse');
  static const ThpMessageType ThpMessageType_ThpCodeEntryCommitment =
      ThpMessageType._(
          1024, _omitEnumNames ? '' : 'ThpMessageType_ThpCodeEntryCommitment');
  static const ThpMessageType ThpMessageType_ThpCodeEntryChallenge =
      ThpMessageType._(
          1025, _omitEnumNames ? '' : 'ThpMessageType_ThpCodeEntryChallenge');
  static const ThpMessageType ThpMessageType_ThpCodeEntryCpaceTrezor =
      ThpMessageType._(
          1026, _omitEnumNames ? '' : 'ThpMessageType_ThpCodeEntryCpaceTrezor');
  static const ThpMessageType ThpMessageType_ThpCodeEntryCpaceHostTag =
      ThpMessageType._(1027,
          _omitEnumNames ? '' : 'ThpMessageType_ThpCodeEntryCpaceHostTag');
  static const ThpMessageType ThpMessageType_ThpCodeEntrySecret =
      ThpMessageType._(
          1028, _omitEnumNames ? '' : 'ThpMessageType_ThpCodeEntrySecret');
  static const ThpMessageType ThpMessageType_ThpQrCodeTag = ThpMessageType._(
      1032, _omitEnumNames ? '' : 'ThpMessageType_ThpQrCodeTag');
  static const ThpMessageType ThpMessageType_ThpQrCodeSecret = ThpMessageType._(
      1033, _omitEnumNames ? '' : 'ThpMessageType_ThpQrCodeSecret');
  static const ThpMessageType ThpMessageType_ThpNfcTagHost = ThpMessageType._(
      1040, _omitEnumNames ? '' : 'ThpMessageType_ThpNfcTagHost');
  static const ThpMessageType ThpMessageType_ThpNfcTagTrezor = ThpMessageType._(
      1041, _omitEnumNames ? '' : 'ThpMessageType_ThpNfcTagTrezor');

  static const $core.List<ThpMessageType> values = <ThpMessageType>[
    ThpMessageType_Cancel,
    ThpMessageType_ButtonRequest,
    ThpMessageType_ButtonAck,
    ThpMessageType_ThpPairingRequest,
    ThpMessageType_ThpPairingRequestApproved,
    ThpMessageType_ThpSelectMethod,
    ThpMessageType_ThpPairingPreparationsFinished,
    ThpMessageType_ThpCredentialRequest,
    ThpMessageType_ThpCredentialResponse,
    ThpMessageType_ThpEndRequest,
    ThpMessageType_ThpEndResponse,
    ThpMessageType_ThpCodeEntryCommitment,
    ThpMessageType_ThpCodeEntryChallenge,
    ThpMessageType_ThpCodeEntryCpaceTrezor,
    ThpMessageType_ThpCodeEntryCpaceHostTag,
    ThpMessageType_ThpCodeEntrySecret,
    ThpMessageType_ThpQrCodeTag,
    ThpMessageType_ThpQrCodeSecret,
    ThpMessageType_ThpNfcTagHost,
    ThpMessageType_ThpNfcTagTrezor,
  ];

  static final $core.Map<$core.int, ThpMessageType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ThpMessageType? valueOf($core.int value) => _byValue[value];

  const ThpMessageType._(super.value, super.name);
}

/// *
///  Numeric identifiers of pairing methods.
///  @embed
class ThpPairingMethod extends $pb.ProtobufEnum {
  static const ThpPairingMethod SkipPairing =
      ThpPairingMethod._(1, _omitEnumNames ? '' : 'SkipPairing');
  static const ThpPairingMethod CodeEntry =
      ThpPairingMethod._(2, _omitEnumNames ? '' : 'CodeEntry');
  static const ThpPairingMethod QrCode =
      ThpPairingMethod._(3, _omitEnumNames ? '' : 'QrCode');
  static const ThpPairingMethod NFC =
      ThpPairingMethod._(4, _omitEnumNames ? '' : 'NFC');

  static const $core.List<ThpPairingMethod> values = <ThpPairingMethod>[
    SkipPairing,
    CodeEntry,
    QrCode,
    NFC,
  ];

  static final $core.List<ThpPairingMethod?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static ThpPairingMethod? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ThpPairingMethod._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
