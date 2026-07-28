import 'dart:io';

import 'package:example/widgets/address_card.dart';
import 'package:example/widgets/device_card.dart';
import 'package:example/widgets/pin_popup.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

import 'monero_tx.dart';

bool usbMode = false;

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Trezor Connect Example',
    theme: ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: Color(0xFF00854D),
        primaryContainer: Color(0xFF89DB7F),
        secondary: Color(0xFF89DB7F),
        surface: Color(0xFFFFFFFF),
        surfaceContainer: Color(0xFFFFFFFF),
        onPrimary: Colors.white,
        onSurface: Color(0xFF171717),
        onSurfaceVariant: Color(0xFF4A4A4A),
        outline: Color(0xFFE0E0E0),
        outlineVariant: Color(0xFFB0B0B0),
      ),
      textTheme: TextTheme(
        headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, letterSpacing: -0.2),
        bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        bodyMedium: TextStyle(fontSize: 14),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 0.1),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0.1),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(width: 2),
        ),
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    ),
    home: HomePage(title: 'Trezor Demo'),
    debugShowCheckedModeBanner: false,
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TrezorInterface trezorInterface;
  final bleDevices = <TrezorDevice>[];

  var state = ThpState();
  String? moneroAddress;
  TrezorMonero? monero;
  TrezorClient? client;

  @override
  void initState() {
    if (usbMode) {
      trezorInterface = TrezorInterface.usb();
    } else {
      trezorInterface = TrezorInterface.ble(
        onPermissionRequest: (_) async {
          if (Platform.isMacOS) return true;

          Map<Permission, PermissionStatus> statuses = await [
            Permission.bluetoothScan,
            Permission.bluetoothConnect,
            Permission.bluetoothAdvertise,
          ].request();

          return statuses.values.where((status) => status.isDenied).isEmpty;
        },
        bleOptions: BluetoothOptions(maxScanDuration: Duration(minutes: 5)),
      );
    }

    trezorInterface.scan().listen(
      (device) => setState(() {
        bleDevices.add(device);
      }),
    );
    super.initState();
  }

  void clearList() {
    setState(() => bleDevices.clear());
    if (usbMode) {
      trezorInterface.scan().listen(
        (device) => setState(() {
          bleDevices.add(device);
        }),
      );
    }
  }

  Future<void> doAutoPair() async {
    final auto = await (client as TrezorClientV2).getAutoPairingCredentials();
    state.setPairingCredentials([auto]);
  }

  Future<void> refreshMoneroAddress() async {
    final monAddress = await monero!.getWatchCredentials();
    setState(() => moneroAddress = monAddress.$2);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (bleDevices.isEmpty)
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search, size: 64, color: Theme.of(context).colorScheme.primary),
                    SizedBox(height: 16),
                    Text(
                      'Scanning for Trezor devices...',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          if (bleDevices.isNotEmpty)
            Expanded(
              child: ListView.builder(
                itemCount: bleDevices.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: DeviceCard(
                    device: bleDevices[index],
                    onTap: (device) async {
                      final connection = await trezorInterface.connect(device);

                      Future<String> onCodePin() async {
                        final res = await showDialog<String>(
                          context: context,
                          builder: (context) => PinPopup(),
                        );
                        if (res == null) throw Exception();
                        return res;
                      }

                      client = TrezorClient.getClientForConnection(
                        connection,
                        state,
                        "Cake Tech",
                        "Cake Wallet Dev Phone",
                        onCodePin,
                      );

                      await client!.createChannel(passphrase: "CakeWallet");

                      monero = TrezorMonero(client!);
                      final monAddress = await monero!.getWatchCredentials();
                      setState(() => moneroAddress = monAddress.$2);
                    },
                  ),
                ),
              ),
            ),
          if (moneroAddress != null)
            AddressCard(
              addressType: "Monero",
              address: moneroAddress!,
              onRefresh: refreshMoneroAddress,
            ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  icon: Icon(Icons.refresh, size: 18),
                  label: Text("Rescan"),
                  onPressed: clearList,
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    side: BorderSide(color: Theme.of(context).colorScheme.outline),
                    foregroundColor: Theme.of(context).colorScheme.onSurface,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: OutlinedButton.icon(
                  icon: Icon(Icons.info_outline, size: 18),
                  label: Text("Debug"),
                  onPressed: () => print(state.toJsonString()),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    side: BorderSide(color: Theme.of(context).colorScheme.outline),
                    foregroundColor: Theme.of(context).colorScheme.onSurface,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: OutlinedButton.icon(
                  icon: Icon(Icons.restart_alt, size: 18),
                  label: Text("Reset"),
                  onPressed: () => setState(() => state = ThpState()),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    side: BorderSide(color: Colors.red.withValues(alpha: 0.3)),
                    foregroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  icon: Icon(Icons.refresh, size: 18),
                  label: Text("Auto paring"),
                  onPressed: doAutoPair,
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    side: BorderSide(color: Theme.of(context).colorScheme.outline),
                    foregroundColor: Theme.of(context).colorScheme.onSurface,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: OutlinedButton.icon(
                  icon: Icon(Icons.restart_alt, size: 18),
                  label: Text("Load State"),
                  onPressed: () => setState(
                    () => state = ThpState.fromJson(
                      '{"properties":{"1":"T3W1","2":1,"3":2,"4":1,"5":[2]},"credentials":[{"trezorStaticPublicKey":"8b6ace3e9ba34c14ea3e12abecaa89b228aab5ef225d47cb957d5815a9d6ad79","credential":"0a240a1543616b652057616c6c6574204465762050686f6e6510011a0943616b65205465636812203b968b85785c115f47209493f3c6a12802b79aa3cd4ead54016e1e77cc852255","hostStaticKey":"4b9738965e62d5b1c034125008e0dafa4dda0da6359c03f4d481a09d6577b65c","autoconnect":true}],"channel":18784,"sendBit":0,"recvBit":0,"sendAckBit":0,"recvAckBit":1,"sendNonce":14,"recvNonce":15,"piggybackAckEnabled":false}',
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    side: BorderSide(color: Colors.red.withValues(alpha: 0.3)),
                    foregroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                ),
              ),
            ],
          ),
          if (monero != null)
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.sync, size: 18),
                      label: Text("Sync KeyImages"),
                      onPressed: () async {
                        final res = await monero!.syncKeyImages(tdis);
                        print(res.toMap());
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('KeyImages synced successfully'),
                              backgroundColor: Theme.of(context).colorScheme.primary,
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.send, size: 18),
                      label: Text("Send TX"),
                      onPressed: () async {
                        final res2 = await monero!.signTransaction(tx);
                        print(res2);
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Transaction signed'),
                              backgroundColor: Theme.of(context).colorScheme.primary,
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    ),
  );
}
