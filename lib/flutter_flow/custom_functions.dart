import 'dart:ffi';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:map_w_c/flutter_flow/flutter_flow_util.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

import '../backend/api_requests/api_manager.dart';

export '../backend/api_requests/api_manager.dart' show ApiCallResponse;

LatLng getUserLocation(LatLng? userLocation) {
  if (userLocation == null ||
      (userLocation.latitude == 0 && userLocation.longitude == 0)) {
    return LatLng(40.8295538, -73.9386429);
  }
  return userLocation;
}

dynamic getGooglePlacesData(LatLng userLocation) {
  // Add your function code here!
  var lat = userLocation.latitude.toString();
  var long = userLocation.longitude.toString();

  var location = "${lat}%2C${long}";
  return ApiManager.instance.makeApiCall(
    callName: 'Get Request Google Places API ',
    apiUrl:
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json?keyword=cruise&location=${location}&radius=1500&type=restaurant&key=AIzaSyDsZ10iarpFbMf6S6UAdOUiRXwHVYTbx_Q',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}
