import 'dart:convert';

import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/trezor/protobuf/messages-common.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/messages-thp.pb.dart';
import 'package:unorm_dart/unorm_dart.dart' as unorm;

/// NFKD-normalizes [raw]; throws [ArgumentError] above 50 UTF-8 bytes
String normalizePassphrase(String raw) {
  final normalized = unorm.nfkd(raw);
  final byteLength = utf8.encode(normalized).length;
  if (byteLength > 50) {
    throw ArgumentError('Passphrase exceeds 50 bytes after NFKD normalization ($byteLength bytes)');
  }
  return normalized;
}

/// The host's passphrase intent for a Trezor session
sealed class TrezorPassphrase {
  const TrezorPassphrase();

  const factory TrezorPassphrase.empty() = TrezorPassphraseEmpty;

  /// `.value('')` derives the same wallet as [TrezorPassphrase.empty]
  factory TrezorPassphrase.value(String raw) = TrezorPassphraseValue;

  const factory TrezorPassphrase.onDevice() = TrezorPassphraseOnDevice;
}

class TrezorPassphraseEmpty extends TrezorPassphrase {
  const TrezorPassphraseEmpty();
}

class TrezorPassphraseOnDevice extends TrezorPassphrase {
  const TrezorPassphraseOnDevice();
}

class TrezorPassphraseValue extends TrezorPassphrase {
  TrezorPassphraseValue(String raw) : passphrase = normalizePassphrase(raw);

  final String passphrase;
}

/// The secret was dropped after the session was bound; the host must re-prompt
class TrezorPassphraseConsumed extends TrezorPassphrase {
  const TrezorPassphraseConsumed();
}

PassphraseAck buildPassphraseAck(TrezorPassphrase intent) => switch (intent) {
      TrezorPassphraseEmpty() => PassphraseAck(passphrase: ''),
      TrezorPassphraseValue(:final passphrase) => PassphraseAck(passphrase: passphrase),
      TrezorPassphraseOnDevice() => PassphraseAck(onDevice: true),
      TrezorPassphraseConsumed() => throw const TrezorSessionExpiredException(),
    };

/// On-device entry must leave `passphrase` absent: present-but-empty is
/// rejected under `passphrase_always_on_device`
ThpCreateNewSession buildThpCreateNewSession(TrezorPassphrase intent,
        {bool deriveCardano = false}) =>
    switch (intent) {
      TrezorPassphraseEmpty() => ThpCreateNewSession(passphrase: '', deriveCardano: deriveCardano),
      TrezorPassphraseValue(:final passphrase) =>
        ThpCreateNewSession(passphrase: passphrase, deriveCardano: deriveCardano),
      TrezorPassphraseOnDevice() =>
        ThpCreateNewSession(onDevice: true, deriveCardano: deriveCardano),
      TrezorPassphraseConsumed() => throw const TrezorSessionExpiredException(),
    };

/// Answers V1 PassphraseRequests; a typed secret is dropped after first use
class PassphraseIntentSlot {
  TrezorPassphrase? _intent;

  void store(TrezorPassphrase intent) => _intent = intent;

  PassphraseAck ackMessage() => buildPassphraseAck(_intent ?? const TrezorPassphrase.empty());

  void markUsed() {
    if (_intent is TrezorPassphraseValue) {
      _intent = const TrezorPassphraseConsumed();
    }
  }
}
