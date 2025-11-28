part of 'emp_in_out_bloc.dart';

@freezed
sealed class EmpInOutState with _$EmpInOutState {
  factory EmpInOutState({
    required bool isLoading,
    required bool isError,
    required String? selectedVehicle,
    required double? lat,
    required double? lon,
  }) = _EmpInOutState;
  factory EmpInOutState.initial() {
    return EmpInOutState(
      isLoading: true,
      isError: false,
      selectedVehicle: null,
      lat: 0,
      lon: 0,
    );
  }
}
