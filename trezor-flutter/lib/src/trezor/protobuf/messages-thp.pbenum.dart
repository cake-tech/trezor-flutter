///
//  Generated code. Do not modify.
//  source: messages-thp.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ThpMessageType extends $pb.ProtobufEnum {
  static const ThpMessageType ThpMessageType_Cancel = ThpMessageType._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_Cancel');
  static const ThpMessageType ThpMessageType_ButtonRequest = ThpMessageType._(26, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ButtonRequest');
  static const ThpMessageType ThpMessageType_ButtonAck = ThpMessageType._(27, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ButtonAck');
  static const ThpMessageType ThpMessageType_ThpPairingRequest = ThpMessageType._(1008, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpPairingRequest');
  static const ThpMessageType ThpMessageType_ThpPairingRequestApproved = ThpMessageType._(1009, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpPairingRequestApproved');
  static const ThpMessageType ThpMessageType_ThpSelectMethod = ThpMessageType._(1010, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpSelectMethod');
  static const ThpMessageType ThpMessageType_ThpPairingPreparationsFinished = ThpMessageType._(1011, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpPairingPreparationsFinished');
  static const ThpMessageType ThpMessageType_ThpCredentialRequest = ThpMessageType._(1016, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpCredentialRequest');
  static const ThpMessageType ThpMessageType_ThpCredentialResponse = ThpMessageType._(1017, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpCredentialResponse');
  static const ThpMessageType ThpMessageType_ThpEndRequest = ThpMessageType._(1018, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpEndRequest');
  static const ThpMessageType ThpMessageType_ThpEndResponse = ThpMessageType._(1019, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpEndResponse');
  static const ThpMessageType ThpMessageType_ThpCodeEntryCommitment = ThpMessageType._(1024, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpCodeEntryCommitment');
  static const ThpMessageType ThpMessageType_ThpCodeEntryChallenge = ThpMessageType._(1025, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpCodeEntryChallenge');
  static const ThpMessageType ThpMessageType_ThpCodeEntryCpaceTrezor = ThpMessageType._(1026, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpCodeEntryCpaceTrezor');
  static const ThpMessageType ThpMessageType_ThpCodeEntryCpaceHostTag = ThpMessageType._(1027, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpCodeEntryCpaceHostTag');
  static const ThpMessageType ThpMessageType_ThpCodeEntrySecret = ThpMessageType._(1028, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpCodeEntrySecret');
  static const ThpMessageType ThpMessageType_ThpQrCodeTag = ThpMessageType._(1032, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpQrCodeTag');
  static const ThpMessageType ThpMessageType_ThpQrCodeSecret = ThpMessageType._(1033, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpQrCodeSecret');
  static const ThpMessageType ThpMessageType_ThpNfcTagHost = ThpMessageType._(1040, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpNfcTagHost');
  static const ThpMessageType ThpMessageType_ThpNfcTagTrezor = ThpMessageType._(1041, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ThpMessageType_ThpNfcTagTrezor');

  static const $core.List<ThpMessageType> values = <ThpMessageType> [
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

  static final $core.Map<$core.int, ThpMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ThpMessageType? valueOf($core.int value) => _byValue[value];

  const ThpMessageType._($core.int v, $core.String n) : super(v, n);
}

class ThpPairingMethod extends $pb.ProtobufEnum {
  static const ThpPairingMethod SkipPairing = ThpPairingMethod._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SkipPairing');
  static const ThpPairingMethod CodeEntry = ThpPairingMethod._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CodeEntry');
  static const ThpPairingMethod QrCode = ThpPairingMethod._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'QrCode');
  static const ThpPairingMethod NFC = ThpPairingMethod._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NFC');

  static const $core.List<ThpPairingMethod> values = <ThpPairingMethod> [
    SkipPairing,
    CodeEntry,
    QrCode,
    NFC,
  ];

  static final $core.Map<$core.int, ThpPairingMethod> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ThpPairingMethod? valueOf($core.int value) => _byValue[value];

  const ThpPairingMethod._($core.int v, $core.String n) : super(v, n);
}

