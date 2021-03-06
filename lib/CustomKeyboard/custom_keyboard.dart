import 'package:flutter/material.dart';
import 'package:flutter_custom_keyboard/CustomKeyboard/keyboard_key.dart';

class CustomKeyboard extends StatefulWidget {
  @override
  _CustomKeyboardState createState() => _CustomKeyboardState();
}

class _CustomKeyboardState extends State<CustomKeyboard> {
  final keys = [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '9'],
    ['00', '0', '<-'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Custom Keyboard'),
      // ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: keys
              .map(
                (x) => Row(
                  children: x.map(
                    (y) {
                      return Expanded(
                        child: KeyboardKey(
                          label: y,
                          value: y,
                          onTap: (val) {
                            print(val);
                          },
                        ),
                      );
                    },
                  ).toList(),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
