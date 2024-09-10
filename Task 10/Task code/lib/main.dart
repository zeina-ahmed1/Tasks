import 'package:flutter/material.dart';
//import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'screens/home_screen.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  //FlutterNativeSplash.removeAfter(initialization);
}

// Future initialization(BuildContext? context) async {
//   await Future.delayed(Duration(seconds: 3));
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

// 📍   °C