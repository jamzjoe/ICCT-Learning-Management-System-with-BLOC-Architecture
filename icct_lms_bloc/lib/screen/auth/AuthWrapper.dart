import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icct_lms_bloc/cubit/logreg_toggle/logreg_toggle_cubit.dart';
import 'package:icct_lms_bloc/screen/auth/LoginScreen.dart';
import 'package:icct_lms_bloc/screen/auth/RegisterScreen.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogRegToggleCubit, LogRegToggleState>(
      builder: (context, state) {
        if (state.toggled == true) {
          return const RegisterScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
