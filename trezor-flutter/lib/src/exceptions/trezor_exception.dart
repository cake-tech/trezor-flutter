import 'dart:typed_data';

import 'package:trezor_flutter/src/trezor/protobuf/messages-common.pb.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

sealed class TrezorException implements Exception {}

class TrezorFailureException extends TrezorException {
  final Failure _fail;

  TrezorFailureException(this._fail);

  int get code => _fail.code.value;

  String get codeName => _fail.code.name;

  String get message => _fail.message;

  @override
  String toString() => "$runtimeType($code, $message)";
}

class PermissionException extends TrezorException {
  final ConnectionType connectionType;

  PermissionException({
    required this.connectionType,
  });

  @override
  String toString() => "$runtimeType($connectionType)";
}

class EstablishConnectionException extends TrezorException {
  final ConnectionType connectionType;
  final Object nestedError;

  EstablishConnectionException({
    required this.connectionType,
    required this.nestedError,
  });

  @override
  String toString() => "$runtimeType($connectionType, $nestedError)";
}

class ConnectionLostException extends TrezorException {
  final ConnectionType connectionType;

  ConnectionLostException({
    required this.connectionType,
  });

  @override
  String toString() => "$runtimeType($connectionType)";
}

class TrezorManagerDisposedException extends TrezorException {
  final ConnectionType connectionType;

  TrezorManagerDisposedException(this.connectionType);

  @override
  String toString() => "$runtimeType($connectionType)";
}

class DisposeException extends TrezorException {
  final ConnectionType connectionType;
  final Object? cause;

  DisposeException({
    required this.connectionType,
    required this.cause,
  });

  @override
  String toString() => "$runtimeType($connectionType, $cause)";
}

class DeviceNotConnectedException extends TrezorException {
  final ConnectionType connectionType;
  final String requestedOperation;

  DeviceNotConnectedException({
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

  ServiceNotSupportedException({
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

  TrezorDeviceException({
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

  UnexpectedDataPacketException({
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
