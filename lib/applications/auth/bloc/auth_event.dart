part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logIn({required AuthRequestModel authrequestmodel}) =
      LogIn;
  factory AuthEvent.sessionCheck() = SessionCheck;
}
