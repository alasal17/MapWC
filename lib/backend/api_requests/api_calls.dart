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
      headers: {
        'Access-Control-Allow-Origin': '*',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic results(dynamic response) => getJsonField(
        response,
        r'''$.results''',
      );
}

class PlacePhotoCall {
  static Future<ApiCallResponse> call({
    String? photoReference = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PlacePhoto',
      apiUrl:
          'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=${photoReference}&key=AIzaSyDsZ10iarpFbMf6S6UAdOUiRXwHVYTbx_Q',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class GetRequestGooglePlacesAPICopyCopyCall {
  static Future<ApiCallResponse> call({
    String? key = 'AIzaSyDsZ10iarpFbMf6S6UAdOUiRXwHVYTbx_Q',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Request Google Places API  Copy Copy',
      apiUrl:
          'https://maps.googleapis.com/maps/api/place/textsearch/json?query=bensinstasjon&',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': key,
      },
      returnBody: true,
    );
  }

  static dynamic results(dynamic response) => getJsonField(
        response,
        r'''$.results''',
      );
}

class GetRequestGooglePlacesAPILocationsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Request Google Places API  Locations',
      apiUrl:
          'https://maps.googleapis.com/maps/api/place/textsearch/json?query=bensinstasjon&key=AIzaSyDsZ10iarpFbMf6S6UAdOUiRXwHVYTbx_Q',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic locationResualt(dynamic response) => getJsonField(
        response,
        r'''$.results''',
      );
}
