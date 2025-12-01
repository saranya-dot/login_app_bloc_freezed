part of 'profile_bloc.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  factory ProfileEvent.empProfileView() = GetEmpProfile;
}
