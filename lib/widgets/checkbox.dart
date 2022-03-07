import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 10,
        ),
        // LoginHeaderTitle(headerTitle: "Checkbox without Header and Subtitle:"),
        Checkbox(
          checkColor: Colors.greenAccent,
          activeColor: Colors.red,
          value: this.valuefirst,
          onChanged: (bool? value) {
            setState(() {
              this.valuefirst = value!;
            });
          },
        ),
        Checkbox(
          value: this.valuesecond,
          onChanged: (bool? value) {
            setState(() {
              this.valuesecond = value!;
            });
          },
        ),
      ],
    );
  }
}
