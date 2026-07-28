import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key, required this.addressType, required this.address});

  final String addressType;
  final String address;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 12),
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Theme.of(context).colorScheme.primary),
      ),
      child: Row(
        children: [
          Icon(Icons.wallet, color: Theme.of(context).colorScheme.primary, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              '$addressType: ${address.substring(0, 8)}...${address.substring(address.length - 8)}',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          IconButton(
            icon: Icon(Icons.copy, size: 18, color: Theme.of(context).colorScheme.primary),
            onPressed: () {
              Clipboard.setData(ClipboardData(text: address));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Address copied to clipboard'),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
              );
            },
          ),
        ],
      ),
    ),
  );
}
