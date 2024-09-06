// my_text_field.dart
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? Function(String?) validator;
  final Widget? suffixIcon;

  MyTextField({
    super.key,
    required this.label,
    required this.keyboardType,
    required this.obscureText,
    required this.validator,
    this.suffixIcon,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xFFF8FE11),
      keyboardType: widget.keyboardType,
      style: const TextStyle(
        color: Colors.white,
      ),
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
        label: Text(
          widget.label,
          style: const TextStyle(
            color: Color(0xFF808696),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFF8FE11),
          ),
        ),
      ),
      validator: widget.validator,
    );
  }
}
