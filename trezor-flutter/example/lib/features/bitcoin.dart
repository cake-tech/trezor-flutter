import 'dart:convert';

import 'package:example/widgets/address_card.dart';
import 'package:example/widgets/loading_button.dart';
import 'package:flutter/material.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

class BitcoinWidget extends StatefulWidget {
  const BitcoinWidget({super.key, required this.bitcoin});

  final TrezorBitcoin bitcoin;

  @override
  State<BitcoinWidget> createState() => _BitcoinWidgetState();
}

class _BitcoinWidgetState extends State<BitcoinWidget> {
  String? address;

  Future<void> _refreshAddress() async {
    final bitcoinAddress = await widget.bitcoin.getAddress(derivationPath: "m/84'/0'/0'/0/0");
    if (mounted) setState(() => address = bitcoinAddress);
  }

  Future<void> _refreshPublicKeys() async {
    final res = await widget.bitcoin.getPublicKey(derivationPath: "m/84'/0'/0'", showDisplay: true);
    debugPrint(res);
  }

  Future<void> _signMessage() async {
    final res = await widget.bitcoin.signMessage(
      derivationPath: "m/84'/0'/0'/0/0",
      message: utf8.encode("Hey Trezor!"),
    );
    debugPrint(base64Encode(res));
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final bitcoinColor = Color(0x00f7931a);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: colorScheme.surfaceContainer,
        border: Border.all(color: bitcoinColor.withValues(alpha: 0.2)),
        boxShadow: [
          BoxShadow(
            color: bitcoinColor.withValues(alpha: 0.8),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (address != null) ...[
            AddressCard(addressType: 'Bitcoin', address: address!, onRefresh: _refreshAddress),
            const SizedBox(height: 16),
          ],

          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              'Bitcoin Operations',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: colorScheme.onSurface,
              ),
            ),
          ),

          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 12,
            childAspectRatio: 1.2,
            children: [
              LoadingButton(icon: Icons.wallet, label: 'Get Address', onPressed: _refreshAddress),
              LoadingButton(icon: Icons.key, label: 'Get Address', onPressed: _refreshPublicKeys),
              LoadingButton(icon: Icons.edit_note, label: 'Sign Message', onPressed: _signMessage),
            ],
          ),
        ],
      ),
    );
  }
}
