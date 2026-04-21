import 'package:trezor_flutter/trezor_flutter.dart';

abstract class BleSearchManager {
  Stream<TrezorDevice> scan();

  Future<void> stop();

  Future<void> dispose();
}
