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

class GetRandomImagesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetRandomImages',
      apiUrl: 'https://api.shutterstock.com/v2/images/search',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization':
            'Bearer v2/c3ltYUhzRGJITGtlQjB6TlBycVFzdFNtbW5vUTMyQmcvMzQxMzE4NTc5L2N1c3RvbWVyLzQvRHE4M1hXOWZVOGoxeEVsZHhfbU9DSHpQbTh0akZIY2hqVHptRS15dmI4Q0xqcF82amt4aWYxV0pmajVsUTg5eFhZY2o5YjRidTVKN0FMYlZscTVtYVp0eWcxblpmbk1EUEJZU0VSekdMaG1FOG41UUk1emtQaWE0clpkakdvVDFfOHNxRm55UzJJd2RQdy1FbjZGTmNqZUNGVG56ekJfOXhFdzdFUjQ0WE43OXFSVW84ZjZUaWpWR21CVVdSeEo3TUlMNGw2akw4Rm94engwMHdYYjhTUS9fSTVsLXpsVG42bGs1RGRaRldJR2l3',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic jSONPath(dynamic response) => getJsonField(
        response,
        r'''$.data[::].assets.preview.url''',
      );
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
