import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "You are in sign in page",
          style: TextStyle(color: Color.fromARGB(255, 59, 3, 68), fontSize: 30),
        ),
      ),
    );
  }
}
