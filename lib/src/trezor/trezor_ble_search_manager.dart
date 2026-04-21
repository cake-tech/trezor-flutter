import 'dart:async';

import 'package:rxdart/subjects.dart';
import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/models/bluetooth_options.dart';
import 'package:trezor_flutter/src/models/connection_type.dart';
import 'package:trezor_flutter/src/models/trezor_device.dart';
import 'package:trezor_flutter/src/trezor/trezor_device_type.dart';
import 'package:trezor_flutter/src/trezor_interface.dart';
import 'package:universal_ble/universal_ble.dart';

import '../api/api.dart';

class TrezorBleSearchManager extends BleSearchManager {
  final List<String> _withServices = TrezorDeviceType.ble.map((e) => e.serviceId).toList();

  final BluetoothOptions _options;
  final PermissionRequestCallback _onPermissionRequest;

  bool _isScanning = false;
  ReplaySubject<TrezorDevice> _devicesSubject = ReplaySubject<TrezorDevice>();

  TrezorBleSearchManager({
    required BluetoothOptions options,
    required PermissionRequestCallback onPermissionRequest,
  })  : _options = options,
        _onPermissionRequest = onPermissionRequest;

  @override
  Stream<TrezorDevice> scan() async* {
    if (!(await _checkPermissions())) {
      throw PermissionException(connectionType: ConnectionType.ble);
    }
    if (_isScanning) {
      yield* _devicesSubject.stream;
      return;
    }
    _isScanning = true;
    _devicesSubject = ReplaySubject();

    final Set<String> scannedIds = {};

    // attach BLE listener
    UniversalBle.onScanResult = (device) {
      if (scannedIds.contains(device.deviceId)) {
        return;
      }

      final deviceInfo = TrezorDeviceType.ble.firstWhere(
        (deviceType) => device.services
            .map((e) => e.toLowerCase())
            .contains(deviceType.serviceId.toLowerCase()),
        orElse: () => TrezorDeviceType.safe7,
      );

      final lDevice = TrezorDevice.ble(
        id: device.deviceId,
        name: device.name ?? '',
        rssi: device.rssi ?? 0,
        deviceInfo: deviceInfo,
      );

      scannedIds.add(lDevice.id);
      if (_devicesSubject.isClosed) {
        // ignore: avoid_print
        print(
          "UniversalBle.onScanResult: Unexpected device scan intercepted after stream closed",
        );
        return;
      } else {
        _devicesSubject.add(lDevice);
      }
    };

    _performBleScan();

    yield* _devicesSubject.stream;
  }

  Future<bool> _checkPermissions() async {
    final state = await UniversalBle.getBluetoothAvailabilityState();
    return await _onPermissionRequest(state);
  }

  Future<void> _performBleScan() async {
    try {
      await UniversalBle.startScan(
        scanFilter: ScanFilter(withServices: _withServices),
      );

      await Future.delayed(_options.maxScanDuration);
    } finally {
      await stop();
    }
  }

  @override
  Future<void> stop() async {
    if (!_isScanning) {
      return;
    }

    try {
      _isScanning = false;
      await UniversalBle.stopScan();
    } finally {
      unawaited(_devicesSubject.close());
      UniversalBle.onScanResult = null;
    }
  }

  @override
  Future<void> dispose() async {
    await stop();
  }

  /// Returns the current status of the BLE subsystem of the host device.
  Future<AvailabilityState> get status => UniversalBle.getBluetoothAvailabilityState();
}
