import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

class DeviceCard extends StatelessWidget {
  final TrezorDevice device;
  final void Function(TrezorDevice) onTap;

  const DeviceCard({super.key, required this.device, required this.onTap});

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () => onTap(device),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Theme.of(context).colorScheme.surfaceContainer,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset("assets/trezorSafe7.svg", width: 50),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                device.name,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
