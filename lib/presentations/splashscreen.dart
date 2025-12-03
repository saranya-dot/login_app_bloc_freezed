import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app_bloc_freezed/applications/auth/bloc/auth_bloc.dart';
import 'package:login_app_bloc_freezed/applications/employee/bloc/emp_in_out_bloc.dart';
import 'package:login_app_bloc_freezed/presentations/employee_checkin_screen.dart';
import 'package:login_app_bloc_freezed/presentations/login_screen.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EmpInOutBloc>().add(EmployeeStatusCheck());
      context.read<AuthBloc>().add(SessionCheck());
      // context.read<ProfileBloc>().add(GetEmpProfile());
    });

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        if (state.isLoading) return;

        await Future.delayed(const Duration(seconds: 2));

        if (state.isLoggedin) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => EmployeeCheckinScreen()),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => LoginScreen()),
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Lottie.asset(
            'assets/animation/RunningCat.json',
            width: 250,
            height: 250,
            repeat: true,
          ),
        ),
      ),
    );
  }
}
