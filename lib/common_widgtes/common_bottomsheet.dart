import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app_bloc_freezed/applications/student/bloc/student_bloc.dart';
import 'package:login_app_bloc_freezed/common_widgtes/common_elevator_btn.dart';
import 'package:login_app_bloc_freezed/common_widgtes/common_textformfield.dart';
import 'package:login_app_bloc_freezed/domain/studentmodel.dart';

class CommonBottomsheet extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final String title;
  final String btntitle;
  void Function()? onPressed;
  TextEditingController nameController;
  TextEditingController ageController;
  TextEditingController phoneController;
  TextEditingController emailController;
  CommonBottomsheet({
    super.key,
    required this.title,
    required this.btntitle,
    required this.onPressed,
    required this.nameController,
    required this.ageController,
    required this.emailController,
    required this.phoneController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),
            CommonTextformfield(
              hintText: 'name',
              controller: nameController,
              type: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            CommonTextformfield(
              hintText: 'age',
              controller: ageController,
              type: TextInputType.number,
              inputFormatter: [FilteringTextInputFormatter.digitsOnly],
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your age';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            CommonTextformfield(
              hintText: 'phn number',
              type: TextInputType.text,
              inputFormatter: [
                // FilteringTextInputFormatter.allow(RegExp(r'^\+91\d{10}$')),
                // LengthLimitingTextInputFormatter(13),
              ],
              controller: phoneController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Phone number is required";
                }
                String cleaned = value.replaceAll(" ", "");

                final regex = RegExp(r'^\+91\d{10}$');

                if (!regex.hasMatch(cleaned)) {
                  return "Phone number must be in format +91XXXXXXXXXX";
                }

                return null;
              },
            ),
            SizedBox(height: 10),
            CommonTextformfield(
              hintText: 'email id',
              type: TextInputType.emailAddress,
              controller: emailController,
              validator: (value) {
                value = value?.trim();
                if (value == null || value.isEmpty) {
                  return 'Email is required';
                }
                if (!RegExp(
                  r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
                ).hasMatch(value)) {
                  return 'Invalid email address';
                }
                return null;
              },
            ),
            SizedBox(height: 20),

            CommonElevationBtn(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  onPressed?.call();
                }
              },
              btnText: btntitle,
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
