import 'dart:typed_data';

import 'package:trezor_flutter/src/operations/trezor_operations.dart';
import 'package:trezor_flutter/src/trezor/protobuf/utils.dart';
import 'package:trezor_flutter/src/trezor/protocol/constants/constants_v2.dart';
import 'package:trezor_flutter/src/trezor/protocol/v2/state.dart';
import 'package:trezor_flutter/src/trezor/crypto/crypto.dart';
import 'package:trezor_flutter/src/utils/buffer.dart';
import 'package:trezor_flutter/src/utils/paring.dart';

class TrezorThpEncryptedResponse {
  final Uint8List sessionId;
  final int messageTypeRaw;
  final Uint8List payload;

  const TrezorThpEncryptedResponse(
      {required this.sessionId, required this.messageTypeRaw, required this.payload});

  TrezorMessageType get messageType => TrezorMessageType.fromRaw(messageTypeRaw);
}

class TrezorThpEncryptedOperation extends TrezorTHPOperation<TrezorThpEncryptedResponse> {
  @override
  final ThpState state;

  final TrezorMessageType messageType;
  final Uint8List data;

  TrezorThpEncryptedOperation(this.state, {required this.data, required this.messageType});

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) async {
    writer.write(addSequenceBit(THPControlByte.encrypted.byte, state.sendBit));

    // Channel (0xFFFF for broadcast/allocation request)
    writer.writeUint16(state.channel);

    // Length 1 session_id + 2 messageType + protobuf len + 16 tag + 4 crc
    writer.writeUint16(1 + 2 + data.length + tagLength + crcLength);

    // var magic = addSequenceBit(THP_CONTROL_BYTE.ENCRYPTED, thpState.sendBit);
    // if (state.isPiggybackAckEnabled) {
    //   // send ackBit with the actual message
    //   magic = addAckBit(magic.readUint8(), getPreviousAckBit(thpState));
    // }
    // final header = Buffer.concat([magic, channel]);

    final messageTypeBytes = ByteData(2);
    messageTypeBytes.setUint16(0, messageType.raw);

    final aes = AesGcm(state.handshakeCredentials!.hostKey!, getIvFromNonce(state.sendNonce));
    aes.auth(Uint8List(0));
    final encryptedPayload = aes.encrypt(Uint8List.fromList(
        [...state.sessionId, ...messageTypeBytes.buffer.asUint8List(), ...data]));
    final encryptedPayloadTag = aes.finish();

    final cipheredMessage = Uint8List.fromList([...encryptedPayload, ...encryptedPayloadTag]);
    writer.write(cipheredMessage);

    writeCrc32(writer);

    state.sync(true, "");

    return [writer.toBytes()];
  }

  @override
  Future<TrezorThpEncryptedResponse> read(ByteDataReader reader) async {
    final headers = readHeaders(reader);

    final cipherText = reader.read(headers.length - tagLength - crcLength);
    final tag = reader.read(tagLength);

    final aes = AesGcm(state.handshakeCredentials!.trezorKey!, getIvFromNonce(state.recvNonce));
    aes.auth(Uint8List(0));
    final plainText = aes.decrypt(cipherText, tag);

    state.sync(false, "");
    final painTextReader = ByteDataReader()..add(plainText);

    return TrezorThpEncryptedResponse(
      sessionId: painTextReader.read(1),
      messageTypeRaw: painTextReader.readUint16(),
      payload: painTextReader.read(painTextReader.remainingLength),
    );
  }
}
