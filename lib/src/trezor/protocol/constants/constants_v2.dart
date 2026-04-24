// https://github.com/trezor/trezor-suite/blob/develop/packages/protocol/src/protocol-v2/constants.ts
const thpHeaderSize = 1 + 2; // 1: control_byte + 2: channel
const messageLenSize = 2;

const crcLength = 4;
const tagLength = 16;

enum THPControlByte {
  handshakeInitReq(0x00), // out
  handshakeInitRes(0x01), // in
  handshakeCompReq(0x02), // out
  handshakeCompRes(0x03), // in
  encrypted(0x04), // in / out
  ackMessage(0x20), // in / out
  channelAllocationReq(0x40), // out
  channelAllocationRes(0x41), // in
  error(0x42), // in
  ping(0x43), // out
  pong(0x44), // in
  continuationPacket(0x80); // in / out

  final int byte;

  const THPControlByte(this.byte);

  static THPControlByte? decode(int bit) {
    // DATA message
    final dataType = bit & 0xe7;
    if ([
      handshakeCompReq.byte,
      handshakeCompRes.byte,
      handshakeInitReq.byte,
      handshakeInitRes.byte,
      encrypted.byte
    ].contains(dataType)) {
      return THPControlByte.values.firstWhere((e) => e.byte == dataType);
    }

    // ACK message
    final ackType = bit & 0xf7;
    if (ackType == THPControlByte.ackMessage.byte) {
      return THPControlByte.values.firstWhere((e) => e.byte == ackType);
    }

    // Unmasked message
    if ([
      channelAllocationReq.byte,
      channelAllocationRes.byte,
      ping.byte,
      pong.byte,
      error.byte,
    ].contains(bit)) {
      return THPControlByte.values.firstWhere((e) => e.byte == bit);
    }

    return null;
  }
}
