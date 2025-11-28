import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app_bloc_freezed/applications/auth/bloc/auth_bloc.dart';
import 'package:login_app_bloc_freezed/applications/employee/bloc/emp_in_out_bloc.dart';
import 'package:login_app_bloc_freezed/applications/imagepicker/bloc/imagepicker_bloc.dart';
import 'package:login_app_bloc_freezed/models/empCheckInOut.dart';
import 'package:login_app_bloc_freezed/presentations/profile_screen.dart';
import 'package:lottie/lottie.dart';

class EmployeeCheckinScreen extends StatefulWidget {
  const EmployeeCheckinScreen({super.key});

  @override
  State<EmployeeCheckinScreen> createState() => _EmployeeCheckinScreenState();
}

class _EmployeeCheckinScreenState extends State<EmployeeCheckinScreen> {
  TextEditingController odoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String? selectedVehicle;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 400,
                    child: Image.asset(
                      "assets/images/nonn.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    child: Center(
                      child: Lottie.asset(
                        'assets/animation/flyingbird.json',
                        width: 500,
                        height: 500,
                        repeat: true,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          DraggableScrollableSheet(
            initialChildSize: 0.6,
            minChildSize: 0.6,
            maxChildSize: 0.9,
            builder: (context, scrollController) {
              return Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 10),
                  ],
                ),
                // child: ListView(
                //   controller: scrollController,
                //   children: [

                //   ],
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Saranya 👋',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text('Nov 27 2025'),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileScreen(),
                              ),
                            );
                          },
                          child: Lottie.asset(
                            'assets/animation/profileperson.json',
                            width: 50,
                            height: 50,
                            repeat: true,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Divider(thickness: 0.5, color: Colors.white),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BlocConsumer<AuthBloc, AuthState>(
                            listener: (context, state) {},
                            builder: (context, state) {
                              return Column(
                                children: [
                                  Text(
                                    "Checked ${state.employeestatusresponse!.message.message.currentStatus}",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    state
                                                .employeestatusresponse!
                                                .message
                                                .message
                                                .currentStatus ==
                                            "OUT"
                                        ? "Checked out time: ${state.employeestatusresponse!.message.message.checkOutTime}"
                                        : "Checked in time: ${state.employeestatusresponse!.message.message.checkInTime}",
                                  ),
                                  SizedBox(height: 10),
                                  state
                                              .employeestatusresponse!
                                              .message
                                              .message
                                              .currentStatus ==
                                          "OUT"
                                      ? SizedBox.shrink()
                                      : ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Colors.blue.shade100,
                                          ),
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  backgroundColor: Colors.white,
                                                  title: Center(
                                                    child: const Text(
                                                      "Check in details",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  ),
                                                  content: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          BlocConsumer<
                                                            ImagepickerBloc,
                                                            ImagepickerState
                                                          >(
                                                            listener:
                                                                (
                                                                  context,
                                                                  state,
                                                                ) {},
                                                            builder: (context, state) {
                                                              Uint8List?
                                                              imageBytes;
                                                              if (state
                                                                      .imagePath !=
                                                                  null) {
                                                                imageBytes =
                                                                    base64Decode(
                                                                      state
                                                                          .imagePath!,
                                                                    );
                                                              }
                                                              return GestureDetector(
                                                                onTap: () {
                                                                  BlocProvider.of<
                                                                        ImagepickerBloc
                                                                      >(context)
                                                                      .add(
                                                                        (Pickimageevent()),
                                                                      );
                                                                },
                                                                child: Row(
                                                                  children: [
                                                                    Container(
                                                                      width: 60,
                                                                      height:
                                                                          60,
                                                                      decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                              2,
                                                                            ),
                                                                        color: Colors
                                                                            .blue[100],
                                                                      ),
                                                                      child: Image.memory(
                                                                        imageBytes!,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          SizedBox(width: 10),
                                                          BlocBuilder<
                                                            EmpInOutBloc,
                                                            EmpInOutState
                                                          >(
                                                            builder: (context, state) {
                                                              return DropdownButton<
                                                                String
                                                              >(
                                                                hint: const Text(
                                                                  "Select Vehicle Type",
                                                                  style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        15,
                                                                  ),
                                                                ),

                                                                value: state
                                                                    .selectedVehicle,
                                                                borderRadius:
                                                                    BorderRadius.all(
                                                                      Radius.circular(
                                                                        25,
                                                                      ),
                                                                    ),
                                                                items: const [
                                                                  DropdownMenuItem(
                                                                    value:
                                                                        "Car",
                                                                    child: Text(
                                                                      "Car",
                                                                    ),
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    value:
                                                                        "Bike",
                                                                    child: Text(
                                                                      "Bike",
                                                                    ),
                                                                  ),
                                                                ],
                                                                onChanged: (value) {
                                                                  if (value !=
                                                                      null) {
                                                                    BlocProvider.of<
                                                                          EmpInOutBloc
                                                                        >(context)
                                                                        .add(
                                                                          (SelectVehicleEvent(
                                                                            vehicle:
                                                                                value,
                                                                          )),
                                                                        );
                                                                  }
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),

                                                      SizedBox(height: 10),

                                                      SizedBox(height: 10),
                                                      TextField(
                                                        controller:
                                                            odoController,
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        decoration: InputDecoration(
                                                          labelText:
                                                              "Enter Odometer (km)",
                                                          labelStyle: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  actions: [
                                                    BlocConsumer<
                                                      EmpInOutBloc,
                                                      EmpInOutState
                                                    >(
                                                      listener:
                                                          (context, state) {},
                                                      builder: (context, empstate) {
                                                        return BlocConsumer<
                                                          ImagepickerBloc,
                                                          ImagepickerState
                                                        >(
                                                          listener:
                                                              (
                                                                context,
                                                                state,
                                                              ) {},
                                                          builder: (context, state) {
                                                            return ElevatedButton(
                                                              onPressed: () {
                                                                BlocProvider.of<EmpInOutBloc>(
                                                                  context,
                                                                ).add(
                                                                  (EmployeeCheckinCheckout(
                                                                    empcheckinout: EmployeeCheckinCheckoutRequestModel(
                                                                      fileType:
                                                                          state
                                                                              .fileType!,
                                                                      image: state
                                                                          .imagePath!,
                                                                      imageOdo:
                                                                          '',
                                                                      logType:
                                                                          'IN',
                                                                      latitude:
                                                                          empstate
                                                                              .lat,
                                                                      longitude:
                                                                          empstate
                                                                              .lon,
                                                                      odometerValue:
                                                                          odoController
                                                                              .text,
                                                                      time:
                                                                          DateFormat(
                                                                            "yyyy-MM-dd HH:mm:ss",
                                                                          ).format(
                                                                            DateTime.now(),
                                                                          ),
                                                                      vehicletype:
                                                                          empstate
                                                                              .selectedVehicle!,
                                                                    ),
                                                                  )),
                                                                );
                                                              },
                                                              child: Text(
                                                                'Check in',
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.qr_code_scanner,
                                                color: Colors.blueAccent,
                                                size: 20,
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                'Check out',
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
