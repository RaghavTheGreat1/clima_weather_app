import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Location(this.latitude, this.longitude);

  Future <void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getLastKnownPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.longitude;
      longitude = position.latitude;
    } catch (e) {
      print(e);
    };
  }
}
