import 'dart:async';

import 'package:flutter/services.dart';
import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/operations/trezor/thp_ack_operation.dart';
import 'package:trezor_flutter/src/operations/trezor/v1_operation.dart';
import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/trezor/protobuf/messages-management.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/trezor/protocol/decoder.dart';
import 'package:trezor_flutter/src/trezor/transformer/v1_transformer.dart';
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
      final payload = await operation.write(writer);
      await _usbTransport.transferOut(payload);

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

  final Map<String, TrezorDevice> _usbDevices = {};

  @override
  Future<List<TrezorDevice>> get devices async {
    if (_disposed) throw TrezorManagerDisposedException(connectionType);

    try {
      final usbDevices = await _usbTransport.listDevices();

      for (final device in usbDevices) {
        final tDevice = TrezorDevice.usb(device);
        if (_usbDevices.keys.contains(tDevice.id)) continue;

        await connect(tDevice);

        try {
          final initialize = await sendRawOperation(
            tDevice,
            TrezorV1Operation(
              data: Initialize().writeToBuffer(),
              messageType: TrezorMessageType.initialize.raw,
            ),
            const V1Transformer(),
          );

          final feature = Features.fromBuffer(initialize.payload);

          _usbDevices[tDevice.id] = TrezorDevice.usb(
            device,
            TrezorDeviceType.fromInternalModel(feature.internalModel),
          );
        } on TrezorFailureException catch (e) {
          // Code 17 is invalid protocol happening only on Safe 7
          if (e.code == 17) {
            _usbDevices[tDevice.id] = TrezorDevice.usb(device, TrezorDeviceType.safe7);
          }
        } finally {
          disconnect(tDevice.id);
        }
      }

      return _usbDevices.values.toList();
    } on PlatformException catch (ex) {
      throw TrezorExceptionUtils.fromPlatformException(ex, connectionType);
    }
  }

  @override
  Future<AvailabilityState> get status async =>
      UniversalPlatform.isIOS ? AvailabilityState.unsupported : AvailabilityState.poweredOn;

  @override
  Stream<AvailabilityState> get statusStateChanges {
    if (_disposed) throw TrezorManagerDisposedException(connectionType);

    return const Stream.empty();
  }

  @override
  final ConnectionType connectionType = ConnectionType.usb;

  @override
  Future<void> dispose() async {
    _usbDevices.clear();

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
