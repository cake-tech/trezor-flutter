import 'dart:async';

import 'package:flutter/services.dart';
import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/operations/trezor/thp_ack_operation.dart';
import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/trezor/protocol/decoder.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';
import 'package:trezor_flutter/src/utils/exception_utils.dart';
import 'package:trezor_flutter/trezor_flutter.dart';
import 'package:trezor_usb_transport/trezor_usb_transport.dart';
import 'package:trezor_usb_transport/usb_device.dart';
import 'package:universal_platform/universal_platform.dart';

import '../api/api.dart';
import 'protocol/constants/constants_v2.dart';

class TrezorUsbManager extends ConnectionManager {
  bool _disposed = false;

  final _usbTransport = TrezorUsbTransport();

  TrezorUsbManager();

  @override
  Future<void> connect(TrezorDevice device) async {
    if (_disposed) throw TrezorManagerDisposedException(connectionType);

    try {
      final usbDevice = UsbDevice.fromIdentifier(device.id);
      await _usbTransport.requestPermission(usbDevice);
      await _usbTransport.open(usbDevice);
    } on PlatformException catch (ex) {
      throw TrezorExceptionUtils.fromPlatformException(ex, connectionType);
    }
  }

  @override
  Future<void> disconnect(String deviceId) async {
    if (_disposed) throw TrezorManagerDisposedException(connectionType);

    try {
      await _usbTransport.close();
    } on PlatformException catch (ex) {
      throw TrezorExceptionUtils.fromPlatformException(ex, connectionType);
    }
  }

  @override
  Future<T> sendRawOperation<T>(
    TrezorDevice device,
    TrezorOperation<T> operation,
    TrezorTransformer? transformer,
  ) async {
    if (_disposed) throw TrezorManagerDisposedException(connectionType);

    try {
      final writer = ByteDataWriter();
      final payloads = await operation.write(writer);
      for (final payload in payloads) {
        await _usbTransport.transferOut(payload);
      }

      final reader = ByteDataReader();
      if (operation is TrezorThpAckOperation) return operation.read(reader);


      var response = await _readResponse();

      if (response case TrezorPackageV2 responsev2) {
        if (responsev2.headers.controlByte == THPControlByte.ackMessage) {
          print("AckMessage ignored");
          response = await _readResponse();
        }
      }


      if (transformer != null) {
        final transformed = await transformer.onTransform([response.asUint8List()]);
        reader.add(transformed);
      } else {
        reader.add(response.asUint8List());
      }

      return operation.read(reader);
    } on PlatformException catch (ex) {
      throw TrezorExceptionUtils.fromPlatformException(ex, connectionType);
    }
  }

  @override // TODO this may need to be implemented
  Stream<BleConnectionState> get deviceStateChanges {
    if (_disposed) throw TrezorManagerDisposedException(connectionType);

    return const Stream.empty();
  }

  @override
  Future<List<TrezorDevice>> get devices async {
    if (_disposed) throw TrezorManagerDisposedException(connectionType);

    try {
      final usbDevices = await _usbTransport.listDevices();
      return usbDevices.map(TrezorDevice.usb).toList();
    } on PlatformException catch (ex) {
      throw TrezorExceptionUtils.fromPlatformException(ex, connectionType);
    }
  }

  @override
  Future<AvailabilityState> get status async => UniversalPlatform.isIOS
      ? AvailabilityState.unsupported
      : AvailabilityState.poweredOn;

  @override
  Stream<AvailabilityState> get statusStateChanges {
    if (_disposed) throw TrezorManagerDisposedException(connectionType);

    return const Stream.empty();
  }

  @override
  final ConnectionType connectionType = ConnectionType.usb;

  @override
  Future<void> dispose() async {
    if (_disposed) return;
    _disposed = true;

    try {
      await _usbTransport.close();
    } on PlatformException catch (ex) {
      throw TrezorExceptionUtils.fromPlatformException(ex, connectionType);
    }
  }

  Future<TrezorPackage> _readResponse() async {
    final firstPackageRaw = await _usbTransport.transferIn();
    var package = TrezorDecoder.decodePackage(firstPackageRaw!);

    while (package.needsContinuationPacket) {
      final packageRaw = await _usbTransport.transferIn();
      final continuationPacket = TrezorDecoder.decodePackage(packageRaw!);

      if (package is TrezorPackageV1) {
        package = TrezorDecoder.reconstructV1Payload([package, continuationPacket]);
      } else if (package is TrezorPackageV2) {
        package = TrezorDecoder.reconstructV2Payload([package, continuationPacket]);
      }
    }

    return package;
  }
}
