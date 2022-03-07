import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizedBoxWidget extends StatelessWidget {
  final int heightvalue;
  const SizedBoxWidget({
    Key? key,
    required this.heightvalue,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightvalue.toDouble(),
    );
  }
}
