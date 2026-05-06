import 'dart:typed_data';

import 'trezor_usb_transport_platform_interface.dart';
import 'usb_device.dart';

class TrezorUsbTransport {
  static const packetSize = 64;

  Future<List<UsbDevice>> listDevices() => TrezorUsbPlatform.instance.getDevices();

  Future<bool> requestPermission(UsbDevice usbDevice) =>
      TrezorUsbPlatform.instance.requestPermission(usbDevice);

  Future<bool> open(UsbDevice usbDevice) => TrezorUsbPlatform.instance.open(usbDevice);

  Future<List<Uint8List>> exchange(List<Uint8List> payloads, {int timeout = 2000}) async {
    final output = <Uint8List>[];
    for (final payload in payloads) {
      await transferOut(payload, timeout: timeout);

      final result = await transferIn(timeout: timeout);
      output.add(result!);
    }

    return output;
  }

  Future<Uint8List?> transferIn({int timeout = 2000}) =>
      TrezorUsbPlatform.instance.transferIn(packetSize, timeout);

  Future<int> transferOut(Uint8List payload, {int timeout = 2000}) =>
      TrezorUsbPlatform.instance.transferOut(payload, timeout);

  Future<bool> close() => TrezorUsbPlatform.instance.close();
}
