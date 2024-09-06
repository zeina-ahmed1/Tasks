import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget myButton({
  required void Function()? onPressed,
  required String text,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.all(8),
      backgroundColor: const Color.fromARGB(255, 55, 190, 213),
      minimumSize: Size(150, 50),
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
    ),
  );
}
