import 'dart:typed_data';

import 'package:trezor_flutter/src/trezor/protobuf/messages-common.pb.dart';
import 'package:trezor_flutter/src/models/connection_type.dart';

sealed class TrezorException implements Exception {
  const TrezorException();
}

class TrezorProtocolException extends TrezorException {
  final String message;

  const TrezorProtocolException(this.message);

  @override
  String toString() => "$runtimeType: $message";
}

class TrezorFailureException extends TrezorException {
  final Failure _fail;

  const TrezorFailureException(this._fail);

  int get code => _fail.code.value;

  String get codeName => _fail.code.name;

  String get message => _fail.message;

  @override
  String toString() => "$runtimeType($code, $message)";
}

class PermissionException extends TrezorException {
  final ConnectionType connectionType;

  const PermissionException({required this.connectionType});

  @override
  String toString() => "$runtimeType($connectionType)";
}

class EstablishConnectionException extends TrezorException {
  final ConnectionType connectionType;
  final Object nestedError;

  const EstablishConnectionException({required this.connectionType, required this.nestedError});

  @override
  String toString() => "$runtimeType($connectionType, $nestedError)";
}

class ConnectionLostException extends TrezorException {
  final ConnectionType connectionType;

  const ConnectionLostException({required this.connectionType});

  @override
  String toString() => "$runtimeType($connectionType)";
}

class TrezorManagerDisposedException extends TrezorException {
  final ConnectionType connectionType;

  const TrezorManagerDisposedException(this.connectionType);

  @override
  String toString() => "$runtimeType($connectionType)";
}

class DisposeException extends TrezorException {
  final ConnectionType connectionType;
  final Object? cause;

  const DisposeException({required this.connectionType, required this.cause});

  @override
  String toString() => "$runtimeType($connectionType, $cause)";
}

class DeviceNotConnectedException extends TrezorException {
  final ConnectionType connectionType;
  final String requestedOperation;

  const DeviceNotConnectedException({
    required this.connectionType,
    required this.requestedOperation,
  });

  @override
  String toString() => "$runtimeType($connectionType, $requestedOperation)";
}

class ServiceNotSupportedException extends TrezorException {
  final ConnectionType connectionType;
  final String message;
  final Object? nestedError;

  const ServiceNotSupportedException({
    required this.connectionType,
    required this.message,
    this.nestedError,
  });

  @override
  String toString() => "$runtimeType($connectionType, $message)\n$nestedError";
}

class TrezorDeviceException extends TrezorException {
  final String message;
  final Object? cause;
  final int errorCode;
  final ConnectionType connectionType;

  const TrezorDeviceException({
    this.message = "",
    this.cause,
    this.errorCode = 0x6F00,
    required this.connectionType,
  });

  @override
  String toString() => "$runtimeType($connectionType, $errorCode, $message)\n$cause";
}

class UnexpectedDataPacketException extends TrezorException {
  final Uint8List? data;
  final UnexpectedDataPacketReason reason;
  final ConnectionType connectionType;

  const UnexpectedDataPacketException({
    this.data,
    required this.reason,
    required this.connectionType,
  });

  @override
  String toString() => "$runtimeType($connectionType, $reason)\n$data";
}

enum UnexpectedDataPacketReason {
  tooShortLength,
  indexAlreadySet,
  dataLengthAlreadySet,
  receivedDataWithNoPendingRequest,
}

enum TrezorChannelError {
  busy(0x01, "ThpTransportBusy"),
  unallocatedChannel(0x02, "ThpUnallocatedChannel"),
  decryptionFailed(0x03, "ThpDecryptionFailed"),
  deviceLocked(0x05, "ThpDeviceLocked"),
  unknown(null, "ThpUnknownError");

  const TrezorChannelError(this.code, this.label);

  /// Wire value of the THP error frame; `null` for [unknown]
  final int? code;
  final String label;

  static TrezorChannelError fromCode(int code) =>
      values.firstWhere((e) => e.code == code, orElse: () => unknown);
}

class TrezorChannelException extends TrezorException {
  const TrezorChannelException(this.error);

  final TrezorChannelError error;

  @override
  String toString() => "$runtimeType(${error.label})";
}

class TrezorSessionExpiredException extends TrezorException {
  const TrezorSessionExpiredException();

  @override
  String toString() => "$runtimeType()";
}
