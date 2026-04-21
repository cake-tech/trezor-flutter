import 'package:flutter/material.dart';

class PinPopup extends StatelessWidget {
  final _pinController = TextEditingController();

  PinPopup({super.key});

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: Text("Enter Pin"),
    content: Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Positioned(
          right: -40,
          top: -40,
          child: InkResponse(
            onTap: () => Navigator.of(context).pop(null),
            child: const CircleAvatar(backgroundColor: Colors.red, child: Icon(Icons.close)),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(controller: _pinController, keyboardType: TextInputType.number),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                child: const Text('Submit'),
                onPressed: () => Navigator.of(context).pop(_pinController.text),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
