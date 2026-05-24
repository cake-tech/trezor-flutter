import 'package:test/test.dart';
import 'package:trezor_flutter/src/utils/hex_utils.dart';
import 'package:trezor_flutter/src/utils/varint.dart';

const List<(int, String)> kVarintFixtures = [
  (0, "00"),
  (1, "01"),
  (2, "02"),
  (63, "3f"),
  (127, "7f"),
  (128, "8001"),
  (129, "8101"),
  (255, "ff01"),
  (256, "8002"),
  (300, "ac02"),
  (16383, "ff7f"),
  (16384, "808001"),
  (65535, "ffff03"),
  (65536, "808004"),
  (2097151, "ffff7f"),
  (2097152, "80808001"),
  (268435455, "ffffff7f"),
  (268435456, "8080808001"),
  (0xFFFFFFFF, "ffffffff0f"),
  (0xFFFFFFFFFF, "ffffffffff1f"),
  (0x7FFFFFFFFFFFFFFF, "ffffffffffffffff7f")
];

void main() {
  group("Monero varint encode", () {
    for (final (value, hexValue) in kVarintFixtures) {
      test("encode $value as $hexValue", () {
        expect(hex.encode(VarInt.encodeMoneroVarint(value)), hexValue);
      });
    }

    test("encode fails with negative value", () {
      expect(() => VarInt.encodeMoneroVarint(-1), throwsA(isA<RangeError>()));
    });
  });

  group("Properties (property-style)", () {
    test("all 1-byte values 0..127 are exactly 1 byte long", () {
      for (var v = 0; v <= 127; v++) {
        expect(VarInt.encodeMoneroVarint(v).length, 1, reason: "$v");
      }
    });

    test("transitions at 2^(7*n) boundaries", () {
      for (final (lastOfN, firstOfNplus1, expectedLen) in [
        (127, 128, 2),
        (16383, 16384, 3),
        (2097151, 2097152, 4),
        (268435455, 268435456, 5),
      ]) {
        expect(VarInt.encodeMoneroVarint(lastOfN).length, expectedLen - 1);
        expect(VarInt.encodeMoneroVarint(firstOfNplus1).length, expectedLen);
      }
    });

    test("last byte always has MSB=0, all others have MSB=1", () {
      for (final fixture in kVarintFixtures) {
        final enc = VarInt.encodeMoneroVarint(fixture.$1);
        for (var i = 0; i < enc.length - 1; i++) {
          expect(enc[i] & 0x80, 0x80, reason: "continuation bit missing v(${fixture.$1})");
        }
        expect(enc.last & 0x80, 0, reason: "last byte should have MSB=0 at v(${fixture.$1})");
      }
    });
  });
}
