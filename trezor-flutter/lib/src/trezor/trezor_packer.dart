import 'dart:typed_data';

import '../api/api.dart';

class TrezorPacker extends BlePacker {
  @override
  Uint8List pack(Uint8List payload, int mtu) =>
      Uint8List.fromList([...payload, ...List.filled(mtu - payload.length, 0)]);
}
