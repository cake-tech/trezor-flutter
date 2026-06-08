import 'package:trezor_flutter/src/concurrency/request_queue.dart';
import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/models/connection_type.dart';
import 'package:trezor_flutter/src/models/trezor_device.dart';
import 'package:trezor_flutter/src/trezor/transformer/crc_validator_transformer.dart';

import 'api/api.dart';
import 'operations/trezor_operations.dart';

class TrezorConnection {
  final RequestQueue _requestQueue = RequestQueue();
  final ConnectionManager _connectionManager;
  final TrezorTransformer transformer;

  final TrezorDevice device;

  bool _isDisconnected = false;

  bool get isDisconnected => _isDisconnected;

  ConnectionType get connectionType => _connectionManager.connectionType;

  TrezorConnection(
    this._connectionManager,
    this.device, {
    this.transformer = const CrcValidator(),
  });

  /// Pending/ongoing requests are cancelled (will throw [StateError])
  Future<void> disconnect() {
    if (_isDisconnected) return Future.value();

    _isDisconnected = true;
    _requestQueue.dispose();
    return _connectionManager.disconnect(device.id);
  }

  Future<T> sendOperation<T>(
    TrezorOperation<T> operation, {
    TrezorTransformer? transformer,
  }) async {
    if (_isDisconnected) {
      throw DeviceNotConnectedException(
        requestedOperation: '(_isDisconnected = $_isDisconnected) sendOperation',
        connectionType: _connectionManager.connectionType,
      );
    }

    return _requestQueue.enqueueRequest(
      () => _sendOperationImpl(device, operation, transformer ?? this.transformer),
    );
  }

  Future<void> sendOutOfBand(TrezorOperation operation) {
    if (_isDisconnected) return Future.value();

    return _connectionManager.sendOutOfBand(device, operation);
  }

  Future<T> _sendOperationImpl<T>(
    TrezorDevice device,
    TrezorOperation<T> operation,
    TrezorTransformer transformer,
  ) =>
      _connectionManager.sendRawOperation<T>(device, operation, transformer);
}
