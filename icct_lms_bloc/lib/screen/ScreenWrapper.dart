import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icct_lms_bloc/bloc/auth/auth_bloc.dart';
import 'package:icct_lms_bloc/screen/Home.dart';
import 'package:icct_lms_bloc/screen/auth/AuthWrapper.dart';

class ScreenWrapper extends StatelessWidget {
  const ScreenWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
        builder: (context,state){
        if(state is UserVerified){
          return const Home();
        }else{
          return const AuthWrapper();
        }
    });
  }
}
