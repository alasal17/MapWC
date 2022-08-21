import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PopupMapInfoWidget extends StatefulWidget {
  const PopupMapInfoWidget({Key? key}) : super(key: key);

  @override
  _PopupMapInfoWidgetState createState() => _PopupMapInfoWidgetState();
}

class _PopupMapInfoWidgetState extends State<PopupMapInfoWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: FutureBuilder<ApiCallResponse>(
        future: GetRequestGooglePlacesAPICall.call(),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: SpinKitFoldingCube(
                  color: FlutterFlowTheme.of(context).primaryColor,
                  size: 50,
                ),
              ),
            );
          }
          final listViewGetRequestGooglePlacesAPIResponse = snapshot.data!;
          return Builder(
            builder: (context) {
              final results = getJsonField(
                listViewGetRequestGooglePlacesAPIResponse.jsonBody,
                r'''$.results[::]''',
              ).toList().take(5).toList();
              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: results.length,
                itemBuilder: (context, resultsIndex) {
                  final resultsItem = results[resultsIndex];
                  return Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0x25000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'Facilities_Info_Page',
                            queryParams: {
                              'name': serializeParam(
                                  getJsonField(
                                    resultsItem,
                                    r'''$.name''',
                                  ).toString(),
                                  ParamType.String),
                              'address': serializeParam(
                                  getJsonField(
                                    resultsItem,
                                    r'''$.formatted_address''',
                                  ).toString(),
                                  ParamType.String),
                              'open': serializeParam(
                                  getJsonField(
                                    resultsItem,
                                    r'''$.opening_hours''',
                                  ),
                                  ParamType.bool),
                              'rating': serializeParam(
                                  getJsonField(
                                    resultsItem,
                                    r'''$.rating''',
                                  ),
                                  ParamType.double),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.bottomToTop,
                                duration: Duration(milliseconds: 300),
                              ),
                            },
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 8, 4, 8),
                              child: Container(
                                width: 4,
                                height: 90,
                                decoration: BoxDecoration(
                                  color: Color(0xFF4B39EF),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                            CachedNetworkImage(
                              imageUrl:
                                  'https://image.enerwe.no/103386.jpg?imageId=103386&panow=0&panoh=0&panox=0&panoy=0&heightw=0&heighth=0&heightx=0&heighty=0&width=1200&height=630',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12, 12, 16, 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FutureBuilder<ApiCallResponse>(
                                    future:
                                        GetRequestGooglePlacesAPICall.call(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: SpinKitFoldingCube(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 50,
                                            ),
                                          ),
                                        );
                                      }
                                      final textGetRequestGooglePlacesAPIResponse =
                                          snapshot.data!;
                                      return AutoSizeText(
                                        getJsonField(
                                          resultsItem,
                                          r'''$.name''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .title2
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF101213),
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      );
                                    },
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: AutoSizeText(
                                      getJsonField(
                                        resultsItem,
                                        r'''$.formatted_address''',
                                      ).toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF4B39EF),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 4),
                                    child: RatingBarIndicator(
                                      itemBuilder: (context, index) => Icon(
                                        Icons.star_rounded,
                                        color: Color(0xFFFFA130),
                                      ),
                                      direction: Axis.horizontal,
                                      rating: getJsonField(
                                        resultsItem,
                                        r'''$.rating''',
                                      ),
                                      unratedColor: Color(0xFF95A1AC),
                                      itemCount: 5,
                                      itemSize: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
