import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  const TextInputField({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: controller,
        onChanged: (String value) {},
        validator: (value) {
          if (value!.length == 0)
            return "Please Enter a username";
          else
            return null;
        },
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
          hintText: hintText,
          fillColor: Colors.red,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
