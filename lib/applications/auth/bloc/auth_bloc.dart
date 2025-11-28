import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:login_app_bloc_freezed/infrastructure/authservices/authentication_api.dart';
import 'package:login_app_bloc_freezed/infrastructure/authservices/emp_checkin_checkout_status.dart';
import 'package:login_app_bloc_freezed/infrastructure/get%20current%20location/get_location.dart';
import 'package:login_app_bloc_freezed/models/authrequestmodel.dart';
import 'package:login_app_bloc_freezed/models/authresponsemodel.dart';
import 'package:login_app_bloc_freezed/models/empcheckresponse.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<LogIn>((event, emit) async {
      emit(state.copyWith(isError: false, isLoading: true));
      try {
        // Map<String, dynamic> formData = {
        //   "username": event.authrequestmodel.username,
        //   "password": event.authrequestmodel.password,
        // };
        final storage = FlutterSecureStorage();
        Response res = await AuthenticationApi().authpost(
          "auth.authenticate",
          event.authrequestmodel.toMap(),
        );
        log("Response Data: ${res.data}");
        AuthResponseModel authResponseModel = AuthResponseModel.fromJson(
          res.data,
        );
        await storage.write(
          key: "token",
          value: authResponseModel.message.token,
        );
        Response status = await EmpCheckinCheckoutStatus().empGet(
          "employee.get_checkin_status",
        );
        log("employee status api call response : ${status.data}");
        EmployeeStatusResponse employeeStatusResponse =
            EmployeeStatusResponse.fromJson(status.data);
        emit(
          state.copyWith(
            isError: false,
            isSuccess: authResponseModel.message.success,
            successMessage: authResponseModel.message.messageText,
            authresponsemodel: authResponseModel,
            employeestatusresponse: employeeStatusResponse,
          ),
        );
        // emit(state.copyWith(isError: false, isLoading: true, isSuccess: true));

        // await Future.delayed(Duration(seconds: 3), () {
        //   //print login success
        //   event.authrequestmodel.password == defaultpassword &&
        //           event.authrequestmodel.username == defaultusername
        //       ? emit(
        //           state.copyWith(
        //             isError: false,
        //             isLoading: true,
        //             isSuccess: true,
        //           ),
        //         )
        //       : emit(
        //           state.copyWith(
        //             isError: true,
        //             isLoading: false,
        //             isSuccess: false,
        //           ),
        //         );
        // });
      } catch (e) {
        print('request error!');
        emit(state.copyWith(isError: true, isLoading: false, isSuccess: false));
        log('$e');
      }
    });
    on<SessionCheck>((event, emit) async {
      emit(state.copyWith(isError: false, isLoading: true));

      try {
        // session check
        final storage = FlutterSecureStorage();
        String? token = await storage.read(key: "token");

        // optional: get location
        await getlocation();

        if (token == null) {
          emit(state.copyWith(isLoggedin: false, isLoading: false));
        } else {
          emit(state.copyWith(isLoggedin: true, isLoading: false));
        }
      } catch (e) {
        log("$e error occured");
        emit(state.copyWith(isError: true, isLoading: false));
      }
    });
  }
}
