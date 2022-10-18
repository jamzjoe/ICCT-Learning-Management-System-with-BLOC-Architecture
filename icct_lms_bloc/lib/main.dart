import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icct_lms_bloc/bloc/auth/auth_bloc.dart';
import 'package:icct_lms_bloc/cubit/logreg_toggle/logreg_toggle_cubit.dart';
import 'package:icct_lms_bloc/screen/ScreenWrapper.dart';

import 'package:icct_lms_bloc/screen/auth/AuthWrapper.dart';
import 'package:icct_lms_bloc/screen/auth/LoginScreen.dart';
import 'package:icct_lms_bloc/screen/auth/RegisterScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LogRegToggleCubit>(
          create: (context) => LogRegToggleCubit(),
        ),
        BlocProvider<AuthBloc>(create: (context) => AuthBloc())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => const ScreenWrapper(),
          '/log_in': (context) => const LoginScreen(),
          '/register': (context) => const RegisterScreen()
        },
      ),
    );
  }
}
