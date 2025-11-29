import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:login_app_bloc_freezed/infrastructure/authservices/emp_checkin_checkout_api.dart';
import 'package:login_app_bloc_freezed/infrastructure/authservices/emp_checkin_checkout_status.dart';
import 'package:login_app_bloc_freezed/infrastructure/get%20current%20location/get_location.dart';
import 'package:login_app_bloc_freezed/models/empCheckInOut.dart';
import 'package:login_app_bloc_freezed/models/empcheckresponse.dart';

part 'emp_in_out_event.dart';
part 'emp_in_out_state.dart';
part 'emp_in_out_bloc.freezed.dart';

class EmpInOutBloc extends Bloc<EmpInOutEvent, EmpInOutState> {
  EmpInOutBloc() : super(EmpInOutState.initial()) {
    on<EmployeeCheckinCheckout>((event, emit) async {
      emit(state.copyWith(isError: false, isLoading: true));
      Position position = await getlocation();
      double lat = position.latitude;
      double lon = position.longitude;

      try {
        log("time : ${event.empcheckinout.time.toString()}");
        log('latitude : $lat');
        log('longitude: $lon');

        Response res = await EmpCheckinCheckoutApi().emppost(
          "employee.employee_checkin",
          event.empcheckinout.toJson(),
        );
        log("Response Data: ${res.data}");
        add(EmployeeStatusCheck());
        emit(
          state.copyWith(isError: false, isLoading: false, lat: lat, lon: lon),
        );
      } catch (e) {
        log("$e error occured");
      }
    });
    on<SelectVehicleEvent>((event, emit) async {
      emit(state.copyWith(isError: false, isLoading: true));
      try {
        log("the event data : ${event.vehicle}");
        emit(
          state.copyWith(
            isError: false,
            isLoading: false,
            selectedVehicle: event.vehicle,
          ),
        );
      } catch (e) {
        log("$e error occured");
        emit(
          state.copyWith(isError: false, isLoading: false, selectedVehicle: ''),
        );
      }
    });
    on<EmployeeStatusCheck>((event, emit) async {
      try {
        emit(state.copyWith(isError: false, isLoading: true));
        Response status = await EmpCheckinCheckoutStatus().empGet(
          "employee.get_checkin_status",
        );
        log("employee status api call response : ${status.data}");
        try {
          EmployeeStatusResponse employeeStatusResponse =
              EmployeeStatusResponse.fromJson(status.data);
          emit(state.copyWith(emplyeestatusresponse: employeeStatusResponse));
        } catch (e) {
          print('error happen in employeeStatusResponse $e ');
          emit(state.copyWith(emplyeestatusresponse: null, isError: true));
        }
      } catch (e) {
        print('Employee status check api error $e');
        emit(state.copyWith(isError: true));
      }
    });
  }
}
