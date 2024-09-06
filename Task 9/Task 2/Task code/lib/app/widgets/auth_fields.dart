// auth_fields.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_9/app/cubit/password_cubit.dart';
import 'package:flutter_application_9/app/cubit/password_state.dart';
import 'my_sized_box.dart';
import 'my_text_field.dart';

class AuthFields extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const AuthFields({super.key, required this.formKey});

  @override
  State<AuthFields> createState() => _AuthFieldsState();
}

class _AuthFieldsState extends State<AuthFields> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          MyTextField(
            label: 'Email',
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          mySizedBox(height: 24),
          BlocConsumer<PasswordCubit, PasswordState>(
            builder: (BuildContext context, state) {
              bool isVisible = state is show_pass;
              return MyTextField(
                label: 'Password',
                keyboardType: TextInputType.visiblePassword,
                obscureText: !isVisible,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                suffixIcon: IconButton(
                  icon: Icon(
                    isVisible ? Icons.visibility : Icons.visibility_off,
                    color: const Color(0xFF808696),
                  ),
                  onPressed: () {
                    BlocProvider.of<PasswordCubit>(context).visibility();
                  },
                ),
              );
            },
            listener: (BuildContext context, PasswordState state) {},
          ),
        ],
      ),
    );
  }
}
