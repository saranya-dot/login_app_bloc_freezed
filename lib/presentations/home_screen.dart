import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app_bloc_freezed/applications/student/bloc/student_bloc.dart';
import 'package:login_app_bloc_freezed/common_widgtes/common_bottomsheet.dart';
import 'package:login_app_bloc_freezed/models/studentmodel.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextEditingController nameController = TextEditingController();

  final TextEditingController ageController = TextEditingController();

  final TextEditingController phonenumberController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   BlocProvider.of<StudentBloc>(context).add(const GetStudent());
    // });
    return BlocListener<StudentBloc, StudentState>(
      listener: (context, state) {
        if (state.isSuccess) {
          log(state.successMessage);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.successMessage,
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
            ),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(title: Text('Student Details')),
        body: BlocBuilder<StudentBloc, StudentState>(
          builder: (context, state) {
            final students = state.studentRequestmodel;

            if (students == null || students.isEmpty) {
              return const Center(
                child: Text(
                  "No Data is Stored",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              );
            }

            return ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                final student = students[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Card(
                        child: ListTile(
                          title: Text(
                            'Name : ${student.name}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Age : ${student.age}"),
                              Text("Phn number : ${student.phonenumber}"),
                              Text("Email id : ${student.emailid}"),
                            ],
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    elevation: 5,
                                    isScrollControlled: true,
                                    builder: (_) {
                                      final tempName = TextEditingController(
                                        text: student.name,
                                      );
                                      final tempAge = TextEditingController(
                                        text: student.age,
                                      );
                                      final tempPhone = TextEditingController(
                                        text: student.phonenumber,
                                      );
                                      final tempEmail = TextEditingController(
                                        text: student.emailid,
                                      );

                                      return CommonBottomsheet(
                                        title: "Update User",
                                        btntitle: "Update",
                                        nameController: tempName,
                                        ageController: tempAge,
                                        emailController: tempEmail,
                                        phoneController: tempPhone,
                                        onPressed: () {
                                          BlocProvider.of<StudentBloc>(
                                            context,
                                          ).add(
                                            UpdateStudent(
                                              studentRequestmodel:
                                                  StudentRequestmodel(
                                                    id: student.id,
                                                    name: tempName.text,
                                                    age: tempAge.text,
                                                    phonenumber: tempPhone.text,
                                                    emailid: tempEmail.text,
                                                  ),
                                            ),
                                          );
                                          Navigator.pop(context);
                                        },
                                      );
                                    },
                                  );
                                },
                                icon: const Icon(Icons.edit),
                              ),

                              IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text("Delete ${student.name}?"),
                                        content: Text(
                                          "Are you sure you want to delete ${student.name}?",
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            child: const Text("Cancel"),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              // your delete code
                                              final tempName =
                                                  TextEditingController(
                                                    text: student.name,
                                                  );
                                              final tempAge =
                                                  TextEditingController(
                                                    text: student.age,
                                                  );
                                              final tempPhone =
                                                  TextEditingController(
                                                    text: student.phonenumber,
                                                  );
                                              final tempEmail =
                                                  TextEditingController(
                                                    text: student.emailid,
                                                  );
                                              BlocProvider.of<StudentBloc>(
                                                context,
                                              ).add(
                                                DeleteStudent(
                                                  studentRequestmodel:
                                                      StudentRequestmodel(
                                                        id: student.id,
                                                        name: tempName.text,
                                                        age: tempAge.text,
                                                        phonenumber:
                                                            tempPhone.text,
                                                        emailid: tempEmail.text,
                                                      ),
                                                ),
                                              );

                                              Navigator.pop(context);
                                            },
                                            child: const Text("Delete"),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                icon: const Icon(Icons.delete),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              elevation: 5,
              isScrollControlled: true,
              builder: (_) {
                return CommonBottomsheet(
                  title: "Create New User",
                  btntitle: "Create",
                  onPressed: () {
                    BlocProvider.of<StudentBloc>(context).add(
                      (CreateStudent(
                        studentRequestmodel: StudentRequestmodel(
                          id: DateTime.timestamp().toString(),
                          name: nameController.text,
                          age: ageController.text,
                          phonenumber: phonenumberController.text,
                          emailid: emailController.text,
                        ),
                      )),
                    );

                    Navigator.pop(context);
                    nameController.clear();
                    ageController.clear();
                    emailController.clear();
                    phonenumberController.clear();
                  },
                  nameController: nameController,
                  ageController: ageController,
                  emailController: emailController,
                  phoneController: phonenumberController,
                );
              },
            );
          },
          icon: const Icon(Icons.add),
          label: Text('Add data'),
        ),
      ),
    );
  }
}
