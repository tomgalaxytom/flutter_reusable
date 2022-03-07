import 'package:flutter/material.dart';

class ImageDecoration extends StatelessWidget {
  final String imageurl;
  final double containerHeight;

  const ImageDecoration(
      {Key? key, required this.imageurl, this.containerHeight = 88.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: containerHeight,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: DecorationImage(
            image: NetworkImage(imageurl),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.black,
            width: 8,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
