import 'package:flutter/material.dart';

class BuildRoundedBox extends StatelessWidget {
  final String label;
  final double containerHeight;

  const BuildRoundedBox(
      {Key? key, this.label = "HelloWorld", this.containerHeight = 88.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          //width: MediaQuery.of(context).size.width,
          height: containerHeight,
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            alignment: const Alignment(0.0, 0.0),
            padding: const EdgeInsets.all(10),
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
