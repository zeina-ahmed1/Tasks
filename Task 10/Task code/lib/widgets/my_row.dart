import 'package:flutter/material.dart';

class my_Row extends StatelessWidget {
  final String imagePath1;
  final String title1;
  final String subtitle1;
  final String imagePath2;
  final String title2;
  final String subtitle2;

  const my_Row({
    Key? key,
    required this.imagePath1,
    required this.title1,
    required this.subtitle1,
    required this.imagePath2,
    required this.title2,
    required this.subtitle2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              imagePath1,
              width: 45,
              height: 45,
            ),
            SizedBox(width: 10), // Replace mySizedBox with SizedBox
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  subtitle1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Image.asset(
              imagePath2,
              width: 45,
              height: 45,
            ),
            SizedBox(width: 10), // Replace mySizedBox with SizedBox
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  subtitle2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
