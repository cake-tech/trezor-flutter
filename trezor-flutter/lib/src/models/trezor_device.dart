import 'package:trezor_flutter/src/models/connection_type.dart';
import 'package:trezor_flutter/src/trezor/trezor_device_type.dart';
import 'package:trezor_usb_transport/usb_device.dart';

class TrezorDevice {
  final String id;
  final String name;
  final ConnectionType connectionType;
  final int rssi;
  final TrezorDeviceType deviceInfo;

  TrezorDevice({
    required this.id,
    required this.name,
    required this.connectionType,
    required this.deviceInfo,
    this.rssi = 0,
  });

  factory TrezorDevice.ble({
    required String id,
    required String name,
    required TrezorDeviceType deviceInfo,
    int rssi = 0,
  }) =>
      TrezorDevice(
        id: id,
        name: name,
        connectionType: ConnectionType.ble,
        rssi: rssi,
        deviceInfo: deviceInfo,
      );

  factory TrezorDevice.usb(UsbDevice device) => TrezorDevice(
        id: device.identifier,
        name: device.productName,
        connectionType: ConnectionType.usb,
        deviceInfo: TrezorDeviceType.values.firstWhere(
          (e) => device.productId >> 8 == e.productIdMM,
          orElse: () => TrezorDeviceType.safe7,
        ),
      );

  TrezorDevice copyWith({
    String Function()? id,
    String Function()? name,
    ConnectionType Function()? connectionType,
    int Function()? rssi,
    TrezorDeviceType Function()? deviceInfo,
  }) =>
      TrezorDevice(
        id: id != null ? id() : this.id,
        name: name != null ? name() : this.name,
        connectionType: connectionType != null ? connectionType() : this.connectionType,
        rssi: rssi != null ? rssi() : this.rssi,
        deviceInfo: deviceInfo != null ? deviceInfo() : this.deviceInfo,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrezorDevice && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
