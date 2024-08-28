// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_7/widgets/container.dart';
import 'package:flutter_application_7/widgets/sizebox.dart';
import 'package:flutter_application_7/widgets/textform.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                  child: IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                        backgroundColor: const Color(0xFF1f2022),
                        child: SvgPicture.asset(
                          'assets/images/chervon.svg',
                          width: 24,
                        ),
                      ))),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontFamily: 'Teko',
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                            color: Color(0xFF808696),
                            fontSize: 14,
                            letterSpacing: -0.5,
                          ),
                        ),
                        Text(
                          "Sign in",
                          style: TextStyle(
                            color: Color(0xFFF8FE11),
                            fontSize: 14,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              mysizedBox(height: 32),
              myText(
                  label: ("Email"), keyboardType: TextInputType.emailAddress),
              mysizedBox(height: 24),
              myText(
                  label: ("Password"),
                  keyboardType: TextInputType.visiblePassword),
              mysizedBox(height: 24),
              myText(label: ("Name"), keyboardType: TextInputType.name),
              mysizedBox(height: 24),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(311, 48),
                      backgroundColor: const Color(0xFFF8FE11)),
                  onPressed: () {},
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        color: Color(0xFF141414), fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              mysizedBox(height: 24),
              const Center(
                child: Text(
                  "Or login with",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF888797),
                  ),
                ),
              ),
              mysizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myContainer(IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/Google.svg',
                        width: 24,
                      ))),
                  mysizedBox(width: 16),
                  myContainer(IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/Twitter.svg',
                        width: 24,
                      ))),
                  mysizedBox(width: 16),
                  myContainer(IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/Facebook.svg',
                        width: 24,
                      ))),
                ],
              )
            ]),
      ),
    );
  }
}
