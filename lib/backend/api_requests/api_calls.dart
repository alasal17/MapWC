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
