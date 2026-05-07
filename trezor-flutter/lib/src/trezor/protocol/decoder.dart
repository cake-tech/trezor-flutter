import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';

import 'constants/constants_v1.dart';
import 'constants/constants_v2.dart';

class TrezorDecoder {
  static int getProtocolVersion(Uint8List bytes) => bytes.first == v1MessageMagicHeaderByte ? 1 : 2;

  static TrezorPackage decodePackage(Uint8List bytes) {
    final reader = ByteDataReader()
      ..add(bytes);

    final controlByteRaw = reader.readUint8();

    if (controlByteRaw == v1MessageMagicHeaderByte) {
      if (listEquals(bytes.sublist(1, 3), [0x23, 0x23])) {
        reader.read(2);
        final messageType = reader.readUint16();
        final length = reader.readUint32();
        final payload =
        reader.read(length < reader.remainingLength ? length : reader.remainingLength);

        return TrezorPackageV1(length: length, messageType: messageType, payload: payload);
      }

      final payload =
      reader.read(reader.remainingLength);

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

  static TrezorPackageV1 reconstructV1Payload(List<TrezorPackage> packages) {
    final payload = <int>[];

    int length = 0;
    int messageType = 0;
    if (packages.first case TrezorPackageV1 packageV1) {
      length = packageV1.length;
      messageType = packageV1.messageType;
    }

    for (final package in packages) {
      payload.addAll(package.payload);
    }

    return TrezorPackageV1(
        length: length, messageType: messageType, payload: Uint8List.fromList(payload));
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
      final crcBytes = ByteData(4)
        ..setUint32(0, crc!);
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

class TrezorPackageV1 extends TrezorPackage {
  const TrezorPackageV1(
      {required this.length, required this.messageType, required Uint8List payload})
      : super(payload);

  @override
  bool get needsContinuationPacket => payload.length < length;

  @override
  final int length;

  final int messageType;

  @override
  Uint8List asUint8List() {
    final writer = ByteDataWriter()
      ..writeUint8(v1MessageMagicHeaderByte)
      ..write([v1MessageHeaderByte, v1MessageHeaderByte])
      ..writeUint16(messageType)
      ..writeUint32(length)
      ..write(payload);

    return writer.toBytes();
  }
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

  Uint8List asUint8List() => payload;

  const TrezorPackage(this.payload);
}
