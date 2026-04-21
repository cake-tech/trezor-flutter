import 'dart:typed_data';

abstract class TrezorTransformer {
  const TrezorTransformer();

  Future<Uint8List> onTransform(List<Uint8List> transform);
}
