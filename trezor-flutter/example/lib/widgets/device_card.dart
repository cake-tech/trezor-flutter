import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

class DeviceCard extends StatelessWidget {
  const DeviceCard({super.key, required this.device, required this.onTap});

  final TrezorDevice device;
  final void Function(TrezorDevice) onTap;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () => onTap(device),
    borderRadius: BorderRadius.circular(16),
    overlayColor: WidgetStateProperty.all(
      Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
    ),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.surfaceContainer,
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.08),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(
              imagePath,
              width: 32,
              height: 32,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  device.name,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                SizedBox(height: 4),
                Text(
                  _getDeviceSubtitle(device),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: Theme.of(context).colorScheme.primary,
            size: 24,
          ),
        ],
      ),
    ),
  );

  String _getDeviceSubtitle(TrezorDevice device) {
    switch (device.deviceInfo) {
      case TrezorDeviceType.modelOne:
        return 'First-generation hardware wallet';
      case TrezorDeviceType.modelT:
        return 'Touchscreen hardware wallet';
      case TrezorDeviceType.safe3:
        return 'Next-gen secure element';
      case TrezorDeviceType.safe5:
        return 'Premium hardware wallet';
      case TrezorDeviceType.safe7:
        return 'Latest generation';
    }
  }

  String get imagePath {
    switch (device.deviceInfo) {
      case TrezorDeviceType.modelOne:
        return "assets/device_trezor_model_one.svg";
      case TrezorDeviceType.modelT:
        return "assets/device_trezor_model_t.svg";
      case TrezorDeviceType.safe3:
        return "assets/device_trezor_safe_3.svg";
      case TrezorDeviceType.safe5:
        return "assets/device_trezor_safe_5.svg";
      case TrezorDeviceType.safe7:
        return "assets/device_trezor_safe_7.svg";
    }
  }
}
