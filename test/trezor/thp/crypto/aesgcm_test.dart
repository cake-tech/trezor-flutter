import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:trezor_flutter/src/trezor/thp/crypto/aesgcm.dart';
import 'package:trezor_flutter/src/utils/hex_utils.dart';

void main() {
  test('AESGCM encode/decode', () {
    final key = Uint8List.fromList(
        hex.decode('ccbf529fc8dd4662d4d1d1fa66368b8758c0b6673a1bb9d532d95ca607cbf729'));
    final plaintext = Uint8List.fromList(
        hex.decode('d28c57e2c61ccddf449fc65a585cbe98f061e0fa99911763423440ee84710c2a'));
    final authData = Uint8List.fromList(
        hex.decode('152fd53e7dcee02d6f30b80371674b0a777441ca035919724c2f6bbfad6ed7eb'));

    final iv1 = Uint8List(12);
    final aesCtx = AesGcm(key, iv1)..auth(authData);
    final staticPubKey = aesCtx.encrypt(plaintext);
    final tag = aesCtx.finish();

    final aesCtx2 = AesGcm(key, iv1)..auth(authData);
    final decryptedData = aesCtx2.decrypt(staticPubKey, tag);
    expect(hex.encode(decryptedData), hex.encode(plaintext));
  });
}
