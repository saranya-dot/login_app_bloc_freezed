import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app_bloc_freezed/applications/auth/bloc/auth_bloc.dart';
import 'package:login_app_bloc_freezed/common_widgtes/common_elevator_btn.dart';
import 'package:login_app_bloc_freezed/common_widgtes/common_textformfield.dart';
import 'package:login_app_bloc_freezed/models/authrequestmodel.dart';
import 'package:login_app_bloc_freezed/presentations/home_screen.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();

    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Authentication Bloc')),
        backgroundColor: Colors.grey.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonTextformfield(
                hintText: 'User name',
                controller: usernameController,
                type: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your User name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              CommonTextformfield(
                hintText: 'Password',
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 50),
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state.isSuccess) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  }
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        state.successMessage,
                        style: TextStyle(color: Colors.black),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  );
                  if (state.isSalesPerson) {
                    AlertDialog(
                      title: Text("Warning"),
                      content: Text("Sales Person is missing !"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Ok"),
                        ),
                      ],
                    );
                  }
                },
                builder: (context, state) {
                  return CommonElevationBtn(
                    btnText: 'Login',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        BlocProvider.of<AuthBloc>(context).add(
                          (LogIn(
                            authrequestmodel: AuthRequestModel(
                              username: usernameController.text,
                              password: passwordController.text,
                            ),
                          )),
                        );
                        log(usernameController.text);
                      }

                      // usernameController.clear();
                      // passwordController.clear();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
