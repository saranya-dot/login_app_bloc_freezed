part of 'location_bloc.dart';

@freezed
sealed class LocationState with _$LocationState {
  factory LocationState({
    required bool isLoading,
    required bool isError,
    required double lat,
    required double lon,
  }) = _LocationState;
  factory LocationState.initial() {
    return LocationState(isError: false, isLoading: true, lat: 0, lon: 0);
  }
}
