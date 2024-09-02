import 'package:flutter/material.dart';
import 'package:flutter_application_8/screens/login.dart';
import 'package:flutter_application_8/screens/sign_up2.dart';

import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _LoginState();
}

class _LoginState extends State<SignUp> {
  bool obsecureText = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          image: AssetImage("assets/back_ui.png"),
          width: double.infinity,
          height: double.infinity,
        ),
        Center(
          child: Container(
            width: 375,
            height: 582,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 219, 223, 204),
                borderRadius: BorderRadiusDirectional.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(195, 0, 0, 0),
                    blurRadius: 12,
                    spreadRadius: 12,
                    offset: Offset(0, 3),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: Colors.transparent,
                body: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/logo_ui.png"),
                          Text(
                            "Sign up",
                            style: GoogleFonts.jomolhari(fontSize: 32),
                          ),
                          const SizedBox(width: 32),
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: "Name"),
                        style: const TextStyle(height: 2),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Phone number"),
                        style: const TextStyle(height: 2),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Email",
                            hintText: "zeinaahmed@gmail.com"),
                        style: const TextStyle(height: 2),
                        validator: (data) {
                          final regexp = RegExp(r'^[^@]+@[^\.]+\..+$');
                          if (data == null || !regexp.hasMatch(data)) {
                            return "Enter a valid email address";
                          }
                          return null;
                        },
                        onFieldSubmitted: (value) {
                          _formKey.currentState!.validate();
                        },
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        obscureText: obsecureText,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: "Password",
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obsecureText = !obsecureText;
                                });
                              },
                              icon: Icon(obsecureText
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                        ),
                        style: const TextStyle(height: 2),
                        validator: (data) {
                          if (data == null || data.isEmpty) {
                            return "Password is required";
                          } else if (data.length < 8) {
                            return "Password must be at least 8 characters long";
                          } else if (!RegExp(r'[A-Z]').hasMatch(data)) {
                            return "Password must contain at least one uppercase letter";
                          } else if (!RegExp(r'[a-z]').hasMatch(data)) {
                            return "Password must contain at least one lowercase letter";
                          } else if (!RegExp(r'[0-9]').hasMatch(data)) {
                            return "Password must contain at least one number";
                          } else if (!RegExp(r'[!@#\$&*~]').hasMatch(data)) {
                            return "Password must contain at least one special character";
                          }
                          return null;
                        },
                        onFieldSubmitted: (value) {
                          _formKey.currentState!.validate();
                        },
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SignUp2();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                            width: 1,
                          ),
                          fixedSize: const Size(140, 50),
                          backgroundColor: const Color(0xFF141414),
                        ),
                        child: const Text(
                          "sign up",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              letterSpacing: -0.5,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Login();
                              }));
                            },
                            child: const Text(
                              "sign in",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
