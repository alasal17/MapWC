// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_places_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GooglePlacesRecord> _$googlePlacesRecordSerializer =
    new _$GooglePlacesRecordSerializer();

class _$GooglePlacesRecordSerializer
    implements StructuredSerializer<GooglePlacesRecord> {
  @override
  final Iterable<Type> types = const [GooglePlacesRecord, _$GooglePlacesRecord];
  @override
  final String wireName = 'GooglePlacesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GooglePlacesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.businessStatus;
    if (value != null) {
      result
        ..add('business_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iconBackgroundColor;
    if (value != null) {
      result
        ..add('icon_background_color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iconMaskBaseUri;
    if (value != null) {
      result
        ..add('icon_mask_base_uri')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.placeId;
    if (value != null) {
      result
        ..add('place_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.priceLevel;
    if (value != null) {
      result
        ..add('price_level')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.references;
    if (value != null) {
      result
        ..add('references')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scope;
    if (value != null) {
      result
        ..add('scope')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.types;
    if (value != null) {
      result
        ..add('types')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRatingsTotal;
    if (value != null) {
      result
        ..add('user_ratings_total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.vicinity;
    if (value != null) {
      result
        ..add('vicinity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lat;
    if (value != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  GooglePlacesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GooglePlacesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'business_status':
          result.businessStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon_background_color':
          result.iconBackgroundColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon_mask_base_uri':
          result.iconMaskBaseUri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'place_id':
          result.placeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price_level':
          result.priceLevel = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'references':
          result.references = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'scope':
          result.scope = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'types':
          result.types = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_ratings_total':
          result.userRatingsTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vicinity':
          result.vicinity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$GooglePlacesRecord extends GooglePlacesRecord {
  @override
  final String? businessStatus;
  @override
  final String? icon;
  @override
  final String? iconBackgroundColor;
  @override
  final String? iconMaskBaseUri;
  @override
  final String? name;
  @override
  final String? placeId;
  @override
  final int? priceLevel;
  @override
  final double? rating;
  @override
  final String? references;
  @override
  final String? scope;
  @override
  final String? types;
  @override
  final int? userRatingsTotal;
  @override
  final String? vicinity;
  @override
  final LatLng? lat;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GooglePlacesRecord(
          [void Function(GooglePlacesRecordBuilder)? updates]) =>
      (new GooglePlacesRecordBuilder()..update(updates))._build();

  _$GooglePlacesRecord._(
      {this.businessStatus,
      this.icon,
      this.iconBackgroundColor,
      this.iconMaskBaseUri,
      this.name,
      this.placeId,
      this.priceLevel,
      this.rating,
      this.references,
      this.scope,
      this.types,
      this.userRatingsTotal,
      this.vicinity,
      this.lat,
      this.ffRef})
      : super._();

  @override
  GooglePlacesRecord rebuild(
          void Function(GooglePlacesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GooglePlacesRecordBuilder toBuilder() =>
      new GooglePlacesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GooglePlacesRecord &&
        businessStatus == other.businessStatus &&
        icon == other.icon &&
        iconBackgroundColor == other.iconBackgroundColor &&
        iconMaskBaseUri == other.iconMaskBaseUri &&
        name == other.name &&
        placeId == other.placeId &&
        priceLevel == other.priceLevel &&
        rating == other.rating &&
        references == other.references &&
        scope == other.scope &&
        types == other.types &&
        userRatingsTotal == other.userRatingsTotal &&
        vicinity == other.vicinity &&
        lat == other.lat &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                businessStatus
                                                                    .hashCode),
                                                            icon.hashCode),
                                                        iconBackgroundColor
                                                            .hashCode),
                                                    iconMaskBaseUri.hashCode),
                                                name.hashCode),
                                            placeId.hashCode),
                                        priceLevel.hashCode),
                                    rating.hashCode),
                                references.hashCode),
                            scope.hashCode),
                        types.hashCode),
                    userRatingsTotal.hashCode),
                vicinity.hashCode),
            lat.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GooglePlacesRecord')
          ..add('businessStatus', businessStatus)
          ..add('icon', icon)
          ..add('iconBackgroundColor', iconBackgroundColor)
          ..add('iconMaskBaseUri', iconMaskBaseUri)
          ..add('name', name)
          ..add('placeId', placeId)
          ..add('priceLevel', priceLevel)
          ..add('rating', rating)
          ..add('references', references)
          ..add('scope', scope)
          ..add('types', types)
          ..add('userRatingsTotal', userRatingsTotal)
          ..add('vicinity', vicinity)
          ..add('lat', lat)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GooglePlacesRecordBuilder
    implements Builder<GooglePlacesRecord, GooglePlacesRecordBuilder> {
  _$GooglePlacesRecord? _$v;

  String? _businessStatus;
  String? get businessStatus => _$this._businessStatus;
  set businessStatus(String? businessStatus) =>
      _$this._businessStatus = businessStatus;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _iconBackgroundColor;
  String? get iconBackgroundColor => _$this._iconBackgroundColor;
  set iconBackgroundColor(String? iconBackgroundColor) =>
      _$this._iconBackgroundColor = iconBackgroundColor;

  String? _iconMaskBaseUri;
  String? get iconMaskBaseUri => _$this._iconMaskBaseUri;
  set iconMaskBaseUri(String? iconMaskBaseUri) =>
      _$this._iconMaskBaseUri = iconMaskBaseUri;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  int? _priceLevel;
  int? get priceLevel => _$this._priceLevel;
  set priceLevel(int? priceLevel) => _$this._priceLevel = priceLevel;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  String? _references;
  String? get references => _$this._references;
  set references(String? references) => _$this._references = references;

  String? _scope;
  String? get scope => _$this._scope;
  set scope(String? scope) => _$this._scope = scope;

  String? _types;
  String? get types => _$this._types;
  set types(String? types) => _$this._types = types;

  int? _userRatingsTotal;
  int? get userRatingsTotal => _$this._userRatingsTotal;
  set userRatingsTotal(int? userRatingsTotal) =>
      _$this._userRatingsTotal = userRatingsTotal;

  String? _vicinity;
  String? get vicinity => _$this._vicinity;
  set vicinity(String? vicinity) => _$this._vicinity = vicinity;

  LatLng? _lat;
  LatLng? get lat => _$this._lat;
  set lat(LatLng? lat) => _$this._lat = lat;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GooglePlacesRecordBuilder() {
    GooglePlacesRecord._initializeBuilder(this);
  }

  GooglePlacesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _businessStatus = $v.businessStatus;
      _icon = $v.icon;
      _iconBackgroundColor = $v.iconBackgroundColor;
      _iconMaskBaseUri = $v.iconMaskBaseUri;
      _name = $v.name;
      _placeId = $v.placeId;
      _priceLevel = $v.priceLevel;
      _rating = $v.rating;
      _references = $v.references;
      _scope = $v.scope;
      _types = $v.types;
      _userRatingsTotal = $v.userRatingsTotal;
      _vicinity = $v.vicinity;
      _lat = $v.lat;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GooglePlacesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GooglePlacesRecord;
  }

  @override
  void update(void Function(GooglePlacesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GooglePlacesRecord build() => _build();

  _$GooglePlacesRecord _build() {
    final _$result = _$v ??
        new _$GooglePlacesRecord._(
            businessStatus: businessStatus,
            icon: icon,
            iconBackgroundColor: iconBackgroundColor,
            iconMaskBaseUri: iconMaskBaseUri,
            name: name,
            placeId: placeId,
            priceLevel: priceLevel,
            rating: rating,
            references: references,
            scope: scope,
            types: types,
            userRatingsTotal: userRatingsTotal,
            vicinity: vicinity,
            lat: lat,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
