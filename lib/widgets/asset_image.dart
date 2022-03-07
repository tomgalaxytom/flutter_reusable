import 'package:flutter/material.dart';

class AssetImageWidget extends StatelessWidget {
  final String? assetimgpath;
  const AssetImageWidget({Key? key, this.assetimgpath}) : super(key: key);

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
              image: AssetImage(assetimgpath!),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
