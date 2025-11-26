part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  factory AuthState({
    required bool isLoading,
    required bool isError,
    required bool isSuccess,
    required String successMessage,
    required bool isSalesPerson,
  }) = _AuthState;
  factory AuthState.initial() {
    return AuthState(
      isError: false,
      isLoading: true,
      isSuccess: false,
      successMessage: '',
      isSalesPerson: false,
    );
  }
}
