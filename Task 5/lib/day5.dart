import 'package:flutter/material.dart';

class Day5 extends StatelessWidget {
  const Day5({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF5059D7), Colors.white]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            ),
            title: Center(
              child: Text(
                "WELCOME",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
            backgroundColor: Color(0xFFfbf5ff),
            shadowColor: Color.fromARGB(255, 0, 0, 0),
            elevation: 20,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.zero,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Image(
                        image: AssetImage(
                            "assets/original-024b5107f93ad6c204f99d9e7b38b8c3.png"),
                        height: 450,
                        width: 450,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    style: const TextStyle(fontSize: 20),
                    showCursor: false,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFfbf5ff),
                        hintText: ("Email"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 129, 7, 120),
                                width: 2.0))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    style: const TextStyle(fontSize: 20),
                    obscureText: true,
                    showCursor: false,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFfbf5ff),
                        hintText: ("Password"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 129, 7, 120),
                                width: 2.0))),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
