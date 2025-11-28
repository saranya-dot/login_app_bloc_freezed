import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationState.initial()) {
    on<Getlocation>((event, emit) async {
      emit(state.copyWith(isError: false, isLoading: true));
      try {
        LocationPermission permission = await Geolocator.checkPermission();

        if (permission == LocationPermission.denied) {
          permission = await Geolocator.requestPermission();
          if (permission == LocationPermission.denied) {
            log("permission: $permission");

            return emit(
              state.copyWith(isError: true, isLoading: false, lat: 0, lon: 0),
            );
          }
        }

        if (permission == LocationPermission.deniedForever) {
          log("permission: $permission");

          return emit(
            state.copyWith(isError: true, isLoading: false, lat: 0, lon: 0),
          );
        }

        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );

        emit(
          state.copyWith(
            isError: false,
            isLoading: false,
            lat: position.latitude,
            lon: position.longitude,
          ),
        );
      } catch (e) {
        emit(state.copyWith(isError: true, isLoading: false, lat: 0, lon: 0));
      }
    });
  }
}
