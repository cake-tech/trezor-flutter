import 'dart:io';

import 'package:example/widgets/device_card.dart';
import 'package:example/widgets/pin_popup.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:trezor_flutter/trezor_flutter.dart';

bool usbMode = false;
bool useV1 = false;

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
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color.fromRGBO(94, 227, 150, 1),
        onSurface: Color.fromRGBO(20, 20, 20, 1),
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

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      title: Text(
        widget.title,
        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
      ),
    ),
    body: Center(
      child: Column(
        children: [
          ...bleDevices.map(
            (d) => DeviceCard(
              device: d,
              onTap: (device) async {
                final connection = await trezorInterface.connect(device);

                print("connected!");

                if (!useV1) {
                  Future<String> onCodePin() async {
                    final res = await showDialog<String>(
                      context: context,
                      builder: (context) => PinPopup(),
                    );
                    if (res == null) throw Exception();
                    return res;
                  }

                  await getThpChannel(
                    connection,
                    state,
                    appName: "Cake Tech",
                    hostName: "Cake Wallet Dev Phone",
                    onCodeCode: onCodePin,
                  );
                }

                final monAddress = await TrezorMonero(connection, state).getWatchCredentials();
                setState(() => moneroAddress = monAddress.$2);
              },
            ),
          ),

          if (moneroAddress != null) Text("Monero Address: $moneroAddress"),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: clearList, child: Text("Clear List")),
              TextButton(
                onPressed: () => setState(() => state = ThpState()),
                child: Text("Reset State"),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
