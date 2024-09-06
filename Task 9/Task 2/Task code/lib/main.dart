import 'package:flutter/material.dart';
import 'package:flutter_application_9/app/cubit/password_cubit.dart';
import 'package:flutter_application_9/app/screens/welcome_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordCubit(),
      child: MaterialApp(
        title: 'Monster Livescore',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const WelcomeScreen(),
      ),
    );
  }
}
