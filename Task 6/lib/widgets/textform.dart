import 'package:flutter/material.dart';

Widget myText(
    {required String? label,
    required TextInputType? keyboardType,
    bool obsecureText = false}) {
  return TextFormField(
    keyboardType: keyboardType,
    obscureText: obsecureText,
    cursorColor: const Color(0xFFF8FE11),
    style: const TextStyle(color: Colors.white),
    decoration: InputDecoration(
      label: Text(
        label!,
        style: const TextStyle(color: Color(0xFF808696)),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFF8FE11)),
      ),
    ),
  );
}
