import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/trezor/protocol/constants/constants_v2.dart';
import 'package:trezor_flutter/src/trezor/protocol/v2/state.dart';
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
    writer..writeUint8(THPControlByte.channelAllocationReq.byte)
    ..writeUint16(0xFFFF)
    ..writeUint16(nonce.length + crcLength)
    ..write(nonce);

    writeCrc32(writer);

    return [writer.toBytes()];
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
