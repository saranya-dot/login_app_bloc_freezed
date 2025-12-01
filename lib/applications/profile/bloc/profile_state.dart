part of 'profile_bloc.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  factory ProfileState({
    required bool isLoading,
    required bool isError,
    required EmpProfileModel? empprofilemodel,
  }) = _ProfileState;
  factory ProfileState.initial() {
    return ProfileState(empprofilemodel: null, isError: false, isLoading: true);
  }
}
