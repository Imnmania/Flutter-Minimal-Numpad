import 'package:flutter/material.dart';

class KeyboardKey extends StatefulWidget {
  final String label;
  final dynamic value;
  final ValueSetter<dynamic> onTap;

  const KeyboardKey({
    @required this.label,
    @required this.value,
    @required this.onTap,
  });
  @override
  _KeyboardKeyState createState() => _KeyboardKeyState();
}

class _KeyboardKeyState extends State<KeyboardKey> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap(widget.value);
      },
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Container(
          child: Center(
            child: Text(
              widget.label,
              style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
