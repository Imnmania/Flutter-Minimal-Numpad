import 'package:flutter/material.dart';
import 'package:flutter_custom_keyboard/CustomKeyboard/custom_keyboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Keyboard',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: CustomKeyboard(),
    );
  }
}
