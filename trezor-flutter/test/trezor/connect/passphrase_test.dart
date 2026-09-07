import 'package:test/test.dart';
import 'package:trezor_flutter/src/connect/trezor_passphrase.dart';
import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';
import 'package:trezor_flutter/src/trezor/protobuf/messages-common.pb.dart';
import 'package:trezor_flutter/src/trezor/protobuf/messages-thp.pb.dart';

void main() {
  group('normalizePassphrase', () {
    test('NFKD-decomposes the fi ligature (U+FB01) to "fi"', () {
      expect(normalizePassphrase('ﬁ'), 'fi');
    });

    test('composed and decomposed é normalize to the same string', () {
      expect(normalizePassphrase('é'), normalizePassphrase('é'));
    });

    test('enforces the 50-byte limit at the boundary', () {
      expect(normalizePassphrase('a' * 50), 'a' * 50);
      expect(() => normalizePassphrase('a' * 51), throwsArgumentError);
    });

    test('limit counts UTF-8 bytes after NFKD, not characters', () {
      expect(normalizePassphrase('é' * 16), 'é' * 16); // 48 bytes: ok
      expect(() => normalizePassphrase('é' * 17), throwsArgumentError); // 51 bytes
      expect(() => normalizePassphrase('é' * 50), throwsArgumentError); // 150 bytes
    });

    test('rejects input whose raw form fits 50 bytes but NFKD form does not', () {
      expect(() => normalizePassphrase('é' * 25), throwsArgumentError);
    });

    test('the ArgumentError message never contains the passphrase', () {
      const secret = 'SuperSecretHiddenWalletPassphraseThatIsWayTooLong!!!'; // 52 bytes
      try {
        normalizePassphrase(secret);
        fail('expected ArgumentError');
      } on ArgumentError catch (e) {
        expect(e.toString(), isNot(contains('SuperSecret')));
      }
    });

    test('.value normalizes its input', () {
      expect(TrezorPassphraseValue('ﬁrst').passphrase, 'first');
    });
  });

  group('builders', () {
    test('PassphraseAck wire round-trip: empty keeps the empty string present',
        () {
      final decoded = PassphraseAck.fromBuffer(
          buildPassphraseAck(const TrezorPassphrase.empty()).writeToBuffer());
      expect(decoded.hasPassphrase(), isTrue);
      expect(decoded.passphrase, '');
      expect(decoded.hasOnDevice(), isFalse);
    });

    test('PassphraseAck wire round-trip: onDevice keeps the passphrase field absent',
        () {
      final decoded = PassphraseAck.fromBuffer(
          buildPassphraseAck(const TrezorPassphrase.onDevice()).writeToBuffer());
      expect(decoded.hasPassphrase(), isFalse);
      expect(decoded.onDevice, isTrue);
    });

    test('PassphraseAck consumed: throws TrezorSessionExpiredException', () {
      expect(() => buildPassphraseAck(const TrezorPassphraseConsumed()),
          throwsA(isA<TrezorSessionExpiredException>()));
    });

    test('ThpCreateNewSession wire round-trip: onDevice keeps the passphrase field absent',
        () {
      final decoded = ThpCreateNewSession.fromBuffer(
          buildThpCreateNewSession(const TrezorPassphrase.onDevice())
              .writeToBuffer());
      expect(decoded.hasPassphrase(), isFalse);
      expect(decoded.onDevice, isTrue);
    });

    test('ThpCreateNewSession wire round-trip: empty keeps the empty string present',
        () {
      final decoded = ThpCreateNewSession.fromBuffer(
          buildThpCreateNewSession(const TrezorPassphrase.empty())
              .writeToBuffer());
      expect(decoded.hasPassphrase(), isTrue);
      expect(decoded.passphrase, '');
      expect(decoded.hasOnDevice(), isFalse);
    });

    test('ThpCreateNewSession wire round-trip: value carries the normalized string',
        () {
      final decoded = ThpCreateNewSession.fromBuffer(
          buildThpCreateNewSession(TrezorPassphrase.value('é'))
              .writeToBuffer());
      expect(decoded.hasPassphrase(), isTrue);
      expect(decoded.passphrase, 'é');
    });

    test('ThpCreateNewSession consumed: throws TrezorSessionExpiredException',
        () {
      expect(() => buildThpCreateNewSession(const TrezorPassphraseConsumed()),
          throwsA(isA<TrezorSessionExpiredException>()));
    });

    test('deriveCardano defaults to explicit false (matches old behavior)', () {
      final msg = buildThpCreateNewSession(const TrezorPassphrase.empty());
      expect(msg.hasDeriveCardano(), isTrue);
      expect(msg.deriveCardano, isFalse);
    });
  });

  group('PassphraseIntentSlot', () {
    test('no intent answers as a standard wallet (empty passphrase)', () {
      final slot = PassphraseIntentSlot();
      final ack = slot.ackMessage();
      expect(ack.hasPassphrase(), isTrue);
      expect(ack.passphrase, '');
      expect(ack.hasOnDevice(), isFalse);
    });

    test('value intent can answer repeatedly before markUsed', () {
      final slot = PassphraseIntentSlot()..store(TrezorPassphrase.value('hunter2'));
      expect(slot.ackMessage().passphrase, 'hunter2');
      expect(slot.ackMessage().passphrase, 'hunter2');
    });

    test('markUsed degrades value intent: re-ask throws TrezorSessionExpiredException', () {
      final slot = PassphraseIntentSlot()..store(TrezorPassphrase.value('hunter2'));
      slot.ackMessage();
      slot.markUsed();
      expect(slot.ackMessage, throwsA(isA<TrezorSessionExpiredException>()));
    });

    test('markUsed keeps empty and onDevice intents silently re-answerable', () {
      final empty = PassphraseIntentSlot()..store(const TrezorPassphrase.empty());
      empty.ackMessage();
      empty.markUsed();
      expect(empty.ackMessage().passphrase, '');

      final onDevice = PassphraseIntentSlot()
        ..store(const TrezorPassphrase.onDevice());
      onDevice.ackMessage();
      onDevice.markUsed();
      expect(onDevice.ackMessage().onDevice, isTrue);
    });

    test('store replaces a consumed intent (new createSession re-arms answering)', () {
      final slot = PassphraseIntentSlot()..store(TrezorPassphrase.value('hunter2'));
      slot.ackMessage();
      slot.markUsed();
      slot.store(TrezorPassphrase.value('hunter3'));
      expect(slot.ackMessage().passphrase, 'hunter3');
    });
  });

}
