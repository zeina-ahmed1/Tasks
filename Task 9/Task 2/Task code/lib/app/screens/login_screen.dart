// login_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_9/app/cubit/password_cubit.dart';
import 'package:flutter_application_9/app/cubit/password_state.dart';
import 'package:flutter_application_9/app/widgets/auth_fields.dart';
import 'package:flutter_application_9/app/widgets/my_button.dart';
import 'package:flutter_application_9/app/widgets/my_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/my_sized_box.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PasswordCubit, PasswordState>(
      builder: (BuildContext context, state) {
        return Scaffold(
          backgroundColor: const Color(0xFF141414),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: CircleAvatar(
                      backgroundColor: const Color(0xFF1F2022),
                      child: SvgPicture.asset(
                        'assets/icons/back.svg',
                        width: 24,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 32),
                    child: Column(
                      children: [
                        Text(
                          'LET’S SIGN YOU IN',
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontFamily: 'Teko',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Welcome back. You’ve been missed!',
                          style: TextStyle(
                            color: Color(0xFF808696),
                            fontSize: 14,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AuthFields(
                    formKey: formKey,
                  ),
                  mySizedBox(height: 24),
                  Center(
                    child: myButton(
                        context: context,
                        text: 'Login',
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            debugPrint('Login');
                          }
                        }),
                  ),
                  mySizedBox(height: 24),
                  const Center(
                    child: Text(
                      'Or login with',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF808797),
                      ),
                    ),
                  ),
                  mySizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myContainer(
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/icons/google (1).svg',
                            width: 24,
                          ),
                        ),
                      ),
                      mySizedBox(width: 16),
                      myContainer(
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/icons/twitter (1).svg',
                            width: 24,
                          ),
                        ),
                      ),
                      mySizedBox(width: 16),
                      myContainer(
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/icons/facebook (1).svg',
                            width: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
