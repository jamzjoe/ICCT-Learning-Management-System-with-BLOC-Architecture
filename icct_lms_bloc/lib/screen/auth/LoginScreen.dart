import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icct_lms_bloc/bloc/auth/auth_bloc.dart';
import 'package:icct_lms_bloc/cubit/logreg_toggle/logreg_toggle_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final _formKey = GlobalKey<FormState>();
final emailController = TextEditingController();
final nameController = TextEditingController();
final passwordController = TextEditingController();
final schoolController = TextEditingController();


class _LoginScreenState extends State<LoginScreen> {

  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(bottom: 40),
            child: Center(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(40),
                children: [
                  // const Center(
                  //     child: Hero(
                  //       tag: 'assets/logo_black_text.png',
                  //       child: Image(
                  //         image: AssetImage('assets/logo_black_text.png'),
                  //         width: 250,
                  //       ),
                  //     )),
                  const Center(
                    child: Text(
                      'E-learning Management System',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                          letterSpacing: 2),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Login your account',
                    style:
                    TextStyle(fontSize: 23, fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: TextFormField(
                                autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                                autofillHints: AutofillHints.email.characters,
                                validator: (value) =>
                                value!.isEmpty && !value.contains('@')
                                    ? 'Email must be contains @'
                                    ' and 6+ chars long'
                                    : null,

                                decoration: InputDecoration(
                                  label: const Text('Email address'),
                                  hintText: 'email@example.com',
                                  border: const OutlineInputBorder(),
                                  prefixIcon: const Icon(Icons.mail),
                                  suffixIcon: emailController.text.isEmpty
                                      ? Container(
                                    width: 0,
                                  )
                                      : IconButton(
                                      onPressed: () =>
                                          emailController.clear(),
                                      icon: const Icon(Icons.close)),
                                ),
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: TextFormField(
                                autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                                autofillHints: AutofillHints.password.characters,
                                validator: (value) => value!.length < 6
                                    ? 'Passwo'
                                    'rd must be 6+ chars long.'
                                    : null,
                                decoration: InputDecoration(
                                  label: const Text('Password'),
                                  hintText: '******',
                                  border: const OutlineInputBorder(),
                                  prefixIcon: const Icon(Icons.password),
                                  suffixIcon: IconButton(
                                    icon: isPasswordVisible
                                        ? const Icon(Icons.visibility_off)
                                        : const Icon(Icons.visibility),
                                    onPressed: () {
                                      setState(() {
                                        isPasswordVisible = !isPasswordVisible;
                                      });
                                    },
                                  ),
                                ),
                                obscureText: isPasswordVisible,
                                controller: passwordController,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blue[900]),
                            onPressed: () async {
                              BlocProvider.of<AuthBloc>(context).add(Login());
                            },
                            icon: const Icon(CupertinoIcons.forward),
                            label: const Text('Login Account')),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 110,
                  ),
                ],
              ),
            ),
          )),
      bottomSheet: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {
                    BlocProvider.of<LogRegToggleCubit>(context)
                        .toggleScreen();
                  },
                  child: const Text('No account yet?')),
              TextButton(
                  onPressed: () {
                  },
                  child: const Text('Forgot Password?')),
            ],
          ),
        ),
      ),
    );
  }
}
