import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class RadioButtonWidget extends StatefulWidget {
  RadioButtonWidget({Key? key}) : super(key: key);

  @override
  _RadioButtonWidgetState createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  BestTutorSite _site = BestTutorSite.javatpoint;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('www.javatpoint.com'),
          leading: Radio(
            value: BestTutorSite.javatpoint,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('www.w3school.com'),
          leading: Radio(
            value: BestTutorSite.w3schools,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('www.tutorialandexample.com'),
          leading: Radio(
            value: BestTutorSite.tutorialandexample,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
