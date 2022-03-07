import 'package:flutter/material.dart';

import 'flutter_container.dart';
import 'flutter_row.dart';
import 'flutter_text.dart';
import 'icon_backround.dart';
import 'search_box.dart';

class FlutterColumn extends StatelessWidget {
  const FlutterColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const FlutterText(text: "Flutter Demos"),
        const SizedBox(height: 20.0),
        const SearchBox(),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconBackground(
              icon: Icons.cake,
            ),
            IconBackground(
              icon: Icons.local_drink,
            ),
            IconBackground(
              icon: Icons.icecream,
            ),
            IconBackground(
              icon: Icons.no_meals,
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        const FlutterContainer(
          widget: FlutterRow(),
        )
      ],
    );
  }
}
