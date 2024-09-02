import 'package:flutter/material.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text(
        "Forget password ?",
        style: TextStyle(
          color: Color.fromARGB(255, 5, 112, 87),
          fontSize: 40,
        ),
      ),
    ));
  }
}
