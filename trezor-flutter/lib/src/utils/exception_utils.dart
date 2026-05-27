import 'package:flutter/services.dart';
import 'package:trezor_flutter/src/exceptions/trezor_exception.dart';

import '../models/connection_type.dart';

class TrezorExceptionUtils {
  const TrezorExceptionUtils._();

  static TrezorException fromPlatformException(
    PlatformException exception,
    ConnectionType connectionType,
  ) {
    final errorCode = int.tryParse(exception.code) ?? 0;
    final message = exception.message ?? '';

    if (message == "connectionLost") return ConnectionLostException(connectionType: connectionType);

    return TrezorDeviceException(
      errorCode: errorCode,
      message: message,
      cause: exception,
      connectionType: connectionType,
    );
  }
}
