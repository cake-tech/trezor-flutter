import 'dart:async';

import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/models/connection_type.dart';
import 'package:trezor_flutter/src/models/discovered_device.dart';
import 'package:trezor_flutter/src/models/trezor_device.dart';
import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/trezor/trezor_gatt_gateway.dart';
import 'package:trezor_flutter/src/trezor_interface.dart';
import 'package:universal_ble/universal_ble.dart';

import '../api/api.dart';

const _bleMasterTimeout = Duration(seconds: 60);
const _bleConnectionTimeout = Duration(seconds: 30);
const _bleCheckConnectionTimeout = Duration(seconds: 5);

class TrezorBleConnectionManager extends ConnectionManager {
  bool _disposed = false;

  final PermissionRequestCallback onPermissionRequest;

  final _connectedDevices =
      <String, ({GattGateway gateway, TrezorDevice device})>{};
  final _connectionStateControllers =
      <String, StreamController<BleConnectionState>>{};

  final List<OnConnectionChange> _connectionChangeListeners = [];

  final _onConnectionChangeController = StreamController<BleConnectionState>();
  final _statusStateChangesController = StreamController<AvailabilityState>();

  TrezorBleConnectionManager({
    required this.onPermissionRequest,
  }) {
    _connectionChangeListeners.add(_handleConnectionChange);
    UniversalBle.onConnectionChange = (deviceId, isConnected, error) {
      // TODO this is not correct cause it doesn't account for deviceId
      final state = isConnected
          ? BleConnectionState.connected
          : BleConnectionState.disconnected;
      _onConnectionChangeController.add(state);

      // Copy the list because we get a ConcurrentModificationError otherwise
      final connectionChangeListeners = List.from(
        _connectionChangeListeners,
        growable: false,
      );

      for (final listener in connectionChangeListeners) {
        listener(deviceId, isConnected);
      }
    };
  }

  @override
  Future<void> connect(TrezorDevice device) async {
    if (_disposed) throw TrezorManagerDisposedException(ConnectionType.ble);

    final availabilityState = await UniversalBle.getBluetoothAvailabilityState();
    final granted = await onPermissionRequest(availabilityState);
    if (!granted) {
      return;
    }

    UniversalBle.timeout = _bleMasterTimeout;

    try {
      try {
        final connectionState = await UniversalBle.getConnectionState(
          device.id,
        ).timeout(
          _bleCheckConnectionTimeout,
          onTimeout: () => BleConnectionState.disconnected,
        );
        switch (connectionState) {
          case BleConnectionState.connected:
          case BleConnectionState.connecting:
            break;
          case BleConnectionState.disconnected:
          case BleConnectionState.disconnecting:
            await UniversalBle.connect(device.id);
        }
      } catch (e) {
        disconnect(device.id).ignore();
        throw EstablishConnectionException(
          connectionType: ConnectionType.ble,
          nestedError: e,
        );
      }

      final services = await UniversalBle.discoverServices(device.id).timeout(
        _bleConnectionTimeout,
        onTimeout: () => throw TimeoutException(
          "UniversalBle.discoverServices",
          _bleConnectionTimeout,
        ),
      );

      final subscription = _getOrCreateConnectionStateController(device.id);

      final trezor = DiscoveredDevice(
        device: device,
        services: services,
        subscription: subscription.stream.listen((state) {}),
      );

      final gateway = TrezorGattGateway(trezor: trezor);

      await gateway.start().timeout(
        _bleMasterTimeout,
        onTimeout: () => throw TimeoutException(
          "gateway.start",
          _bleMasterTimeout,
        ),
      );
      _connectedDevices[device.id] = (gateway: gateway, device: device);
    } on TrezorException {
      await disconnect(device.id);
      rethrow;
    }
  }

  Future<void> _handleConnectionChange(
      String deviceId, bool isConnected, String? error) async {
    final state = isConnected
        ? BleConnectionState.connected
        : BleConnectionState.disconnected;
    _getOrCreateConnectionStateController(deviceId).add(state);
  }

  StreamController<BleConnectionState> _getOrCreateConnectionStateController(
    String deviceId,
  ) =>
      _connectionStateControllers.putIfAbsent(
        deviceId,
        () => StreamController<BleConnectionState>.broadcast(),
      );

  @override
  Future<T> sendRawOperation<T>(
    TrezorDevice device,
    TrezorOperation<T> operation,
    TrezorTransformer? transformer,
  ) async {
    if (_disposed) throw TrezorManagerDisposedException(ConnectionType.ble);

    final d = _connectedDevices[device.id];
    if (d == null) {
      throw DeviceNotConnectedException(
        requestedOperation: 'ble_manager: sendOperation',
        connectionType: ConnectionType.ble,
      );
    }

    return d.gateway.sendOperation<T>(
      operation,
      transformer: transformer,
    );
  }

  @override
  Future<AvailabilityState> get status {
    if (_disposed) throw TrezorManagerDisposedException(ConnectionType.ble);

    return UniversalBle.getBluetoothAvailabilityState();
  }

  @override
  Stream<AvailabilityState> get statusStateChanges {
    if (_disposed) throw TrezorManagerDisposedException(ConnectionType.ble);

    UniversalBle.onAvailabilityChange = (state) {
      _statusStateChangesController.add(state);
    };
    return _statusStateChangesController.stream;
  }

  @override
  Future<List<TrezorDevice>> get devices async {
    if (_disposed) throw TrezorManagerDisposedException(ConnectionType.ble);

    return _connectedDevices.values.map((e) => e.device).toList();
  }

  @override
  Stream<BleConnectionState> get deviceStateChanges {
    if (_disposed) throw TrezorManagerDisposedException(ConnectionType.ble);

    return _onConnectionChangeController.stream;
  }

  @override
  Future<void> disconnect(String deviceId) async {
    if (_disposed) throw TrezorManagerDisposedException(ConnectionType.ble);

    await _disconnect(deviceId);
  }

  // Bypass dispose check here because this method is called from dispose
  Future<void> _disconnect(String deviceId) async {
    final gateway = _connectedDevices.remove(deviceId)?.gateway;
    if (gateway != null) {
      // UniversalBle.disconnect is called internally by gateway.disconnect
      await gateway.disconnect();
    } else {
      await UniversalBle.disconnect(deviceId);
    }

    _connectionStateControllers.remove(deviceId)?.close();
  }

  @override
  Future<void> dispose() async {
    if (_disposed) return;
    _disposed = true;

    _onConnectionChangeController.close();
    _statusStateChangesController.close();

    final deviceIds = List<String>.from(_connectedDevices.keys);
    for (final deviceId in deviceIds) {
      try {
        await _disconnect(deviceId);
      } catch (e) {
        // ignore
      }
    }
    _connectedDevices.clear();
    for (final controller in _connectionStateControllers.values) {
      try {
        await controller.close();
      } catch (e) {
        // ignore
      }
    }
    _connectionStateControllers.clear();
    UniversalBle.onConnectionChange = null;
    UniversalBle.onAvailabilityChange = null;
  }

  @override
  final ConnectionType connectionType = ConnectionType.ble;
}
