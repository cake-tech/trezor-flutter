import 'dart:typed_data';

import 'package:pointycastle/export.dart';

class AesGcm {
  final Uint8List _key;
  final Uint8List _iv;

  Uint8List _aad = Uint8List(0);
  Uint8List? _authTag;

  AesGcm(this._key, this._iv);

  void auth(Uint8List authData) {
    _aad = authData;
  }

  Uint8List encrypt(Uint8List plainText) {
    final cipher = GCMBlockCipher(AESEngine())
      ..init(true, AEADParameters(KeyParameter(_key), 128, _iv, _aad));

    final encryptedAndMac = cipher.process(plainText);
    final cipherText = encryptedAndMac.sublist(0, plainText.length);
    _authTag = encryptedAndMac.sublist(plainText.length);

    return cipherText;
  }

  Uint8List decrypt(Uint8List cipherText, Uint8List authTag) {
    final decipher = GCMBlockCipher(AESEngine())
      ..init(false, AEADParameters(KeyParameter(_key), 128, _iv, _aad));

    final cipherTextWithMac = Uint8List(cipherText.length + authTag.length)
      ..setAll(0, cipherText)
      ..setAll(cipherText.length, authTag);

    return decipher.process(cipherTextWithMac);
  }

  Uint8List finish() {
    if (_authTag == null) throw StateError('You must call encrypt() before calling finish()');
    return _authTag!;
  }
}
