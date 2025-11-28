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
      emit(state.copyWith(lon: lon, lat: lat));
      try {
        Map<String, dynamic> formData = {
          "log_type": 'IN',
          "time": event.empcheckinout.time,
          "image": event.empcheckinout.image,
          "file_type": event.empcheckinout.fileType,
          "odometer_value": "12,32,32,132",
          "latitude": "19.0760",
          "longitude": "72.8777",
          "vehicle_type": event.empcheckinout.vehicletype,
        };
        log("time : ${event.empcheckinout.time.toString()}");
        log('latitude : $lat');
        log('longitude: $lon');
        log(formData.toString());
        Response res = await EmpCheckinCheckoutApi().emppost(
          "employee.employee_checkin",
          formData,
        );
        log("Response Data: ${res.data}");
        Response status = await EmpCheckinCheckoutStatus().empGet(
          "employee.get_checkin_status",
        );
        log("employee status api call response : ${status.data}");
        emit(state.copyWith(isError: false, isLoading: false));
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
  }
}
