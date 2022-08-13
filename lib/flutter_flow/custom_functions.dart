import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

LatLng getUserLocation(LatLng? userLocation) {
  if (userLocation == null ||
      (userLocation.latitude == 0 && userLocation.longitude == 0)) {
    return LatLng(40.8295538, -73.9386429);
  }
  return userLocation;
}

LatLng getUserLocationCopy2(
  double? lat,
  double? lng,
) {
  if (lat == null || (lng == null)) {
    return LatLng(40.8295538, -73.9386429);
  }

  var pla = LatLng(lat, lng);
  return pla;
}

String getUserLocationCopy(LatLng? userLocation) {
  if (userLocation == null ||
      (userLocation.latitude == 0 && userLocation.longitude == 0)) {
    return "40.8295538, -73.9386429";
  }

  String userlatitude = userLocation.latitude.toString();
  String userlongitude = userLocation.longitude.toString();
  String userLocationToString = userlatitude + "%2C" + userlongitude;
  print(userLocationToString);
  return userLocationToString;
}

LatLng getUserLocationCopyCopy(
  String? lat1,
  String? lng1,
) {
  if (lat1 == null || lng1 == null) {
    return LatLng(40.8295538, -73.9386429);
  }

  var userlatitude = double.parse(lat1);
  var userlongitude = double.parse(lng1);
  var loc = LatLng(userlatitude, userlongitude);

  return loc;
}
