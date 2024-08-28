import 'package:flutter/material.dart';

Widget myContainer(Widget child) {
  return Container(
    width: 98,
    height: 48,
    decoration: BoxDecoration(
      border: Border.all(
        width: 2,
        color: const Color(0xFF1F2022),
      ),
      borderRadius: BorderRadius.circular(48),
    ),
    child: child,
  );
}
