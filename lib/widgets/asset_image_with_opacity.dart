import 'package:flutter/material.dart';

class AssetImageWithOpacity extends StatelessWidget {
  final String? assetimgpath;
  final String heading;
  final String subheading;
  const AssetImageWithOpacity(
      {Key? key,
      this.assetimgpath,
      this.heading = "Heading",
      this.subheading = "Sub Heading"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: double.infinity,
          height: 200,
          margin: const EdgeInsets.symmetric(vertical: 5),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              image: DecorationImage(
                image: AssetImage(assetimgpath!),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.25),
                  BlendMode.darken,
                ),
              )),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              heading,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              subheading,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            )
          ])),
    );
  }
}
