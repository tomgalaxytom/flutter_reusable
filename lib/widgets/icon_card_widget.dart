import 'package:flutter/material.dart';

class IconCardWidget extends StatelessWidget {
  final Color cardcolor;
  final double cwidth;
  final double cheight;
  final IconData iconimg;
  final Color iconcolor;
  final double iconsize;
  final String text1;
  final String text2;
  final TextStyle textstyleheading;
  final TextStyle textstylesubheading;

  const IconCardWidget(
      {Key? key,
      required this.cardcolor,
      required this.cwidth,
      required this.cheight,
      required this.iconimg,
      required this.iconcolor,
      required this.iconsize,
      required this.text1,
      required this.text2,
      required this.textstyleheading,
      required this.textstylesubheading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardcolor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      child: SizedBox(
        width: cwidth,
        height: cheight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            Icon(
              iconimg,
              color: iconcolor,
              size: iconsize,
            ),
            Text(
              text1,
              style: textstyleheading,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              text2,
              style: textstylesubheading,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
