import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:pointycastle/digests/keccak.dart';
import 'package:trezor_flutter/src/trezor/protobuf/coins/messages-monero.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/utils/hex_utils.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

Future<MoneroKeyImageResponse> moneroSyncKeyImages(TrezorClient client,
    {required List<MoneroKeyImageTxData> tdis, required Iterable<int> addressN}) async {
  // Compute hash of all tdis for verification
  final tdHashes = <Uint8List>[];
  for (final tdi in tdis) {
    final kck = KeccakDigest(256)
      ..update(Uint8List.fromList(hex.decode(tdi.outKey)), 0, 32)
      ..update(Uint8List.fromList(hex.decode(tdi.txPubKey)), 0, 32);

    for (final addKeyRaw in tdi.additionalTxPubKeys) {
      final addKey = Uint8List.fromList(hex.decode(addKeyRaw));
      kck.update(addKey, 0, addKey.length);
    }

    final indexVarint = _encodeVarint(tdi.internalOutputIndex);
    kck.update(indexVarint, 0, indexVarint.length);

    final hash = Uint8List(kck.digestSize);
    kck.doFinal(hash, 0);
    tdHashes.add(hash);
  }

  final finalKck = KeccakDigest(256);
  for (final hash in tdHashes) {
    finalKck.update(hash, 0, hash.length);
  }

  final hashBytes = Uint8List(finalKck.digestSize);
  finalKck.doFinal(hashBytes, 0);

  await client.call(
    MoneroKeyImageExportInitRequest(
      num: Int64(tdis.length),
      addressN: addressN,
      hash: hashBytes,
    ).writeToBuffer(),
    TrezorMessageType.moneroKeyImageExportInitRequest,
  );

  final allKeyImages = <MoneroExportedKeyImage>[];

  final syncStepRequest = MoneroKeyImageSyncStepRequest(
    tdis: tdis.map(
      (e) => MoneroKeyImageSyncStepRequest_MoneroTransferDetails(
        outKey: hex.decode(e.outKey),
        txPubKey: hex.decode(e.txPubKey),
        additionalTxPubKeys: e.additionalTxPubKeys.map((a) => hex.decode(a)),
        internalOutputIndex: Int64(e.internalOutputIndex),
        subAddrMajor: e.subAddrMajor,
        subAddrMinor: e.subAddrMinor,
      ),
    ),
  );
  final stepResponse = await client.call(
    syncStepRequest.writeToBuffer(),
    TrezorMessageType.moneroKeyImageSyncStepRequest,
  );
  final stepData = MoneroKeyImageSyncStepAck.fromBuffer(stepResponse.$2);

  allKeyImages.addAll(
    stepData.kis.map((e) => MoneroExportedKeyImage(hex.encode(e.iv), hex.encode(e.blob))),
  );

  final finalResponse = await client.call(
    MoneroKeyImageSyncFinalRequest().writeToBuffer(),
    TrezorMessageType.moneroKeyImageSyncFinalRequest,
  );
  final finalData = MoneroKeyImageSyncFinalAck.fromBuffer(finalResponse.$2);

  return MoneroKeyImageResponse(allKeyImages, hex.encode(finalData.encKey));
}

Uint8List _encodeVarint(int n) {
  final bytes = <int>[];
  while (n >= 0x80) {
    bytes.add((n & 0x7f) | 0x80);
    n >>= 7;
  }
  bytes.add(n & 0x7f);

  return Uint8List.fromList(bytes);
}

class MoneroExportedKeyImage {
  final String iv;
  final String keyImage;

  const MoneroExportedKeyImage(this.iv, this.keyImage);
}

class MoneroKeyImageResponse {
  final List<MoneroExportedKeyImage> keyImages;
  final String signature;

  const MoneroKeyImageResponse(this.keyImages, this.signature);

  Map<String, dynamic> toMap() => {
        "key_images": keyImages.map((e) => {"iv": e.iv, "key_image": e.keyImage}).toList(),
        "signature": signature,
      };
}
