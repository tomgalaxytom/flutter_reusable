import 'package:flutter/material.dart';

class NetworkImageNoOpcaity extends StatelessWidget {
  final String networkimgurl;
  final double width;
  final double height;

  const NetworkImageNoOpcaity(
      {Key? key,
      this.networkimgurl = "https://wallpaperaccess.com/full/2070441.jpg",
      this.width = 100.0,
      this.height = 100.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 200,
        padding: const EdgeInsets.all(24),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            image: DecorationImage(
              image: NetworkImage(networkimgurl),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
