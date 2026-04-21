import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/trezor/protocol2/constants.dart';
import 'package:trezor_flutter/src/trezor/thp/state.dart';
import 'package:trezor_flutter/src/utils/CRC32.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';
import 'package:trezor_flutter/src/utils/paring.dart';

import '../../trezor/protobuf/messages-thp.pb.dart';

class TrezorThpCreateChannelOperation extends TrezorOperation<ThpState> {
  @override
  final ThpState state;

  late final Uint8List nonce;

  TrezorThpCreateChannelOperation(this.state, {Uint8List? nonce}) {
    if (nonce != null) {
      this.nonce = nonce;
    } else {
      // Generate random 8-byte nonce
      this.nonce = Uint8List(8);
      final random = Random.secure();
      for (var i = 0; i < 8; i++) {
        this.nonce[i] = random.nextInt(256);
      }
    }
  }

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) async {
    const length = 8 + crcLength;

    // Build message without CRC
    final message = ByteDataWriter();

    message.writeUint8(THPControlByte.channelAllocationReq.byte);

    // Channel (0xFFFF for broadcast/allocation request)
    message.writeUint16(0xFFFF);

    // Length (big-endian)
    message.writeUint16(length);

    // Nonce (8 bytes)
    message.write(nonce);

    // Calculate and append CRC32
    final crc = CRC32.compute(message.toBytes());
    message.writeUint32(crc);

    return [message.toBytes()];
  }

  @override
  Future<ThpState> read(ByteDataReader reader) async {
    final headers = readHeaders(reader);

    final nonce = reader.read(8);

    if (!listEquals(nonce, this.nonce)) {
      throw Exception(
          "Wrong ThpCreateChannelResponse received expected Nonce ${this.nonce}, but got $nonce");
    }

    final proposedChannel = reader.readUint16();
    final props = reader.read(headers.length - 14);
    final properties = ThpDeviceProperties.fromBuffer(props);
    final handshakeHash = getHandshakeHash(props);

    final crc = reader.readUint32();

    final message = ByteDataWriter()
      ..writeUint8(headers.controlByteRaw)
      ..writeUint16(headers.channel)
      ..writeUint16(headers.length)
      ..write(nonce)
      ..writeUint16(proposedChannel)
      ..write(props);

    final expectedCrc = CRC32.compute(message.toBytes());

    if (crc != expectedCrc) {
      throw Exception("Crc Missmatch");
    }

    state
      ..channel = proposedChannel
      ..properties = properties
      ..updateHandshakeCredentials(ThpHandshakeCredentials(
        pairingMethods: properties.pairingMethods,
        handshakeHash: handshakeHash,
      ));

    return state;
  }
}
