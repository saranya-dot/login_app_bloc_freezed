import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_app_bloc_freezed/infrastructure/studentdb/studentdb.dart';
import 'package:login_app_bloc_freezed/models/studentmodel.dart';

part 'student_event.dart';
part 'student_state.dart';
part 'student_bloc.freezed.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentState.initial()) {
    on<CreateStudent>((event, emit) async {
      emit(state.copyWith(isError: false, isLoading: true, isSuccess: true));
      try {
        log(event.studentRequestmodel.name);
        final studentdb = StudentDatabase();
        await studentdb.insertStudentData(event.studentRequestmodel);
        add(GetStudent());
        emit(
          state.copyWith(
            isError: false,
            isLoading: false,
            isSuccess: true,
            successMessage: "Student creation successfully completed",
          ),
        );
      } catch (e) {
        log(' $e request error');
        emit(
          state.copyWith(
            isError: true,
            isSuccess: false,
            isLoading: false,
            successMessage: 'Error in creating student data $e',
          ),
        );
      }
    });
    on<GetStudent>((event, emit) async {
      emit(state.copyWith(isError: false, isLoading: true, isSuccess: true));
      try {
        final studentdb = StudentDatabase();
        var studentRequestmodel = await studentdb.getStudentData();
        emit(
          state.copyWith(
            studentRequestmodel: studentRequestmodel,
            successMessage: 'student data fetched successfully',
            isError: false,
            isSuccess: true,
          ),
        );
      } catch (e) {
        log('request error');
        emit(
          state.copyWith(
            isError: true,
            successMessage:
                "Error in fetching student data. Please try again $e",
          ),
        );
      }
    });
    on<UpdateStudent>((event, emit) async {
      emit(state.copyWith(isError: false, isLoading: true, isSuccess: true));
      try {
        final studentdb = StudentDatabase();
        await studentdb.updateStudentData(event.studentRequestmodel);

        var updatedStudentvalue = await studentdb.getStudentData();
        emit(
          state.copyWith(
            isError: false,
            isLoading: true,
            studentRequestmodel: updatedStudentvalue,
            isSuccess: true,
            successMessage: 'Student data updated successfully',
          ),
        );
      } catch (e) {
        log('request error');
        emit(
          state.copyWith(
            isError: true,
            isLoading: false,
            isSuccess: false,
            successMessage:
                "Error in update student data , please try again : $e",
          ),
        );
      }
    });
    on<DeleteStudent>((event, emit) async {
      emit(state.copyWith(isError: false, isLoading: true, isSuccess: true));
      try {
        final studentdb = StudentDatabase();
        await studentdb.deleteStudent(event.studentRequestmodel);

        var updatedStudentvalue = await studentdb.getStudentData();

        emit(
          state.copyWith(
            isError: false,
            isLoading: true,
            studentRequestmodel: updatedStudentvalue,
            isSuccess: true,
            successMessage: 'Student Deleted successfully',
          ),
        );
      } catch (e) {
        log('request error');
        emit(
          state.copyWith(
            isError: true,
            isLoading: false,
            isSuccess: false,
            successMessage:
                "Error in delete student data , please try again : $e",
          ),
        );
      }
    });
  }
}
