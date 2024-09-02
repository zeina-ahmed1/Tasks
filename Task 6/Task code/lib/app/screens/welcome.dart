import 'package:flutter/material.dart';
import 'package:flutter_application_7/app/screens/sign_up.dart';
import 'package:flutter_svg/svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            Stack(
              children: [
                SvgPicture.asset(
                  'assets/images/pattern.svg',
                
                  width: 472,
                  height: 472,
                ),
                Image.asset(
                  "assets/images/cup.png",
                  width: 375,
                  height: 416,
                ),
              ],
            ),
            mysizedBox(height: 40),
            const Text(
              "MONSTER LIVESCORE",
              style: TextStyle(
                color: Color(0xFFffffff),
                fontFamily: 'Teko',
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
            mysizedBox(height: 8),
            const SizedBox(
              width: 311,
              child: Text(
                "We’d like to check that your preferences and details are accurate.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF808797),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
              ),
            ),
            mysizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(311, 48),
                backgroundColor: const Color(0xFFF8FE11),
              ),
              child: const Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.5,
                    color: Color(0xFF141414)),
              ),
            ),
            mysizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignUp();
                }));
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(
                  width: 2,
                  color: Color(0xFFF8FE11),
                ),
                fixedSize: const Size(311, 48),
                backgroundColor: const Color(0xFF141414),
              ),
              child: const Text(
                "Sign for Monster Livescore",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.5,
                    color: Colors.white),
              ),
            ),
          ],
        )),
      ),
    );
  }

  Widget mysizedBox({
    double height = 0.0,
    double width = 0.0,
  }) {
    return SizedBox(height: height, width: width);
  }
}
