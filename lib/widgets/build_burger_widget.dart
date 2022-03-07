import 'package:flutter/material.dart';

class BuildBurgerWidget extends StatelessWidget {
  final String url;
  final Color containercolor;
  final double imgWidth;
  final double imgHeight;
  final String btext1;
  final String btext2;
  final String btext3;
  final TextStyle btext1textstyle;
  final TextStyle btext2textstyle;
  final TextStyle btext3textstyle;

  const BuildBurgerWidget(
      {Key? key,
      required this.url,
      required this.containercolor,
      required this.imgWidth,
      required this.imgHeight,
      required this.btext1,
      required this.btext2,
      required this.btext3,
      required this.btext1textstyle,
      required this.btext2textstyle,
      required this.btext3textstyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          //width: 50,
          //height: 200,
          padding: const EdgeInsets.all(12),
          color: containercolor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                url,
                width: imgWidth,
                height: imgHeight,
                fit: BoxFit.cover,
              ),
              Text(
                //"Beef Burger",
                btext1,
                style: btext1textstyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                //"onion with chees",
                btext2,
                style: btext2textstyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                //"\$24.00",
                btext3,
                style: btext3textstyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
