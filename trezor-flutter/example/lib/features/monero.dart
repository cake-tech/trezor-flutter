import 'package:example/monero_tx.dart';
import 'package:example/widgets/address_card.dart';
import 'package:example/widgets/loading_button.dart';
import 'package:flutter/material.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

class MoneroWidget extends StatefulWidget {
  const MoneroWidget({super.key, required this.monero});

  final TrezorMonero monero;

  @override
  State<MoneroWidget> createState() => _MoneroWidgetState();
}

class _MoneroWidgetState extends State<MoneroWidget> {
  String? address;

  Future<void> _refreshAddress() async {
    final monAddress = await widget.monero.getWatchCredentials();
    if (mounted) setState(() => address = monAddress.$2);
  }

  Future<void> _syncKeyImages() async {
    final res = await widget.monero.syncKeyImages(tdis);
    debugPrint(res.toMap().toString());
  }

  Future<void> _signTransaction() async {
    final res = await widget.monero.signTransaction(tx);
    debugPrint(res.toString());
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final moneroColor = Color(0x00ff6600);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: colorScheme.surfaceContainer,
        border: Border.all(color: moneroColor.withValues(alpha: 0.2)),
        boxShadow: [
          BoxShadow(
            color: moneroColor.withValues(alpha: 0.8),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (address != null) ...[
            AddressCard(addressType: 'Monero', address: address!, onRefresh: _refreshAddress),
            const SizedBox(height: 16),
          ],

          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              'Monero Operations',
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
              LoadingButton(icon: Icons.sync, label: 'Sync Key Images', onPressed: _syncKeyImages),
              LoadingButton(icon: Icons.send, label: 'Sign TX', onPressed: _signTransaction),
            ],
          ),
        ],
      ),
    );
  }
}
