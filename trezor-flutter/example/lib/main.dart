import 'dart:io';

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
  TrezorMonero? monero;

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

                Future<String> onCodePin() async {
                  final res = await showDialog<String>(
                    context: context,
                    builder: (context) => PinPopup(),
                  );
                  if (res == null) throw Exception();
                  return res;
                }

                final client = TrezorClient.getClientForConnection(
                  connection,
                  state,
                  "Cake Tech",
                  "Cake Wallet Dev Phone",
                  onCodePin,
                );

                await client.createChannel();

                monero = TrezorMonero(client);
                final monAddress = await monero!.getWatchCredentials();
                setState(() => moneroAddress = monAddress.$2);


              },
            ),
          ),

          if (moneroAddress != null) Text("Monero Address: $moneroAddress"),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: clearList, child: Text("Clear List")),
              TextButton(onPressed: () => print(state.toJsonString()), child: Text("print State")),
              TextButton(
                onPressed: () {
                  final std = ThpState.fromJson(
                    '{"properties":{"1":"T3W1","2":1,"3":2,"4":0,"5":[2]},"credentials":[{"trezorStaticPublicKey":"8b6ace3e9ba34c14ea3e12abecaa89b228aab5ef225d47cb957d5815a9d6ad79","credential":"0a240a1543616b652057616c6c6574204465762050686f6e6510001a0943616b65205465636812202561d829ace53b264d04947b17a65ed82b44d08415832f2337072530853c18a7","hostStaticKey":"a9386a331f62eb667749ae70d75fcf8d40e5a7d318bb361836d176d11bd69ecc","autoconnect":false}],"channel":42934,"sendBit":0,"recvBit":0,"sendAckBit":0,"recvAckBit":1,"sendNonce":14,"recvNonce":15,"piggybackAckEnabled":false}',
                  );
                  setState(() => state = std);
                },
                child: Text("Load State"),
              ),
              TextButton(
                onPressed: () => setState(() => state = ThpState()),
                child: Text("Reset State"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () async {
                  final res = await monero!.syncKeyImages(tdis);
                  print(res.toMap());
                },
                child: Text("Sync KeyImages"),
              ),
              TextButton(
                onPressed: () async {
                  final res2 = await monero!.signTransaction(tx);
                  print(res2);
                },
                child: Text("Send Transaction"),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
