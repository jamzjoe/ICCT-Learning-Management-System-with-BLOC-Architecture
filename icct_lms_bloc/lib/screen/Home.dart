import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icct_lms_bloc/bloc/auth/auth_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home')
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            BlocProvider.of<AuthBloc>(context).add(Logout());
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
