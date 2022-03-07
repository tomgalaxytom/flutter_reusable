import 'package:flutter/material.dart';

class RowBasedBuildIcon extends StatelessWidget {
  final IconData icon;
  const RowBasedBuildIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.red.shade200),
      child: Icon(icon),
    );
  }
}
