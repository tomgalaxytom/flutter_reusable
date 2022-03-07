import 'package:flutter/material.dart';

class BuildSubject extends StatelessWidget {
  const BuildSubject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const urlChemistry =
        'https://images.unsplash.com/photo-1575503802870-45de6a6217c8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80';

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  urlChemistry,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'Chemistry',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.white30,
                  width: 80,
                  height: 80,
                  child: const Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
