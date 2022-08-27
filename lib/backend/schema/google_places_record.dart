import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'google_places_record.g.dart';

abstract class GooglePlacesRecord
    implements Built<GooglePlacesRecord, GooglePlacesRecordBuilder> {
  static Serializer<GooglePlacesRecord> get serializer =>
      _$googlePlacesRecordSerializer;

  @BuiltValueField(wireName: 'business_status')
  String? get businessStatus;

  String? get icon;

  @BuiltValueField(wireName: 'icon_background_color')
  String? get iconBackgroundColor;

  @BuiltValueField(wireName: 'icon_mask_base_uri')
  String? get iconMaskBaseUri;

  String? get name;

  @BuiltValueField(wireName: 'place_id')
  String? get placeId;

  @BuiltValueField(wireName: 'price_level')
  int? get priceLevel;

  double? get rating;

  String? get references;

  String? get scope;

  String? get types;

  @BuiltValueField(wireName: 'user_ratings_total')
  int? get userRatingsTotal;

  String? get vicinity;

  LatLng? get lat;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GooglePlacesRecordBuilder builder) => builder
    ..businessStatus = ''
    ..icon = ''
    ..iconBackgroundColor = ''
    ..iconMaskBaseUri = ''
    ..name = ''
    ..placeId = ''
    ..priceLevel = 0
    ..rating = 0.0
    ..references = ''
    ..scope = ''
    ..types = ''
    ..userRatingsTotal = 0
    ..vicinity = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('GooglePlaces');

  static Stream<GooglePlacesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GooglePlacesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GooglePlacesRecord._();
  factory GooglePlacesRecord(
          [void Function(GooglePlacesRecordBuilder) updates]) =
      _$GooglePlacesRecord;

  static GooglePlacesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGooglePlacesRecordData({
  String? businessStatus,
  String? icon,
  String? iconBackgroundColor,
  String? iconMaskBaseUri,
  String? name,
  String? placeId,
  int? priceLevel,
  double? rating,
  String? references,
  String? scope,
  String? types,
  int? userRatingsTotal,
  String? vicinity,
  LatLng? lat,
}) {
  final firestoreData = serializers.toFirestore(
    GooglePlacesRecord.serializer,
    GooglePlacesRecord(
      (g) => g
        ..businessStatus = businessStatus
        ..icon = icon
        ..iconBackgroundColor = iconBackgroundColor
        ..iconMaskBaseUri = iconMaskBaseUri
        ..name = name
        ..placeId = placeId
        ..priceLevel = priceLevel
        ..rating = rating
        ..references = references
        ..scope = scope
        ..types = types
        ..userRatingsTotal = userRatingsTotal
        ..vicinity = vicinity
        ..lat = lat,
    ),
  );

  return firestoreData;
}
