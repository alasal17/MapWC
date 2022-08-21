import 'package:flutter/rendering.dart';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetRequestGooglePlacesAPICall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Request Google Places API ',
      apiUrl:
          'https://maps.googleapis.com/maps/api/place/textsearch/json?query=bensinstasjon%20norge&key=AIzaSyDsZ10iarpFbMf6S6UAdOUiRXwHVYTbx_Q',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic results(dynamic response) => getJsonField(
        response,
        r'''$.results''',
      );
}

class GooglePlacessCall {
  static Future<ApiCallResponse> call(LatLng userLocation) {
    var lat = userLocation.latitude.toString();
    var long = userLocation.longitude.toString();

    var location = "${lat}%2C${long}";
    print(location);
    return ApiManager.instance.makeApiCall(
      callName: 'GooglePlacess',
      apiUrl:
          'https://maps.googleapis.com/maps/api/place/nearbysearch/json?keyword=cruise&location=${location}&radius=1500&type=restaurant&key=AIzaSyDsZ10iarpFbMf6S6UAdOUiRXwHVYTbx_Q',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic jSONPath1(dynamic response) => getJsonField(
        response,
        r'''$.results[::].geometry.location''',
      );
}
