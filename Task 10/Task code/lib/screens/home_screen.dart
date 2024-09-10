import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_10/widgets/my_sized_box.dart';

import '../widgets/my_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.1 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(color: Color(0xFFFFAB40)),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "📍 : EG",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  mySizedBox(height: 10), // Adjust the height as needed
                  Text(
                    "Ismailia",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  mySizedBox(height: 20),
                  Image.asset("assets/6.png"),
                ],
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    mySizedBox(height: 400),
                    Text(
                      "28 °C",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 55,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "CLEAR",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    mySizedBox(height: 10),
                    Text(
                      "Thursday 08 • 8:44 PM",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 2.1),
                    ),
                    mySizedBox(height: 40),
                    my_Row(
                      imagePath1: "assets/11.png",
                      title1: "Sunrise",
                      subtitle1: "5:13 AM",
                      imagePath2: "assets/12.png",
                      title2: "Sunset",
                      subtitle2: "6:39 PM",
                    ),
                    mySizedBox(height: 10),
                    Divider(
                      color: const Color.fromARGB(
                          255, 98, 98, 98), // The color of the line
                      height: 8, // The space around the divider
                      thickness: 1, // The thickness of the line
                      indent: 0, // The left padding of the line
                      endIndent: 0, // The right padding of the line
                    ),
                    mySizedBox(height: 10),
                    my_Row(
                        imagePath1: "assets/13.png",
                        title1: "Temp Max",
                        subtitle1: "28 °C",
                        imagePath2: "assets/14.png",
                        title2: "Temp Min",
                        subtitle2: "28 °C"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
