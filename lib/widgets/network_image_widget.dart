import 'package:flutter/material.dart';

class NetworkImageWidget extends StatelessWidget {
  final String networkimgurl;
  final double width;
  final double height;

  const NetworkImageWidget(
      {Key? key,
      required this.networkimgurl,
      this.width = 100.0,
      this.height = 100.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height / 3,
        decoration: BoxDecoration(
          border: Border.all(
            width: 9,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Image.network(
          networkimgurl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
