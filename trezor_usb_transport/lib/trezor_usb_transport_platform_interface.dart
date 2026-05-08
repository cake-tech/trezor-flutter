import 'dart:typed_data';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'trezor_usb_transport_method_channel.dart';
import 'usb_device.dart';

abstract class TrezorUsbPlatform extends PlatformInterface {
  TrezorUsbPlatform() : super(token: _token);

  static final Object _token = Object();

  static TrezorUsbPlatform _instance = createPlatformInstance();

  /// The default instance of [TrezorUsbPlatform] to use.
  ///
  /// Defaults to [MethodChannelTrezorUsb]
  static TrezorUsbPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TrezorUsbPlatform] when
  /// they register themselves.
  static set instance(TrezorUsbPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<List<UsbDevice>> getDevices();

  Future<bool> requestPermission(UsbDevice usbDevice);

  Future<bool> open(UsbDevice usbDevice);

  Future<Uint8List?> transferIn(int packetSize, int timeout);

  Future<int> transferOut(Uint8List data, int timeout);

  Future<bool> close();
}
