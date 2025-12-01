import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_app_bloc_freezed/infrastructure/authservices/appservices.dart';
import 'package:login_app_bloc_freezed/infrastructure/employeedb/employeedb.dart';
import 'package:login_app_bloc_freezed/infrastructure/get%20current%20location/get_location.dart';
import 'package:login_app_bloc_freezed/domain/authrequestmodel.dart';
import 'package:login_app_bloc_freezed/domain/authresponsemodel.dart';
import 'package:login_app_bloc_freezed/domain/empcheckresponse.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<LogIn>((event, emit) async {
      emit(state.copyWith(isError: false, isLoading: true));
      try {
        try {
          final authResponse = await ApiService().loginUser(
            event.authrequestmodel,
          );
          final employeedb = Employeedb();
          await employeedb.insertEmployeeData(
            authResponse,
          ); // insert auth response to sql

          emit(
            state.copyWith(
              isError: false,
              isLoggedin: true,
              isSuccess: authResponse.message.success,
              successMessage: authResponse.message.messageText,
              authresponsemodel: authResponse,
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
            ),
          );
        }
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
        String? token = await storage.read(key: "auth_token");

        // optional: get location
        await getlocation();

        if (token == null || token.isEmpty) {
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

    on<LogOut>((event, emit) async {
      emit(state.copyWith(isError: false, isLoading: true, isLoggedin: false));

      try {
        final storage = FlutterSecureStorage();
        await storage.read(key: "auth_token");
        await storage.delete(key: "auth_token");
        final employeedb = Employeedb();
        await employeedb.deleteEmployeeData();
        emit(state.copyWith(isLggedout: true, isLoading: false));
      } catch (e) {
        log("$e error occured in user logged out ");
        emit(
          state.copyWith(isError: true, isLoading: false, isLggedout: false),
        );
      }
    });
  }
}
