import 'messages-thp.pb.dart';

// https://github.com/trezor/trezor-firmware/blob/c190a986042306a145f2ba24856a588bf5abc2bd/common/protob/messages.proto
ThpMessageType getMessageType(int messageType) =>
    ThpMessageType.values.firstWhere((mt) => mt.value == messageType);

enum TrezorMessageType {
  initialize(0),
  ping(1),
  success(2),
  failure(3),
  features(17),

  buttonRequest(26), // device is waiting for user confirmation
  buttonAck(27), // host acknowledgment of button request
  address(30),
  passphraseRequest(41),
  passphraseAck(42),

  thpCreateNewSession(1000),
  thpPairingRequest(1008),
  thpPairingRequestApproved(1009),
  thpSelectMethod(1010),
  thpPairingPreparationsFinished(1011),
  thpCredentialRequest(1016),
  thpCredentialResponse(1017),
  thpEndRequest(1018),
  thpEndResponse(1019),
  thpCodeEntryCommitment(1024),
  thpCodeEntryChallenge(1025),
  thpCodeEntryCpaceTrezor(1026),
  thpCodeEntryCpaceHostTag(1027),
  thpCodeEntrySecret(1028),
  thpQrCodeTag(1032),
  thpQrCodeSecret(1033),
  thpNfcTagHost(1040),
  thpNfcTagTrezor(1041),

  moneroTransactionInitRequest(501),
  moneroTransactionInitAck(502),
  moneroTransactionSetInputRequest(503),
  moneroTransactionSetInputAck(504),
  moneroTransactionInputViniRequest(507),
  moneroTransactionInputViniAck(508),
  moneroTransactionAllInputsSetRequest(509),
  moneroTransactionAllInputsSetAck(510),
  moneroTransactionSetOutputRequest(511),
  moneroTransactionSetOutputAck(512),
  moneroTransactionAllOutSetRequest(513),
  moneroTransactionAllOutSetAck(514),
  moneroTransactionSignInputRequest(515),
  moneroTransactionSignInputAck(516),
  moneroTransactionFinalRequest(517),
  moneroTransactionFinalAck(518),
  moneroKeyImageExportInitRequest(530),
  moneroKeyImageExportInitAck(531),
  moneroKeyImageSyncStepRequest(532),
  moneroKeyImageSyncStepAck(533),
  moneroKeyImageSyncFinalRequest(534),
  moneroKeyImageSyncFinalAck(535),
  moneroGetAddress(540),
  moneroAddress(541),
  moneroGetWatchKey(542),
  moneroWatchKey(543),
  moneroGetTxKeyRequest(550),
  moneroGetTxKeyAck(551),
  moneroLiveRefreshStartRequest(552),
  moneroLiveRefreshStartAck(553),
  moneroLiveRefreshStepRequest(554),
  moneroLiveRefreshStepAck(555),
  moneroLiveRefreshFinalRequest(556),
  moneroLiveRefreshFinalAck(557);

  final int raw;

  const TrezorMessageType(this.raw);

  static TrezorMessageType fromRaw(int raw) => values.firstWhere((e) => e.raw == raw);
}
