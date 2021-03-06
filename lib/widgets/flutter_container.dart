import 'package:flutter/material.dart';

import '../const/constant.dart';
import 'flutter_row.dart';
import 'flutter_text.dart';

class FlutterContainer extends StatelessWidget {
  final String text;
  final Color color;
  final int textFontSize;
  final Color bgColor;
  final Color textfontColor;
  final Widget? widget;
  final double containerheight;

  const FlutterContainer(
      {Key? key,
      this.text = "Dummy",
      this.color = appBarTextColor,
      this.textFontSize = 25,
      this.bgColor = containerbgColor,
      this.textfontColor = textColor,
      this.widget,
      this.containerheight = 70.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: containerheight,
         padding:EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: containerbgColor,
          border: Border.all(
            color: appBarTextColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),

        child: widget != null
            ? const FlutterRow()
            : FlutterText(text: text, textFontSize: textFontSize),
      ),
    );
  }
}
