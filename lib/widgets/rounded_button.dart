// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class RoundedButtonField extends StatefulWidget {
  final VoidCallback press;

  final String text;

  const RoundedButtonField({
    Key? key,
    required this.press,
    required this.text,
  }) : super(key: key);

  @override
  State<RoundedButtonField> createState() => _RoundedButtonFieldState();
}

class _RoundedButtonFieldState extends State<RoundedButtonField> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 46,
        width: 145,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.purple,
              Colors.red,
            ],
          ),
        ),
        child: FlatButton(
          onPressed: widget.press,
          child: Text(
            widget.text,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
        ),
      ),
    );
  }
}
