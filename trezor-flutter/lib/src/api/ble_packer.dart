import 'dart:typed_data';

abstract class BlePacker {
  Uint8List pack(Uint8List payload, int mtu);
}
