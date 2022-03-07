import 'package:flutter/material.dart';

class ListViewWithHorizandal extends StatelessWidget {
  const ListViewWithHorizandal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  width: 150,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Hello world",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  width: 150,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "This is Test Message",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  width: 150,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "This is Test Message",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  width: 150,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "This is Test Message",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 150,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "This is Test Message",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
