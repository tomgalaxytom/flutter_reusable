import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  const PasswordField({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextFormField(
        obscureText: _isObscure,
        keyboardType: TextInputType.text,
        controller: widget.controller,
        onChanged: (String value) {},
        validator: (value) {
          if (value!.length == 0)
            return "Please Enter a Password";
          else if (value.length < 8)
            return ("Password should contains in 8 characters");
          else
            return null;
        },
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: widget.labelText,
          suffixIcon: IconButton(
            icon: Icon(
              _isObscure ? Icons.visibility : Icons.visibility_off,
              color: Colors.purple,
            ),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
          labelStyle: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
          hintText: widget.hintText,
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
