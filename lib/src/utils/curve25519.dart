import 'dart:typed_data';
// Dart implementation of elligator2 https://www.rfc-editor.org/rfc/rfc9380.html#ell2-opt

Constants? constants;

class Constants {
  final BigInt p;
  final BigInt J;
  final BigInt c3;
  final BigInt c4;
  final BigInt a24;

  Constants(this.p, this.J, this.c3, this.c4, this.a24);
}

Constants getConstants() {
  if (constants != null) return constants!;

  final p = BigInt.from(2).pow(255) - BigInt.from(19);
  final J = BigInt.from(486662);

  final c3 = BigInt.parse(
    '19681161376707505956807079304988542015446066515923890162744021073123829784752',
  ); // sqrt(-1)

  final c4 = BigInt.from((p - BigInt.from(5)) / BigInt.from(8));
  final a24 = BigInt.from((J + BigInt.from(2)) / BigInt.from(4));

  constants = Constants(p, J, c3, c4, a24);
  return constants!;
}

// python int.from_bytes(array, "little")
BigInt littleEndianBytesToBigInt(Uint8List bytes) {
  var result = BigInt.zero;
  for (var i = 0; i < bytes.length; i++) {
    result += BigInt.from(bytes[i]) << (8 * i);
  }

  return result;
}

// python int.to_bytes(32, "little")
Uint8List bigintToLittleEndianBytes(BigInt value, [int length = 32]) {
  final byteArray = Uint8List(length);
  for (var i = 0; i < length; i++) {
    byteArray[i] = (value & BigInt.from(0xff)).toInt();
    value >>= 8;
  }

  return byteArray;
}

// python pow(a, b, c)
BigInt pow(BigInt base, BigInt exp, BigInt mod) {
  var result = BigInt.one;
  base = base % mod;
  while (exp > BigInt.zero) {
    if (exp % BigInt.from(2) == BigInt.from(1)) {
      result = (result * base) % mod;
    }
    exp = exp >> 1;
    base = (base * base) % mod;
  }

  return result;
}

// decodeScalar25519 from
// https://datatracker.ietf.org/doc/html/rfc7748#section-5
BigInt decodeScalar(Uint8List scalar) {
  if (scalar.length != 32) throw Exception('Invalid length of scalar');

  final array = Uint8List.fromList(scalar);
  array[0] &= 248;
  array[31] &= 127;
  array[31] |= 64;

  return littleEndianBytesToBigInt(array);
}

// decodeUCoordinate from
// https://datatracker.ietf.org/doc/html/rfc7748#section-5
BigInt decodeCoordinate(Uint8List coordinate) {
  if (coordinate.length != 32) throw Exception('Invalid length of scalar');

  final array = Uint8List.fromList(coordinate);
  array[array.length - 1] &= 0x7f;

  return littleEndianBytesToBigInt(array);
}

// encodeUCoordinate from
// https://datatracker.ietf.org/doc/html/rfc7748#section-5
Uint8List encodeCoordinate(BigInt coordinate) => bigintToLittleEndianBytes(coordinate);

// Returns (second, first) if condition is true and (first, second) otherwise
(BigInt, BigInt) conditionalSwap(BigInt a, BigInt b, bool condition) {
// Must be implemented in a way that it is constant time
// final mask = condition ? -1n : 0n;
// final newA = (a & ~mask) | (b & mask);
// final newB = (a & mask) | (b & ~mask);
// return [newA, newB];
// NOTE: typescript doesn't guarantee constant time. leaving the code just for reference

  return condition ? (b, a) : (a, b);
}

// https://hyperelliptic.org/EFD/g1p/auto-montgom-xz.html#ladder-ladd-1987-m-3
// (x4, z4) = 2 * (x2, z2)
// (x5, z5) = (x2, z2) + (x3, z3)
// where (x1, 1) = (x3, z3) - (x2, z2)
(BigInt, BigInt, BigInt, BigInt) ladderOperation(
    Constants ctx, BigInt x1, BigInt x2, BigInt z2, BigInt x3, BigInt z3) {
  final a = (x2 + z2) % ctx.p;
  final aa = (a * a) % ctx.p;
  final b = (x2 - z2 + ctx.p) % ctx.p;
  final bb = (b * b) % ctx.p;
  final e = (aa - bb + ctx.p) % ctx.p;
  final c = (x3 + z3) % ctx.p;
  final d = (x3 - z3 + ctx.p) % ctx.p;
  final da = (d * a) % ctx.p;
  final cb = (c * b) % ctx.p;
  final t0 = (da + cb) % ctx.p;
  final x5 = (t0 * t0) % ctx.p;
  final t1 = (da - cb + ctx.p) % ctx.p;
  final t2 = (t1 * t1) % ctx.p;
  final z5 = (x1 * t2) % ctx.p;
  final x4 = (aa * bb) % ctx.p;
  final t3 = (ctx.a24 * e) % ctx.p;
  final t4 = (bb + t3) % ctx.p;
  final z4 = (e * t4) % ctx.p;

  return (x4, z4, x5, z5);
}

// X25519 from
// https://datatracker.ietf.org/doc/html/rfc7748#section-5
Uint8List curve25519(Uint8List privateKey, Uint8List publicKey) {
  final ctx = getConstants();
  final p = ctx.p;
  final k = decodeScalar(privateKey);
  final u = decodeCoordinate(publicKey) % p;

  final x1 = u;
  var x2 = BigInt.one;
  var z2 = BigInt.zero;
  var x3 = u;
  var z3 = BigInt.one;
  var swap = 0;

  for (var i = 255; i >= 0; i--) {
    final bit = (k >> i) & BigInt.one;
    swap ^= bit.toInt();
    final x2x3 = conditionalSwap(x2, x3, swap > 0);
    x2 = x2x3.$1;
    x3 = x2x3.$2;
    final z2z3 = conditionalSwap(z2, z3, swap > 0);
    z2 = z2z3.$1;
    z3 = z2z3.$2;
    swap = bit.toInt();
    final x2z2x3z3 = ladderOperation(ctx, x1, x2, z2, x3, z3);
    x2 = x2z2x3z3.$1;
    z2 = x2z2x3z3.$2;
    x3 = x2z2x3z3.$3;
    z3 = x2z2x3z3.$4;
  }

  final x2x3 = conditionalSwap(x2, x3, swap > 0);
  x2 = x2x3.$1;
  x3 = x2x3.$2;
  final z2z3 = conditionalSwap(z2, z3, swap > 0);
  z2 = z2z3.$1;
  z3 = z2z3.$2;

  final x = (pow(z2, p - BigInt.two, p) * x2) % p;

  return encodeCoordinate(x);
}

// Returns second if condition is true and first otherwise
BigInt conditionalMove(BigInt first, BigInt second, bool condition) {
// Must be implemented in a way that it is constant time
// final trueMask = condition ? -1n : 0n;
// final falseMask = ~trueMask;
// return (first & falseMask) | (second & trueMask);
// NOTE: typescript doesn't guarantee constant time. leaving the code just for reference

  return condition ? second : first;
}

// map_to_curve_elligator2_curve25519 from
// https://www.rfc-editor.org/rfc/rfc9380.html#ell2-opt
Uint8List elligator2(Uint8List point) {
  final ctx = getConstants();

  final u = decodeCoordinate(point) % ctx.p;

  var tv1 = (u * u) % ctx.p;
  tv1 = (BigInt.two * tv1) % ctx.p;
  final xd = (tv1 + BigInt.one) % ctx.p;
  final x1n = (-ctx.J + ctx.p) % ctx.p;
  var tv2 = (xd * xd) % ctx.p;
  final gxd = (tv2 * xd) % ctx.p;
  var gx1 = (ctx.J * tv1) % ctx.p;
  gx1 = (gx1 * x1n) % ctx.p;
  gx1 = (gx1 + tv2) % ctx.p;
  gx1 = (gx1 * x1n) % ctx.p;

  var tv3 = (gxd * gxd) % ctx.p;
  tv2 = (tv3 * tv3) % ctx.p;
  tv3 = (tv3 * gxd) % ctx.p;
  tv3 = (tv3 * gx1) % ctx.p;
  tv2 = (tv2 * tv3) % ctx.p;

  var y11 = pow(tv2, ctx.c4, ctx.p);
  y11 = (y11 * tv3) % ctx.p;
  final y12 = (y11 * ctx.c3) % ctx.p;
  tv2 = (y11 * y11) % ctx.p;
  tv2 = (tv2 * gxd) % ctx.p;

  final e1 = tv2 == gx1;
  final y1 = conditionalMove(y12, y11, e1);
  final x2n = (x1n * tv1) % ctx.p;

  tv2 = (y1 * y1) % ctx.p;
  tv2 = (tv2 * gxd) % ctx.p;
  final e3 = tv2 == gx1;
  final xn = conditionalMove(x2n, x1n, e3);
  final x = (xn * pow(xd, ctx.p - BigInt.two, ctx.p)) % ctx.p;

  return encodeCoordinate(x);
}

// https://cr.yp.to/ecdh.html
// Computing secret keys
KeyPair getCurve25519KeyPair(Uint8List randomBytes) {
  final randomPriv = Uint8List.fromList(randomBytes);
  randomPriv[0] &= 248;
  randomPriv[31] &= 127;
  randomPriv[31] |= 64;

  final basepoint = Uint8List(32);
  basepoint[0] = 0x09;

  return KeyPair(
    publicKey: curve25519(randomPriv, basepoint),
    privateKey: randomPriv,
  );
}

class KeyPair {
  final Uint8List publicKey;
  final Uint8List privateKey;

  KeyPair({required this.publicKey, required this.privateKey});
}
