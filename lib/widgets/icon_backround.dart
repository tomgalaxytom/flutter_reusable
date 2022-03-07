// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../const/constant.dart';

class IconBackground extends StatelessWidget {
  List<BoxShadow> shadow = <BoxShadow>[
    const BoxShadow(color: Color(0xfff8f8f8), blurRadius: 10, spreadRadius: 15),
  ];
  final IconData icon;
  final Color iconcolor;

  IconBackground({Key? key, this.icon = Icons.add, this.iconcolor = iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color: Color(0XFFFFFFFF),
        //boxShadow: shadow
      ),
      child: Icon(
        icon,
        color: iconcolor,
      ),
    );
  }
}
