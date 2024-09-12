import 'package:flutter/material.dart';
import 'package:flutter_application_10/bloc/weather_bloc.dart';
import 'package:flutter_application_10/data/determine_position.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
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
      home: FutureBuilder(
          future: determinePosition(),
          builder: (context, snap) {
            if (snap.hasData) {
              return BlocProvider<WeatherBloc>(
                create: (context) => WeatherBloc()
                  ..add(
                    FetchWeather(snap.data as Position),
                  ),
                child: HomeScreen(),
              );
            } else {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          }),
    );
  }
}

// 📍   °C