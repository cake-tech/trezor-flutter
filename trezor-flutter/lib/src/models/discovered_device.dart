import 'dart:async';

import 'package:trezor_flutter/src/models/trezor_device.dart';
import 'package:universal_ble/universal_ble.dart';

class DiscoveredDevice {
  final TrezorDevice device;
  final StreamSubscription? subscription;
  final List<BleService> services;

  DiscoveredDevice({
    required this.device,
    required this.subscription,
    required this.services,
  });

  Future<void> disconnect() async {
    subscription?.cancel();
  }
}
