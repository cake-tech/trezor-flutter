import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/models/bluetooth_options.dart';
import 'package:trezor_flutter/src/trezor/trezor_ble_manager.dart';
import 'package:trezor_flutter/src/trezor/trezor_ble_search_manager.dart';
import 'package:trezor_flutter/src/trezor/trezor_usb_manager.dart';
import 'package:trezor_flutter/src/trezor_connection.dart';
import 'package:trezor_flutter/src/utils/cancel_stream_transformer.dart';
import 'package:universal_ble/universal_ble.dart';

import 'api/api.dart';
import 'models/connection_type.dart';
import 'models/trezor_device.dart';

typedef PermissionRequestCallback = Future<bool> Function(
  AvailabilityState status,
);

TrezorInterface? _trezorBle;
TrezorInterface? _trezorUsb;

sealed class TrezorInterface {
  static TrezorInterface ble({
    required PermissionRequestCallback onPermissionRequest,
    BluetoothOptions? bleOptions,
  }) =>
      _trezorBle ??= _TrezorBle(
        bleOptions: bleOptions ?? BluetoothOptions(),
        onPermissionRequest: onPermissionRequest,
      );

  static TrezorInterface usb() => _trezorUsb ??= _TrezorUSB();

  final ConnectionManager _connectionManager;

  TrezorInterface(this._connectionManager);

  Stream<TrezorDevice> scan();

  Future<void> stopScanning();

  Future<TrezorConnection> connect(TrezorDevice device) async {
    // Before we connect, we want to stop scanning for devices
    try {
      await stopScanning();
    } catch (ex) {
      // no-op
    }
    await _connectionManager.connect(device);

    return TrezorConnection(_connectionManager, device);
  }

  Future<void> dispose({Function? onError}) async {
    switch (_connectionManager.connectionType) {
      case ConnectionType.usb:
        _trezorUsb = null;
        break;
      case ConnectionType.ble:
        _trezorBle = null;
        break;
    }

    try {
      await stopScanning();
    } catch (_) {
      // no-op
    }

    try {
      await _connectionManager.dispose();
    } catch (ex) {
      onError?.call(
        DisposeException(connectionType: _connectionManager.connectionType, cause: ex),
      );
    }
  }

  Future<AvailabilityState> get status => _connectionManager.status;

  Stream<AvailabilityState> get statusStateChanges => _connectionManager.statusStateChanges;

  Future<List<TrezorDevice>> get devices async => _connectionManager.devices;

  Stream<BleConnectionState> get deviceStateChanges => _connectionManager.deviceStateChanges;
}

class _TrezorBle extends TrezorInterface {
  final BleSearchManager _bleSearchManager;
  final PermissionRequestCallback onPermissionRequest;

  _TrezorBle({
    required BluetoothOptions bleOptions,
    required this.onPermissionRequest,
  })  : _bleSearchManager = TrezorBleSearchManager(
          options: bleOptions,
          onPermissionRequest: onPermissionRequest,
        ),
        super(TrezorBleConnectionManager(onPermissionRequest: onPermissionRequest));

  @override
  Stream<TrezorDevice> scan() => _bleSearchManager.scan().onCancel(() => stopScanning());

  @override
  Future<void> stopScanning() => _bleSearchManager.stop();
}

class _TrezorUSB extends TrezorInterface {
  _TrezorUSB() : super(TrezorUsbManager());

  @override
  Stream<TrezorDevice> scan() => Stream.fromFuture(devices).expand((element) => element);

  @override
  Future<void> stopScanning() async {} // NO-OP for USB
}
