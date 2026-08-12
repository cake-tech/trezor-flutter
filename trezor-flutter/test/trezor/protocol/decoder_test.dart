import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:trezor_flutter/src/trezor/crypto/crypto.dart';
import 'package:trezor_flutter/src/trezor/protocol/constants/constants_v2.dart';
import 'package:trezor_flutter/src/trezor/protocol/decoder.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';

const _channel = 0x1234;
const _packetSize = 244;

/// Build a single THP v2 packet carrying [payloadSize] bytes, padded to
/// [packetSize] the way the device pads its writes.
Uint8List buildPacket(int payloadSize, {int packetSize = _packetSize}) {
  final payload = Uint8List.fromList(List.generate(payloadSize, (i) => i & 0xff));

  final header = ByteDataWriter()
    ..writeUint8(THPControlByte.encrypted.byte)
    ..writeUint16(_channel)
    ..writeUint16(payloadSize + crcLength)
    ..write(payload);
  final body = header.toBytes();

  final packet = ByteDataWriter()
    ..write(body)
    ..writeUint32(CRC32.compute(body));

  final bytes = packet.toBytes();
  if (bytes.length >= packetSize) return bytes;

  return Uint8List.fromList([...bytes, ...List.filled(packetSize - bytes.length, 0)]);
}

void main() {
  group("TrezorDecoder decodePackage", () {
    test("decodes a padded packet", () {
      final package = TrezorDecoder.decodePackage(buildPacket(100)) as TrezorPackageV2;

      expect(package.payload.length, 100);
      expect(package.crc, isNotNull);
      expect(package.needsContinuationPacket, isFalse);
    });

    test("decodes a packet that exactly fills the packet size", () {
      // 1 control byte + 2 channel + 2 length + payload + 4 crc == packet size
      const payloadSize = _packetSize - thpHeaderSize - messageLenSize - crcLength;
      final packet = buildPacket(payloadSize);
      expect(packet.length, _packetSize);

      final package = TrezorDecoder.decodePackage(packet) as TrezorPackageV2;

      expect(package.payload.length, payloadSize);
      expect(package.crc, isNotNull);
      expect(package.needsContinuationPacket, isFalse);
    });

    test("asks for a continuation packet when the message does not fit", () {
      final packet = buildPacket(400);
      expect(packet.length, greaterThan(_packetSize));

      final package = TrezorDecoder.decodePackage(
          Uint8List.sublistView(packet, 0, _packetSize)) as TrezorPackageV2;

      expect(package.crc, isNull);
      expect(package.needsContinuationPacket, isTrue);
    });
  });
}
