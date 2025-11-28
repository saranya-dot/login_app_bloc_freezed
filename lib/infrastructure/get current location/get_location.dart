// ignore_for_file: file_names

import 'dart:developer';
import 'package:geolocator/geolocator.dart';

getlocation() async {
  log('function get location');
  Position position;
  bool serviceEnabled;
  LocationPermission permission;
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    log('location disabled $serviceEnabled');
    // locationAlert(context: ctx);

    return serviceEnabled;
  }

  permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {
    // Fluttertoast.showToast(msg: 'Location is needed for smooth running of app');
    permission = await Geolocator.requestPermission();
    position = Position(
      altitudeAccuracy: 1.0,
      headingAccuracy: 1.0,
      longitude: 0,
      latitude: 0,
      timestamp: DateTime.now(),
      accuracy: 0,
      altitude: 0,
      heading: 0,
      speed: 0,
      speedAccuracy: 0,
    );
    log("permission: $permission");
    return position;
  }
  if (permission == LocationPermission.deniedForever) {
    permission = await Geolocator.requestPermission();
    position = Position(
      altitudeAccuracy: 1.0,
      headingAccuracy: 1.0,
      longitude: 0,
      latitude: 0,
      timestamp: DateTime.now(),
      accuracy: 0,
      altitude: 0,
      heading: 0,
      speed: 0,
      speedAccuracy: 0,
    );
    log("permission: $permission");
    return position;
  }
  if (permission == LocationPermission.whileInUse) {
    position = await Geolocator.getCurrentPosition();
    log('latitude:   ${position.latitude}');
    log('longitude :  ${position.longitude}');
    log("permission: $permission");
    return position;
  }
  if (permission == LocationPermission.always) {
    position = await Geolocator.getCurrentPosition();
    log('longitude :   ${position.longitude}');
    log('longitude  : ${position.longitude}');
    log("permission: $permission");
    return position;
  }
}
