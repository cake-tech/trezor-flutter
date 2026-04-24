import 'dart:typed_data';

import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';

import 'constants/constants_v1.dart';
import 'constants/constants_v2.dart';

class TrezorDecoder {
  static int getProtocolVersion(Uint8List bytes) => bytes.first == v1MessageMagicHeaderByte ? 1 : 2;

  static TrezorPackage decodePackage(Uint8List bytes) {
    final reader = ByteDataReader()..add(bytes);

    final controlByteRaw = reader.readUint8();

    if (controlByteRaw == v1MessageMagicHeaderByte) {
      final payload = reader.read(reader.remainingLength);

      if (payload.first == v1MessageHeaderByte) {
        // ToDo: (konstantinullrich) Handle v1 Packages;
      }

      return TrezorContinuationPacketPackageV1(payload: payload);
    } else if (controlByteRaw == THPControlByte.continuationPacket.byte) {
      final channel = reader.readUint16();
      final payload = reader.read(reader.remainingLength);

      return TrezorContinuationPacketPackageV2(channel: channel, payload: payload);
    }

    final channel = reader.readUint16();
    final length = reader.readUint16();

    final headers = ThpHeaders(controlByteRaw: controlByteRaw, channel: channel, length: length);

    if (length >= reader.remainingLength) {
      final payload = reader.read(reader.remainingLength);
      return TrezorPackageV2(headers: headers, payload: payload);
    }

    final payload = reader.read(length - crcLength);
    final crc = reader.readUint32();

    return TrezorPackageV2(headers: headers, payload: payload, crc: crc);
  }

  static TrezorPackageV2 reconstructV2Payload(List<TrezorPackage> packages) {
    final payload = <int>[];
    ThpHeaders? headers;

    for (final package in packages) {
      if (package case TrezorPackageV2 packageV2) {
        headers = packageV2.headers;
      }
      payload.addAll(package.payload);
    }

    if (payload.length >= headers!.length) {
      final crc =
          ByteData.sublistView(Uint8List.fromList(payload)).getUint32(headers.length - crcLength);

      return TrezorPackageV2(
        headers: headers,
        payload: Uint8List.fromList(payload.sublist(0, headers.length - crcLength)),
        crc: crc,
      );
    }

    return TrezorPackageV2(headers: headers, payload: Uint8List.fromList(payload));
  }
}

class TrezorPackageV2 extends TrezorPackage {
  final ThpHeaders headers;
  final int? crc;

  @override
  bool get needsContinuationPacket => crc == null;

  @override
  int get length => headers.length;

  @override
  Uint8List asUint8List() {
    var result = <int>[];

    result.addAll(headers.asUint8List());
    result.addAll(payload);

    if (crc != null) {
      final crcBytes = ByteData(4)..setUint32(0, crc!);
      result.addAll(crcBytes.buffer.asUint8List());
    }
    return Uint8List.fromList(result);
  }

  const TrezorPackageV2({
    required this.headers,
    required Uint8List payload,
    this.crc,
  }) : super(payload);

}

class TrezorContinuationPacketPackageV1 extends TrezorPackage {
  const TrezorContinuationPacketPackageV1({required Uint8List payload}) : super(payload);
}

class TrezorContinuationPacketPackageV2 extends TrezorPackage {
  final int channel;

  const TrezorContinuationPacketPackageV2({
    required this.channel,
    required Uint8List payload,
  }) : super(payload);
}

abstract class TrezorPackage {
  final Uint8List payload;

  int? get length => null;

  bool get needsContinuationPacket => false;

  Uint8List asUint8List() => Uint8List(0);

  const TrezorPackage(this.payload);
}
