import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/api/trezor_transformer.dart';
import 'package:trezor_flutter/trezor_flutter.dart';
import 'package:universal_ble/universal_ble.dart';

abstract class ConnectionManager {
  Future<void> connect(TrezorDevice device);

  Future<void> disconnect(String deviceId);

  Future<T> sendRawOperation<T>(
      TrezorDevice device,
    TrezorOperation<T> operation,
    TrezorTransformer? transformer,
  );

  Future<void> sendOutOfBand(TrezorDevice device, TrezorOperation operation);

  Future<void> dispose();

  ConnectionType get connectionType;

  /// Returns the current status of the BLE subsystem of the host device.
  Future<AvailabilityState> get status;

  /// A stream providing the host device BLE subsystem status updates.
  Stream<AvailabilityState> get statusStateChanges;

  /// A stream providing connection updates for all the connected BLE devices.
  Stream<BleConnectionState> get deviceStateChanges;

  /// Get a list of connected [TrezorDevice]s.
  Future<List<TrezorDevice>> get devices;
}
