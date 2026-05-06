import 'dart:math';
import 'dart:typed_data';

Uint8List randomBytes(int length) {
  final randomBytes = Uint8List(length);
  final random = Random.secure();
  for (var i = 0; i < randomBytes.length; i++) {
    randomBytes[i] = random.nextInt(256);
  }
  return randomBytes;
}
