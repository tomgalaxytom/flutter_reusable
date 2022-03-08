import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
              child: Column(children: [
            Container(
              child: Icon(
                Icons.star,
                color: Colors.red[500],
              ),
            ),
            Container(child: Text("Two")),
          ])),
          Container(
              child: Column(children: [
            Container(
              child: Icon(
                Icons.call,
                color: Colors.green[500],
              ),
            ),
            Container(child: Text("Two")),
          ])),
          Container(
              child: Column(children: [
            Container(
              child: Icon(
                Icons.near_me,
                color: Colors.yellow[500],
              ),
            ),
            Container(child: Text("Two")),
          ])),
        ]));
  }
}
