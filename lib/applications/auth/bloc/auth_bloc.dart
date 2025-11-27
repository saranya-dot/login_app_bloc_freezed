import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_app_bloc_freezed/infrastructure/authservices/authentication_api.dart';
import 'package:login_app_bloc_freezed/models/authrequestmodel.dart';
import 'package:login_app_bloc_freezed/models/authresponsemodel.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<LogIn>((event, emit) async {
      emit(state.copyWith(isError: false, isLoading: true));
      try {
        Map<String, dynamic> formData = {
          "username": event.authrequestmodel.username,
          "password": event.authrequestmodel.password,
        };
        final storage = FlutterSecureStorage();
        Response res = await AuthenticationApi().authpost(formData);
        log("Response Data: ${res.data}");
        AuthResponseModel authResponseModel = AuthResponseModel.fromJson(
          res.data,
        );
        await storage.write(
          key: "token",
          value: authResponseModel.message.token,
        );
        bool isSalesPersonMissing = authResponseModel.message.salesPerson
            .trim()
            .isEmpty;
        emit(
          state.copyWith(
            isError: false,
            isSuccess: authResponseModel.message.success,
            successMessage: authResponseModel.message.messageText,
            isSalesPerson: isSalesPersonMissing,
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
  }
}
