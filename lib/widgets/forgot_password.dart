import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  final VoidCallback press;

  final String text;

  const ForgotPassword({
    Key? key,
    required this.press,
    required this.text,
  }) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: widget.press,
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
