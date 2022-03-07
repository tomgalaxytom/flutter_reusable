import 'package:flutter/material.dart';

class DontHaveAccount extends StatefulWidget {
  final VoidCallback press;

  final String text;
  final String text2;

  const DontHaveAccount({
    Key? key,
    required this.press,
    required this.text,
    required this.text2,
  }) : super(key: key);

  @override
  State<DontHaveAccount> createState() => _DontHaveAccountState();
}

class _DontHaveAccountState extends State<DontHaveAccount> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
        TextButton(
          onPressed: widget.press,
          child: Text(
            widget.text2,
            style: TextStyle(fontSize: 15, color: Colors.purple),
          ),
        ),
      ],
    );
  }
}
