part of 'emp_in_out_bloc.dart';

@freezed
sealed class EmpInOutState with _$EmpInOutState {
  factory EmpInOutState({
    required bool isLoading,
    required bool isError,
    required String? selectedVehicle,
    required EmployeeStatusResponse? emplyeestatusresponse,
    required bool isSuccess,
    required String successMessage,
  }) = _EmpInOutState;
  factory EmpInOutState.initial() {
    return EmpInOutState(
      isLoading: false,
      isError: false,
      selectedVehicle: null,

      emplyeestatusresponse: null,
      isSuccess: false,
      successMessage: '',
    );
  }
}
