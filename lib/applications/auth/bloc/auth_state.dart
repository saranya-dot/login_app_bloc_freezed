part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  factory AuthState({
    required bool isLoading,
    required bool isError,
    required bool isSuccess,
    required String successMessage,
    required bool isLoggedin,
    AuthResponseModel? authresponsemodel,
    EmployeeStatusResponse?
    employeestatusresponse, // dont use this here ,change later
    required bool? isLoggedout,
  }) = _AuthState;
  factory AuthState.initial() {
    return AuthState(
      isError: false,
      isLoading: true,
      isSuccess: false,
      successMessage: '',
      isLoggedin: false,
      isLoggedout: false,
    );
  }
}
