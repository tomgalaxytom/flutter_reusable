import 'package:flutter/material.dart';

import '../const/constant.dart';

class FlutterText extends StatelessWidget {
  final String text;
  final int textFontSize;
  final Color textfontColor;

  const FlutterText({
    Key? key,
    this.text = "Dummy",
    this.textFontSize = 25,
    this.textfontColor = textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: textFontSize.toDouble(),
          color: textColor,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
