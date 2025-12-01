import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_app_bloc_freezed/infrastructure/employeedb/employeedb.dart';
import 'package:login_app_bloc_freezed/models/emp_profile_model.dart';
part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<GetEmpProfile>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false));
      try {
        // fetch from db
        final empdb = Employeedb();
        var empprofilemodel = await empdb.getEmployeeData();
        emit(
          state.copyWith(
            isError: false,
            isLoading: true,
            empprofilemodel: empprofilemodel,
          ),
        );
      } catch (e) {
        log('Some error occured $e');
        emit(state.copyWith(isError: true, isLoading: false));
      }
    });
  }
}
