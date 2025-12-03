import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app_bloc_freezed/applications/employee/bloc/emp_in_out_bloc.dart';
import 'package:login_app_bloc_freezed/applications/imagepicker/bloc/imagepicker_bloc.dart';
import 'package:login_app_bloc_freezed/applications/profile/bloc/profile_bloc.dart';
import 'package:login_app_bloc_freezed/domain/empCheckInOut.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EmpInOutBloc>().add(EmployeeStatusCheck());
      context.read<ProfileBloc>().add(GetEmpProfile());
    });
    String? selectedVehicle;
    final formKey = GlobalKey<FormState>();

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
                    BlocConsumer<ProfileBloc, ProfileState>(
                      listener: (context, state) {},
                      builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome ${state.empprofilemodel?.salesPerson}👋',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  DateFormat(
                                    'MMM dd yyyy',
                                  ).format(DateTime.now()),
                                ),
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
                        );
                      },
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
                          BlocConsumer<EmpInOutBloc, EmpInOutState>(
                            listener: (context, state) {},
                            builder: (context, state) {
                              final data =
                                  state.emplyeestatusresponse?.message.message;
                              if (data == null) {
                                return const Center(
                                  child: Text(
                                    "Fetching employee status...",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                );
                              }
                              return Column(
                                children: [
                                  data.currentStatus == null
                                      ? Text(
                                          "Checked NA",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      : Text(
                                          "Checked ${data.currentStatus}",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                  SizedBox(height: 10),
                                  Text(
                                    data.currentStatus == null
                                        ? "please check in today"
                                        : data.currentStatus == "OUT"
                                        ? "Checked out time: ${data.checkOutTime}"
                                        : "Checked in time: ${data.checkInTime}",
                                  ),
                                  SizedBox(height: 10),
                                  data.currentStatus == "OUT"
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
                                                      "Details",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  ),
                                                  content: Form(
                                                    key: formKey,
                                                    child: Column(
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
                                                                        .isImagepick &&
                                                                    state.imagePath !=
                                                                        null &&
                                                                    state
                                                                        .imagePath!
                                                                        .isNotEmpty) {
                                                                  try {
                                                                    imageBytes =
                                                                        base64Decode(
                                                                          state
                                                                              .imagePath!,
                                                                        );
                                                                  } catch (e) {
                                                                    log(
                                                                      "Invalid base64 image: $e",
                                                                    );
                                                                  }
                                                                }
                                                                return Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    imageBytes ==
                                                                            null
                                                                        ? GestureDetector(
                                                                            onTap: () {
                                                                              BlocProvider.of<
                                                                                    ImagepickerBloc
                                                                                  >(
                                                                                    context,
                                                                                  )
                                                                                  .add(
                                                                                    (PickImageEvent()),
                                                                                  );
                                                                            },
                                                                            child: Icon(
                                                                              Icons.camera,
                                                                            ),
                                                                          )
                                                                        : Stack(
                                                                            children: [
                                                                              Container(
                                                                                width: 60,
                                                                                height: 60,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(
                                                                                    10,
                                                                                  ),
                                                                                  color: Colors.blue[100],
                                                                                ),
                                                                                child: Image.memory(
                                                                                  imageBytes,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Positioned(
                                                                                right: -15,
                                                                                bottom: -15,

                                                                                child: IconButton(
                                                                                  onPressed: () {
                                                                                    context
                                                                                        .read<
                                                                                          ImagepickerBloc
                                                                                        >()
                                                                                        .add(
                                                                                          DeletePickImageEvent(),
                                                                                        );
                                                                                  },
                                                                                  icon: Icon(
                                                                                    Icons.delete,
                                                                                    color: Colors.deepOrange,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                    if (context
                                                                            .read<
                                                                              ImagepickerBloc
                                                                            >()
                                                                            .state
                                                                            .imagePath ==
                                                                        null)
                                                                      Padding(
                                                                        padding: EdgeInsets.only(
                                                                          top:
                                                                              4,
                                                                        ),
                                                                        child: Text(
                                                                          "Required",
                                                                          style: TextStyle(
                                                                            color:
                                                                                Colors.red,
                                                                            fontSize:
                                                                                11,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                );
                                                              },
                                                            ),
                                                            SizedBox(width: 10),
                                                            // BlocBuilder<
                                                            //   EmpInOutBloc,
                                                            //   EmpInOutState
                                                            // >(
                                                            //   builder: (context, state) {
                                                            //     return Column(
                                                            //       children: [
                                                            //         DropdownButton<
                                                            //           String
                                                            //         >(
                                                            //           hint: const Text(
                                                            //             "Select Vehicle Type",
                                                            //             style: TextStyle(
                                                            //               color:
                                                            //                   Colors.black,
                                                            //               fontSize:
                                                            //                   15,
                                                            //             ),
                                                            //           ),

                                                            //           value:
                                                            //               selectedVehicle,
                                                            //           borderRadius:
                                                            //               BorderRadius.all(
                                                            //                 Radius.circular(
                                                            //                   25,
                                                            //                 ),
                                                            //               ),
                                                            //           items: const [
                                                            //             DropdownMenuItem(
                                                            //               value:
                                                            //                   "Car",
                                                            //               child: Text(
                                                            //                 "Car",
                                                            //               ),
                                                            //             ),
                                                            //             DropdownMenuItem(
                                                            //               value:
                                                            //                   "Bike",
                                                            //               child: Text(
                                                            //                 "Bike",
                                                            //               ),
                                                            //             ),
                                                            //           ],
                                                            //           onChanged: (value) {
                                                            //             // if (value != null) {
                                                            //             //   BlocProvider.of<
                                                            //             //         EmpInOutBloc
                                                            //             //       >(context)
                                                            //             //       .add(
                                                            //             //         (SelectVehicleEvent(
                                                            //             //           vehicle:
                                                            //             //               value,
                                                            //             //         )),
                                                            //             //       );
                                                            //             // }
                                                            //             setState(() {
                                                            //               selectedVehicle =
                                                            //                   value;
                                                            //             });
                                                            //           },
                                                            //         ),
                                                            //         if (selectedVehicle ==
                                                            //             null)
                                                            //           Padding(
                                                            //             padding: EdgeInsets.only(
                                                            //               top:
                                                            //                   4,
                                                            //             ),
                                                            //             child: Text(
                                                            //               "Required",
                                                            //               style: TextStyle(
                                                            //                 color:
                                                            //                     Colors.red,
                                                            //                 fontSize:
                                                            //                     11,
                                                            //               ),
                                                            //             ),
                                                            //           ),
                                                            //       ],
                                                            //     );
                                                            //   },
                                                            // ),
                                                            SizedBox(
                                                              width: 200,
                                                              child: DropdownButtonFormField<String>(
                                                                decoration:
                                                                    const InputDecoration(
                                                                      border:
                                                                          OutlineInputBorder(),
                                                                    ),
                                                                hint: const Text(
                                                                  "Select Vehicle Type",
                                                                  style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        15,
                                                                  ),
                                                                ),
                                                                value:
                                                                    selectedVehicle,
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
                                                                  setState(() {
                                                                    selectedVehicle =
                                                                        value;
                                                                  });
                                                                },
                                                                validator: (value) {
                                                                  if (value ==
                                                                      null) {
                                                                    return "Required";
                                                                  }
                                                                  return null;
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),

                                                        SizedBox(height: 10),

                                                        TextFormField(
                                                          validator: (value) {
                                                            if (value == null ||
                                                                value
                                                                    .trim()
                                                                    .isEmpty) {
                                                              return "Please enter odometer value";
                                                            }
                                                            return null;
                                                          },
                                                          controller:
                                                              odoController,
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          decoration: InputDecoration(
                                                            labelText:
                                                                "Enter Odometer (km)",
                                                            labelStyle:
                                                                TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
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
                                                                final image = context
                                                                    .read<
                                                                      ImagepickerBloc
                                                                    >()
                                                                    .state
                                                                    .imagePath;
                                                                if (formKey
                                                                        .currentState!
                                                                        .validate() &&
                                                                    selectedVehicle !=
                                                                        null &&
                                                                    image !=
                                                                        null) {
                                                                  if (context
                                                                          .read<
                                                                            ImagepickerBloc
                                                                          >()
                                                                          .state
                                                                          .imagePath ==
                                                                      null) {
                                                                    Padding(
                                                                      padding:
                                                                          EdgeInsets.only(
                                                                            top:
                                                                                4,
                                                                          ),
                                                                      child: Text(
                                                                        "Required",
                                                                        style: TextStyle(
                                                                          color:
                                                                              Colors.red,
                                                                          fontSize:
                                                                              11,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  BlocProvider.of<
                                                                        EmpInOutBloc
                                                                      >(context)
                                                                      .add(
                                                                        (EmployeeCheckinCheckout(
                                                                          empcheckinout: EmployeeCheckinCheckoutRequestModel(
                                                                            fileType:
                                                                                state.fileType!,
                                                                            image:
                                                                                state.imagePath!,
                                                                            imageOdo:
                                                                                '',
                                                                            logtype:
                                                                                (empstate.emplyeestatusresponse?.message.message.currentStatus ==
                                                                                        null ||
                                                                                    empstate.emplyeestatusresponse?.message.message.currentStatus ==
                                                                                        "OUT")
                                                                                ? 'IN'
                                                                                : 'OUT',
                                                                            // latitude:
                                                                            //     empstate.lat,
                                                                            // longitude:
                                                                            //     empstate.lon,
                                                                            odometerValue:
                                                                                odoController.text,

                                                                            time:
                                                                                DateFormat(
                                                                                  "yyyy-MM-dd HH:mm:ss",
                                                                                ).format(
                                                                                  DateTime.now(),
                                                                                ),
                                                                            vehicletype:
                                                                                selectedVehicle!,
                                                                          ),
                                                                        )),
                                                                      );
                                                                  if (empstate
                                                                      .isSuccess) {
                                                                    Navigator.pop(
                                                                      context,
                                                                    );
                                                                    ScaffoldMessenger.of(
                                                                      context,
                                                                    ).showSnackBar(
                                                                      SnackBar(
                                                                        content: Text(
                                                                          empstate
                                                                              .successMessage,
                                                                          style: const TextStyle(
                                                                            color:
                                                                                Colors.black,
                                                                          ),
                                                                        ),
                                                                        backgroundColor:
                                                                            Colors.black,
                                                                      ),
                                                                    );
                                                                    //call the status check
                                                                    context
                                                                        .read<
                                                                          EmpInOutBloc
                                                                        >()
                                                                        .add(
                                                                          EmployeeStatusCheck(),
                                                                        );
                                                                  } else if (empstate
                                                                          .isSuccess ==
                                                                      false) {
                                                                    Navigator.pop(
                                                                      context,
                                                                    );
                                                                    ScaffoldMessenger.of(
                                                                      context,
                                                                    ).showSnackBar(
                                                                      SnackBar(
                                                                        content: Text(
                                                                          empstate
                                                                              .successMessage,
                                                                          style: const TextStyle(
                                                                            color:
                                                                                Colors.black,
                                                                          ),
                                                                        ),
                                                                        backgroundColor:
                                                                            Colors.white,
                                                                      ),
                                                                    );
                                                                  }

                                                                  odoController
                                                                      .clear();
                                                                  selectedVehicle =
                                                                      '';
                                                                  var image = context
                                                                      .read<
                                                                        ImagepickerBloc
                                                                      >()
                                                                      .state
                                                                      .imagePath;
                                                                  image = '';
                                                                }
                                                              },
                                                              child:
                                                                  empstate
                                                                          .emplyeestatusresponse
                                                                          ?.message
                                                                          .message
                                                                          .currentStatus ==
                                                                      "IN"
                                                                  ? Text(
                                                                      'Check out',
                                                                    )
                                                                  : Text(
                                                                      'Check In',
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
                                              data.currentStatus == null
                                                  ? Text(
                                                      'Check in',
                                                      style: TextStyle(
                                                        color: Colors.blue,
                                                      ),
                                                    )
                                                  : state
                                                            .emplyeestatusresponse!
                                                            .message
                                                            .message
                                                            .currentStatus ==
                                                        "OUT"
                                                  ? Text(
                                                      'Check In',
                                                      style: TextStyle(
                                                        color: Colors.blue,
                                                      ),
                                                    )
                                                  : Text(
                                                      'Check Out',
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
