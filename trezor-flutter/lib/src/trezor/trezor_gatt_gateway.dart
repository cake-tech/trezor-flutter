import 'dart:async';
import 'dart:collection';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/models/connection_type.dart';
import 'package:trezor_flutter/src/models/discovered_device.dart';
import 'package:trezor_flutter/src/operations/trezor/thp_ack_operation.dart';
import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/trezor/protocol/constants/constants_v2.dart';
import 'package:trezor_flutter/src/trezor/protocol/decoder.dart';
import 'package:trezor_flutter/src/trezor/trezor_packer.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';
import 'package:trezor_flutter/src/utils/hex_utils.dart';
import 'package:universal_ble/universal_ble.dart';
import 'package:universal_platform/universal_platform.dart';

import '../api/api.dart';

const _bleWriteTimeout = Duration(seconds: 10);

class TrezorGattGateway extends GattGateway {
  final DiscoveredDevice trezor;

  BleCharacteristic? characteristicWrite;
  BleCharacteristic? characteristicNotify;
  int _mtu;
  final BlePacker _packer;

  bool _disposed = false;

  final _pendingOperations = ListQueue<_Request>();
  final Function? _onError;

  TrezorGattGateway({
    required this.trezor,
    BlePacker? packer,
    int mtu = 244,
    Function? onError,
  })  : _mtu = mtu,
        _packer = packer ?? TrezorPacker(),
        _onError = onError;

  /// Pair the device if needed.
  Future<void> _pairDeviceIfNeeded() async {
    /// [Android] Pairing seems to work well
    if (!UniversalPlatform.isAndroid) {
      /// [iOS] Pairing HANGS ENDLESSLY ; seems to work well without requesting explicit pairing
      /// [Web] Not sure what happens ; seems to work well without requesting explicit pairing
      return;
    }

    final isPaired = await UniversalBle.isPaired(
      trezor.device.id,
      pairingCommand: BleCommand(
        service: trezor.device.deviceInfo.serviceId,
        characteristic: trezor.device.deviceInfo.writeCharacteristicKey,
      ),
    );

    final pairCompleter = Completer<void>();
    if (isPaired == false) {
      try {
        UniversalBle.onPairingStateChange = (deviceId, isPaired) {
          if (isPaired) {
            pairCompleter.complete();
          } else {
            pairCompleter.completeError(Exception('Failed to pair'));
          }
        };
        await UniversalBle.pair(trezor.device.id);
      } catch (err) {
        pairCompleter.completeError(err);
      }
    } else {
      pairCompleter.complete();
    }
    try {
      await pairCompleter.future;
    } finally {
      UniversalBle.onPairingStateChange = (deviceId, isPaired) {};
    }
  }

  @override
  Future<void> start() async {
    try {
      final supported = await isRequiredServiceSupported();
      if (!supported) {
        throw ServiceNotSupportedException(
          connectionType: ConnectionType.ble,
          message: "Required service not supported. "
              "Write characteristic: ${characteristicWrite != null}, "
              "Notify characteristic: ${characteristicNotify != null}",
        );
      }

      if (UniversalPlatform.isWeb) {
        _mtu = 23;
      } else {
        try {
          _mtu = await UniversalBle.requestMtu(trezor.device.id, _mtu);
        } catch (e) {
          _mtu = 23;
        }
      }

      await _pairDeviceIfNeeded();

      await UniversalBle.subscribeNotifications(
        trezor.device.id,
        trezor.device.deviceInfo.serviceId,
        characteristicNotify!.uuid,
      );


      final seenPackages = <String>[];
      // TODO this would cause issues if we have multiple gatt gateway instances in parallel
      UniversalBle.onValueChange = (
        final String deviceId,
        final String characteristicId,
        final Uint8List rawData,
        final int? timestamp,
      ) async {
        if (trezor.device.id != deviceId) return;

        if (THPControlByte.decode(rawData.first) == THPControlByte.ackMessage) {
          print("AckMessage ignored");
          return;
        }

        
        if (seenPackages.contains(hex.encode(rawData))) {
          print("duplicate package ignored: ${hex.encode(rawData)}");
          return;
        }

        if (_pendingOperations.isEmpty) {
          if (!_disposed) {
            // if not disposed, this is a WTF level error
            _onError?.call(
              UnexpectedDataPacketException(
                reason: UnexpectedDataPacketReason.receivedDataWithNoPendingRequest,
                connectionType: ConnectionType.ble,
              ),
            );
          }
          return;
        }

        try {
          final request = _pendingOperations.first;
          seenPackages.add(hex.encode(rawData));

          if (request.decodedPackage == null) {
            request.decodedPackage = TrezorDecoder.decodePackage(rawData);

            if (request.decodedPackage!.needsContinuationPacket) return;
          }

          if (request.decodedPackage!.needsContinuationPacket) {
            final continuationPacket = TrezorDecoder.decodePackage(rawData);

            request.decodedPackage =
                TrezorDecoder.reconstructV2Payload([request.decodedPackage!, continuationPacket]);
            if (request.decodedPackage!.needsContinuationPacket) return;
          }

          final data = request.decodedPackage!.asUint8List();
          final transformer = request.transformer;
          final reader = ByteDataReader();
          if (transformer != null) {
            final transformed = await transformer.onTransform([data]);
            reader.add(transformed);
          } else {
            reader.add(data);
          }

          final response = await request.operation.read(reader);

          _pendingOperations.removeFirst();
          request.completer.complete(response);
        } catch (ex) {
          _handleOnError(ex);
          _onError?.call(ex);
        }
      };
    } catch (e) {
      await disconnect();
      rethrow;
    }
  }

  @override
  Future<void> disconnect() async {
    _disposed = true;
    _pendingOperations.clear();
    await UniversalBle.disconnect(trezor.device.id);
  }

  @override
  Future<T> sendOperation<T>(
    TrezorOperation operation, {
    TrezorTransformer? transformer,
  }) async {
    final supported = await isRequiredServiceSupported();
    if (!supported) {
      throw ServiceNotSupportedException(
        connectionType: ConnectionType.ble,
        message: "Required service not supported. "
            "Write characteristic: ${characteristicWrite != null}, "
            "Notify characteristic: ${characteristicNotify != null}",
      );
    }

    final completer = Completer<T>.sync();

    if (operation is! TrezorThpAckOperation) {
      _pendingOperations.addFirst(_Request(operation, transformer, completer));
    }

    final writer = ByteDataWriter();
    final output = await operation.write(writer);
    final payloads = _packer.pack(output, 244);
    for (final payload in payloads) {
      await UniversalBle.write(
        trezor.device.id,
        trezor.device.deviceInfo.serviceId,
        characteristicWrite!.uuid,
        payload,
        withoutResponse: false,
        timeout: _bleWriteTimeout,
      );

      if (operation is TrezorThpAckOperation) {
        completer.complete();
      }
    }

    return completer.future;
  }

  @override
  Future<bool> isRequiredServiceSupported() async {
    characteristicWrite = null;
    characteristicNotify = null;

    try {
      final bleDeviceInfo = trezor.device.deviceInfo;
      final service = await getService(bleDeviceInfo.serviceId);
      if (service != null) {
        characteristicWrite =
            await getCharacteristic(service, bleDeviceInfo.writeCharacteristicKey);
        characteristicNotify =
            await getCharacteristic(service, bleDeviceInfo.notifyCharacteristicKey);
      }
    } catch (e) {
      throw ServiceNotSupportedException(
        connectionType: ConnectionType.ble,
        nestedError: e,
        message: 'Required service not supported. '
            'Write characteristic: ${characteristicWrite != null}, '
            'Notify characteristic: ${characteristicNotify != null}',
      );
    }

    return characteristicWrite != null &&
        characteristicNotify != null &&
        characteristicWrite!.properties.contains(CharacteristicProperty.write) &&
        characteristicNotify!.properties.contains(CharacteristicProperty.notify);
  }

  @override
  Future<BleCharacteristic?> getCharacteristic(
    BleService service,
    String characteristic,
  ) async {
    try {
      return service.characteristics.firstWhere(
        (c) => c.uuid.toLowerCase() == characteristic.toLowerCase(),
        orElse: () => throw Exception('Characteristic not found'),
      );
    } catch (e) {
      return null;
    }
  }

  @override
  void onServicesInvalidated() {
    characteristicWrite = null;
    characteristicNotify = null;
  }

  int get mtu => _mtu;

  @override
  Future<BleService?> getService(String serviceId) async {
    try {
      final services = await UniversalBle.discoverServices(trezor.device.id);

      final targetUuid = serviceId.toLowerCase();

      return services.firstWhere(
        (s) =>
            s.uuid.toLowerCase() == targetUuid ||
            s.uuid.toLowerCase().startsWith(targetUuid),
        orElse: () => throw Exception('Service not found'),
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> close() => disconnect();

  void _handleOnError(dynamic ex) {
    if (_pendingOperations.isEmpty) return;

    final request = _pendingOperations.removeFirst();
    request.completer.completeError(ex);
  }
}

class _Request {
  final TrezorOperation operation;
  final TrezorTransformer? transformer;
  final Completer completer;
  TrezorPackage? decodedPackage;

  final Map<int, Uint8List> _partialData = {};
  int _expectedDataLength = -1; // read from packet 0

  void addData(Uint8List data) {
    // First packet should be at least 5 bytes long
    // Rest should be at least 3 bytes long
    if (data.length < 3 || (data[2] == 0 && data.length < 5)) {
      throw UnexpectedDataPacketException(
        data: data,
        reason: UnexpectedDataPacketReason.tooShortLength,
        connectionType: ConnectionType.ble,
      );
    }
    final packetIndex = data[2];
    if (_partialData.containsKey(packetIndex)) {
      throw UnexpectedDataPacketException(
        reason: UnexpectedDataPacketReason.indexAlreadySet,
        connectionType: ConnectionType.ble,
      );
    }

    if (packetIndex == 0) {
      if (_expectedDataLength != -1) {
        throw UnexpectedDataPacketException(
          reason: UnexpectedDataPacketReason.dataLengthAlreadySet,
          connectionType: ConnectionType.ble,
        );
      }
      _expectedDataLength = data[4];
    }

    // for first packet, skip the first 5 bytes | for the rest, skip the first 3 bytes
    final noPrefixData = data.sublist(packetIndex == 0 ? 5 : 3);
    if (noPrefixData.isNotEmpty) {
      // I think for all requests we get a last empty packet with just the index
      // -- Not sure if this is always the case so I will ignore it for now
      _partialData[packetIndex] = noPrefixData;
    }
  }

  int get expectedDataLength => _expectedDataLength;

  int get currentDataLength =>
      _partialData.values.fold(0, (acc, e) => acc + e.length);

  bool get isComplete => currentDataLength == expectedDataLength;

  Uint8List get data {
    final data = _partialData.entries
        .sortedByCompare((e) => e.key, (a, b) => a.compareTo(b))
        .map((e) => e.value)
        .expand((e) => e)
        .toList();
    return Uint8List.fromList(data);
  }

  _Request(this.operation, this.transformer, this.completer);
}

extension ObjectExt<T> on T {
  R let<R>(R Function(T that) op) => op(this);
}
