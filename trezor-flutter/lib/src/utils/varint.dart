class VarInt {
  static List<int> encodeMoneroVarint(int value) {
    if (value < 0) throw RangeError("value out of range");

    var v = value;
    final out = <int>[];
    while (v >= 0x80) {
      out.add((v & 0x7F) | 0x80);
      v >>= 7;
    }
    out.add(v & 0x7F);
    return out;
  }
}
