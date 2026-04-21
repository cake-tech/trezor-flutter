import 'dart:async';

import 'package:flutter/services.dart';
import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/models/connection_type.dart';
import 'package:trezor_flutter/src/models/trezor_device.dart';
import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';
import 'package:trezor_flutter/src/utils/exception_utils.dart';
import 'package:ledger_usb_plus/ledger_usb.dart';
import 'package:ledger_usb_plus/usb_device.dart';
import 'package:universal_ble/universal_ble.dart';
import 'package:universal_platform/universal_platform.dart';

import '../api/api.dart';

class TrezorUsbManager extends ConnectionManager {
  bool _disposed = false;

  final _usbTransport = LedgerUsb();

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
      final apdus = await operation.write(writer);
      final response = await _usbTransport.exchange(apdus);
      final reader = ByteDataReader();
      if (transformer != null) {
        final transformed = await transformer.onTransform(response);
        reader.add(transformed);
      } else {
        reader.add(response.expand((e) => e).toList());
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
      final ledgerUsbDevices = await _usbTransport.listDevices();
      return ledgerUsbDevices //
          .map(TrezorDevice.usb)
          .toList();
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
}
