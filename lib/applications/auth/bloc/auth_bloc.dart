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
        ); // auth api called
        log("Response Data: ${res.data}"); // auth api response

        try {
          AuthResponseModel authResponseModel = AuthResponseModel.fromJson(
            res.data,
          ); // saved that auth api response to a model called authresponsemodel

          //if the authresponsemodel contain token
          await storage.write(
            key: "token",
            value: authResponseModel.message.token,
          );
          log("token saved ");
          log("isloggedin value = true");
          emit(
            state.copyWith(
              isError: false,
              isLoggedin: true,
              isSuccess: authResponseModel.message.success,
              successMessage: authResponseModel.message.messageText,
              authresponsemodel: authResponseModel,
              // employeestatusresponse: employeeStatusResponse,
            ),
          );
        } catch (e) {
          log("check");
          emit(
            state.copyWith(
              isError: true,
              isLoggedin: false,
              isSuccess: false,
              successMessage: "something went wrong ",
              authresponsemodel: null,
              // employeestatusresponse: employeeStatusResponse,
            ),
          );
        }

        // Response status = await EmpCheckinCheckoutStatus().empGet(
        //   "employee.get_checkin_status",
        // );
        // log("employee status api call response : ${status.data}");
        // EmployeeStatusResponse employeeStatusResponse =
        //     EmployeeStatusResponse.fromJson(status.data);

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
        print('request error in auth ! $e');
        emit(
          state.copyWith(
            isError: true,
            isLoading: false,
            isSuccess: false,
            isLoggedin: false,
          ),
        );
        log('$e');
      }
    });
    on<SessionCheck>((event, emit) async {
      emit(state.copyWith(isError: false, isLoading: true, isLoggedin: false));

      try {
        // session check
        final storage = FlutterSecureStorage();
        String? token = await storage.read(key: "token");

        // optional: get location
        await getlocation();

        if (token == null) {
          emit(state.copyWith(isLoggedin: false, isLoading: false));

          log("session check the isloggedin value : false");
        } else {
          emit(state.copyWith(isLoggedin: true, isLoading: false));
          log("session check the isloggedin value : true");
        }
      } catch (e) {
        log("$e error occured");
        emit(state.copyWith(isError: true, isLoading: false));
      }
    });
  }
}
