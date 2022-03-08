import 'package:flutter/material.dart';

class RowWidgetWithStar extends StatelessWidget {
  const RowWidgetWithStar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(

                //crossAxisAlignment:CrossAxisAlignment.end,
                //mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Container(
                            // padding: const EdgeInsets.only(bottom: 8),
                            child: Text('Oeschinen Lake Campground')),
                        Container(child: Text('Kandersteg, Switzerland')),
                      ])),
                  Icon(
                    Icons.star,
                    color: Colors.red[500],
                  ),
                  Text('41'),
                ])));
  }
}
