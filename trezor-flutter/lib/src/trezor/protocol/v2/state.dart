import 'dart:convert';
import 'dart:typed_data';

import 'package:trezor_flutter/src/trezor/protobuf/messages-thp.pb.dart';

/// THP synchronization bit (0 or 1)
typedef SyncBit = int;

enum ThpPhase { handshake, pairing, paired }

class ThpHandshakeCredentials {
  final List<ThpPairingMethod>? pairingMethods;
  final Uint8List? handshakeHash;
  final Uint8List? handshakeCommitment;
  final Uint8List? codeEntryChallenge;
  final Uint8List? trezorEncryptedStaticPubkey;
  final Uint8List? hostEncryptedStaticPubkey;
  final Uint8List? staticKey;
  final Uint8List? hostStaticPublicKey;
  final Uint8List? hostKey;
  final Uint8List? trezorKey;
  final Uint8List? trezorCpacePublicKey;

  const ThpHandshakeCredentials({
    this.pairingMethods,
    this.handshakeHash,
    this.handshakeCommitment,
    this.codeEntryChallenge,
    this.trezorEncryptedStaticPubkey,
    this.hostEncryptedStaticPubkey,
    this.staticKey,
    this.hostStaticPublicKey,
    this.hostKey,
    this.trezorKey,
    this.trezorCpacePublicKey,
  });

  ThpHandshakeCredentials copyWith({
    List<ThpPairingMethod>? pairingMethods,
    Uint8List? handshakeHash,
    Uint8List? handshakeCommitment,
    Uint8List? codeEntryChallenge,
    Uint8List? trezorEncryptedStaticPubkey,
    Uint8List? hostEncryptedStaticPubkey,
    Uint8List? staticKey,
    Uint8List? hostStaticPublicKey,
    Uint8List? hostKey,
    Uint8List? trezorKey,
    Uint8List? trezorCpacePublicKey,
  }) =>
      ThpHandshakeCredentials(
        pairingMethods: pairingMethods ?? this.pairingMethods,
        handshakeHash: handshakeHash ?? this.handshakeHash,
        handshakeCommitment: handshakeCommitment ?? this.handshakeCommitment,
        codeEntryChallenge: codeEntryChallenge ?? this.codeEntryChallenge,
        trezorEncryptedStaticPubkey:
            trezorEncryptedStaticPubkey ?? this.trezorEncryptedStaticPubkey,
        hostEncryptedStaticPubkey: hostEncryptedStaticPubkey ?? this.hostEncryptedStaticPubkey,
        staticKey: staticKey ?? this.staticKey,
        hostStaticPublicKey: hostStaticPublicKey ?? this.hostStaticPublicKey,
        hostKey: hostKey ?? this.hostKey,
        trezorKey: trezorKey ?? this.trezorKey,
        trezorCpacePublicKey: trezorCpacePublicKey ?? this.trezorCpacePublicKey,
      );
}

class ThpCredentials {
  final String trezorStaticPublicKey;
  final String credential;
  final String hostStaticKey;
  final bool? autoconnect;

  ThpCredentials({
    required this.trezorStaticPublicKey,
    required this.credential,
    required this.hostStaticKey,
    required this.autoconnect,
  });

  factory ThpCredentials.fromJson(Map<String, dynamic> json) => ThpCredentials(
        trezorStaticPublicKey: json["trezorStaticPublicKey"],
        credential: json["credential"],
        hostStaticKey: json["hostStaticKey"],
        autoconnect: json["autoconnect"],
      );

  Map<String, dynamic> toMap() => {
        "trezorStaticPublicKey": trezorStaticPublicKey,
        "credential": credential,
        "hostStaticKey": hostStaticKey,
        "autoconnect": autoconnect
      };
}

class ThpState {
  ThpState();

  factory ThpState.fromJson(String jsonString) {
    final state = ThpState();
    final stateMap = jsonDecode(jsonString) as Map<String, dynamic>;

    if (stateMap.containsKey("properties")) {
      state.properties = ThpDeviceProperties.fromJson(jsonEncode(stateMap["properties"]));
    }

    if (stateMap.containsKey("credentials")) {
      state.setPairingCredentials(
          (stateMap["credentials"] as List).map((e) => ThpCredentials.fromJson(e)).toList());
    }

    if (stateMap.containsKey("channel")) state.channel = stateMap["channel"];

    state.initBitsAndNonces(
      sendBit: stateMap["sendBit"],
      recvBit: stateMap["recvBit"],
      sendAckBit: stateMap["sendAckBit"],
      recvAckBit: stateMap["recvAckBit"],
      sendNonce: 0,
      recvNonce: 1,
      piggybackAckEnabled: stateMap["piggybackAckEnabled"],
    );

    return state;
  }

  ThpDeviceProperties? _properties;

  ThpDeviceProperties? get properties => _properties;

  set properties(ThpDeviceProperties? props) {
    _properties = props;
    // available since THP 2.1 https://github.com/trezor/trezor-firmware/pull/6202
    _piggybackAckAvailable = (props?.protocolVersionMinor ?? 0) > 0;
  }

  List<ThpCredentials> _pairingCredentials = [];

  List<ThpCredentials> get pairingCredentials => _pairingCredentials;

  void setPairingCredentials(List<ThpCredentials>? credentials) {
    if (credentials != null) {
      _pairingCredentials.addAll(credentials);
    } else {
      _pairingCredentials = [];
    }
  }

  void removePairingCredential(ThpCredentials credential) =>
      _pairingCredentials.removeWhere((c) => c.credential == credential.credential);

  ThpPhase phase = ThpPhase.handshake;
  bool isPaired = false;

  bool get isAutoconnectPaired => isPaired && _pairingCredentials[0].autoconnect == true;

  // _pairingTagPromise: { abort: () => Promise<void> } | undefined;
  bool cancelablePromise = false;
  ThpHandshakeCredentials? _handshakeCredentials;

  ThpHandshakeCredentials? get handshakeCredentials => _handshakeCredentials;

  void updateHandshakeCredentials(ThpHandshakeCredentials newCredentials) {
    _handshakeCredentials ??= ThpHandshakeCredentials(
      pairingMethods: [],
      handshakeHash: Uint8List(0),
      handshakeCommitment: Uint8List(0),
      codeEntryChallenge: Uint8List(0),
      trezorEncryptedStaticPubkey: Uint8List(0),
      hostEncryptedStaticPubkey: Uint8List(0),
      staticKey: Uint8List(0),
      hostStaticPublicKey: Uint8List(0),
      hostKey: Uint8List(0),
      trezorKey: Uint8List(0),
      trezorCpacePublicKey: Uint8List(0),
    );

    _handshakeCredentials = _handshakeCredentials!.copyWith(
      pairingMethods: newCredentials.pairingMethods,
      handshakeHash: newCredentials.handshakeHash,
      handshakeCommitment: newCredentials.handshakeCommitment,
      codeEntryChallenge: newCredentials.codeEntryChallenge,
      trezorEncryptedStaticPubkey: newCredentials.trezorEncryptedStaticPubkey,
      hostEncryptedStaticPubkey: newCredentials.hostEncryptedStaticPubkey,
      staticKey: newCredentials.staticKey,
      hostStaticPublicKey: newCredentials.hostStaticPublicKey,
      hostKey: newCredentials.hostKey,
      trezorKey: newCredentials.trezorKey,
      trezorCpacePublicKey: newCredentials.trezorCpacePublicKey,
    );
  }

  int channel = 0xFFFF;

  SyncBit _sendBit = 0;
  SyncBit _recvBit = 0;

  SyncBit get sendBit => _sendBit;

  SyncBit get recvBit => _recvBit;

  void updateSyncBit(bool isSend) {
    if (isSend) {
      _sendBit = _sendBit > 0 ? 0 : 1;
    } else {
      _recvBit = _recvBit > 0 ? 0 : 1;
    }
  }

  SyncBit _sendAckBit = 0;
  SyncBit _recvAckBit = 0;

  SyncBit get sendAckBit => _sendAckBit;

  SyncBit get recvAckBit => _recvAckBit;

  void updateAckBit(bool isSend) {
    if (isSend) {
      _sendAckBit = _sendAckBit > 0 ? 0 : 1;
    } else {
      _recvAckBit = _recvAckBit > 0 ? 0 : 1;
    }
  }

  int _sendNonce = 0;
  int _recvNonce = 1;

  int get sendNonce => _sendNonce;

  int get recvNonce => _recvNonce;

  void updateNonce(bool isSend) {
    if (isSend) {
      _sendNonce++;
    } else {
      _recvNonce++;
    }
  }

  void sync(bool isSend, String messageType) {
    final shouldUpdateSyncBit = ![
      'ThpAck',
      'ThpCreateChannelRequest',
      'ThpCreateChannelResponse',
    ].contains(messageType);
    if (shouldUpdateSyncBit) {
      updateAckBit(isSend);
      updateSyncBit(isSend);
    }

    final shouldUpdateNonce = shouldUpdateSyncBit &&
        ![
          'ThpHandshakeInitRequest',
          'ThpHandshakeInitResponse',
          'ThpHandshakeCompletionRequest',
          'ThpHandshakeCompletionResponse',
        ].contains(messageType);
    if (shouldUpdateNonce) {
      updateNonce(isSend);
    }
  }

  List<int> expectedResponses = [];
  ThpPairingMethod? selectedMethod;
  Uint8List? nfcSecret;

  Uint8List sessionId = Uint8List(1);
  int _sessionIdCounter = 0;

  Uint8List createNewSessionId() {
    _sessionIdCounter++;
    if (_sessionIdCounter > 255) _sessionIdCounter = 1;

    final sessionId = ByteData(1);
    sessionId.setUint8(0, _sessionIdCounter);

    this.sessionId = sessionId.buffer.asUint8List();

    return this.sessionId;
  }

  bool _piggybackAckAvailable = false;
  bool _piggybackAckEnabled = false;

  set piggybackAckEnabled(bool enabled) => _piggybackAckEnabled = _piggybackAckAvailable && enabled;

  bool get piggybackAckEnabled => _piggybackAckEnabled;

  Uint8List recentMessage = Uint8List(0);

  void initBitsAndNonces({
    required int sendBit,
    required int recvBit,
    required int sendAckBit,
    required int recvAckBit,
    required int sendNonce,
    required int recvNonce,
    required bool piggybackAckEnabled,
  }) {
    _sendBit = sendBit;
    _recvBit = recvBit;
    _sendAckBit = sendAckBit;
    _recvAckBit = recvAckBit;
    _sendNonce = sendNonce;
    _recvNonce = recvNonce;
    _piggybackAckEnabled = piggybackAckEnabled;
  }

  Map<String, dynamic> toMap() => {
        "properties": properties?.writeToJsonMap(),
        "credentials": pairingCredentials.map((e) => e.toMap()).toList(),
        "channel": channel,
        "sendBit": sendBit,
        "recvBit": recvBit,
        "sendAckBit": sendAckBit,
        "recvAckBit": recvAckBit,
        "sendNonce": sendNonce,
        "recvNonce": recvNonce,
        "piggybackAckEnabled": _piggybackAckEnabled,
      };

  String toJsonString() => jsonEncode(toMap());
}
