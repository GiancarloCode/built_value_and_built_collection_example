// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_user_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Nationality _$AU = const Nationality._('AU');
const Nationality _$BR = const Nationality._('BR');
const Nationality _$CA = const Nationality._('CA');
const Nationality _$CH = const Nationality._('CH');
const Nationality _$DE = const Nationality._('DE');
const Nationality _$DK = const Nationality._('DK');
const Nationality _$ES = const Nationality._('ES');
const Nationality _$FI = const Nationality._('FI');
const Nationality _$FR = const Nationality._('FR');
const Nationality _$GB = const Nationality._('GB');
const Nationality _$IE = const Nationality._('IE');
const Nationality _$IR = const Nationality._('IR');
const Nationality _$NO = const Nationality._('NO');
const Nationality _$NL = const Nationality._('NL');
const Nationality _$NZ = const Nationality._('NZ');
const Nationality _$TR = const Nationality._('TR');
const Nationality _$US = const Nationality._('US');

Nationality _$nationalityValueOf(String name) {
  switch (name) {
    case 'AU':
      return _$AU;
    case 'BR':
      return _$BR;
    case 'CA':
      return _$CA;
    case 'CH':
      return _$CH;
    case 'DE':
      return _$DE;
    case 'DK':
      return _$DK;
    case 'ES':
      return _$ES;
    case 'FI':
      return _$FI;
    case 'FR':
      return _$FR;
    case 'GB':
      return _$GB;
    case 'IE':
      return _$IE;
    case 'IR':
      return _$IR;
    case 'NO':
      return _$NO;
    case 'NL':
      return _$NL;
    case 'NZ':
      return _$NZ;
    case 'TR':
      return _$TR;
    case 'US':
      return _$US;
    default:
      return _$AU;
  }
}

final BuiltSet<Nationality> _$nationalityValues =
    new BuiltSet<Nationality>(const <Nationality>[
  _$AU,
  _$BR,
  _$CA,
  _$CH,
  _$DE,
  _$DK,
  _$ES,
  _$FI,
  _$FR,
  _$GB,
  _$IE,
  _$IR,
  _$NO,
  _$NL,
  _$NZ,
  _$TR,
  _$US,
]);

Serializer<RandomUserResponse> _$randomUserResponseSerializer =
    new _$RandomUserResponseSerializer();
Serializer<Info> _$infoSerializer = new _$InfoSerializer();
Serializer<RandomUser> _$randomUserSerializer = new _$RandomUserSerializer();
Serializer<Nationality> _$nationalitySerializer = new _$NationalitySerializer();
Serializer<Location> _$locationSerializer = new _$LocationSerializer();
Serializer<Coordinates> _$coordinatesSerializer = new _$CoordinatesSerializer();

class _$RandomUserResponseSerializer
    implements StructuredSerializer<RandomUserResponse> {
  @override
  final Iterable<Type> types = const [RandomUserResponse, _$RandomUserResponse];
  @override
  final String wireName = 'RandomUserResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, RandomUserResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(RandomUser)])),
      'info',
      serializers.serialize(object.info, specifiedType: const FullType(Info)),
    ];

    return result;
  }

  @override
  RandomUserResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RandomUserResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RandomUser)]))
              as BuiltList<Object>);
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(Info)) as Info);
          break;
      }
    }

    return result.build();
  }
}

class _$InfoSerializer implements StructuredSerializer<Info> {
  @override
  final Iterable<Type> types = const [Info, _$Info];
  @override
  final String wireName = 'Info';

  @override
  Iterable<Object> serialize(Serializers serializers, Info object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results, specifiedType: const FullType(int)),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Info deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'results':
          result.results = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RandomUserSerializer implements StructuredSerializer<RandomUser> {
  @override
  final Iterable<Type> types = const [RandomUser, _$RandomUser];
  @override
  final String wireName = 'RandomUser';

  @override
  Iterable<Object> serialize(Serializers serializers, RandomUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'nat',
      serializers.serialize(object.nat,
          specifiedType: const FullType(Nationality)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(Location)),
    ];

    return result;
  }

  @override
  RandomUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RandomUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nat':
          result.nat = serializers.deserialize(value,
              specifiedType: const FullType(Nationality)) as Nationality;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(Location)) as Location);
          break;
      }
    }

    return result.build();
  }
}

class _$NationalitySerializer implements PrimitiveSerializer<Nationality> {
  @override
  final Iterable<Type> types = const <Type>[Nationality];
  @override
  final String wireName = 'Nationality';

  @override
  Object serialize(Serializers serializers, Nationality object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Nationality deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Nationality.valueOf(serialized as String);
}

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'coordinates',
      serializers.serialize(object.coordinates,
          specifiedType: const FullType(Coordinates)),
    ];

    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'coordinates':
          result.coordinates.replace(serializers.deserialize(value,
              specifiedType: const FullType(Coordinates)) as Coordinates);
          break;
      }
    }

    return result.build();
  }
}

class _$CoordinatesSerializer implements StructuredSerializer<Coordinates> {
  @override
  final Iterable<Type> types = const [Coordinates, _$Coordinates];
  @override
  final String wireName = 'Coordinates';

  @override
  Iterable<Object> serialize(Serializers serializers, Coordinates object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(String)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Coordinates deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoordinatesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RandomUserResponse extends RandomUserResponse {
  @override
  final BuiltList<RandomUser> results;
  @override
  final Info info;

  factory _$RandomUserResponse(
          [void Function(RandomUserResponseBuilder) updates]) =>
      (new RandomUserResponseBuilder()..update(updates)).build();

  _$RandomUserResponse._({this.results, this.info}) : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('RandomUserResponse', 'results');
    }
    if (info == null) {
      throw new BuiltValueNullFieldError('RandomUserResponse', 'info');
    }
  }

  @override
  RandomUserResponse rebuild(
          void Function(RandomUserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RandomUserResponseBuilder toBuilder() =>
      new RandomUserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RandomUserResponse &&
        results == other.results &&
        info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, results.hashCode), info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RandomUserResponse')
          ..add('results', results)
          ..add('info', info))
        .toString();
  }
}

class RandomUserResponseBuilder
    implements Builder<RandomUserResponse, RandomUserResponseBuilder> {
  _$RandomUserResponse _$v;

  ListBuilder<RandomUser> _results;
  ListBuilder<RandomUser> get results =>
      _$this._results ??= new ListBuilder<RandomUser>();
  set results(ListBuilder<RandomUser> results) => _$this._results = results;

  InfoBuilder _info;
  InfoBuilder get info => _$this._info ??= new InfoBuilder();
  set info(InfoBuilder info) => _$this._info = info;

  RandomUserResponseBuilder();

  RandomUserResponseBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _info = _$v.info?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RandomUserResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RandomUserResponse;
  }

  @override
  void update(void Function(RandomUserResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RandomUserResponse build() {
    _$RandomUserResponse _$result;
    try {
      _$result = _$v ??
          new _$RandomUserResponse._(
              results: results.build(), info: info.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
        _$failedField = 'info';
        info.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RandomUserResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Info extends Info {
  @override
  final int results;
  @override
  final int page;

  factory _$Info([void Function(InfoBuilder) updates]) =>
      (new InfoBuilder()..update(updates)).build();

  _$Info._({this.results, this.page}) : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('Info', 'results');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('Info', 'page');
    }
  }

  @override
  Info rebuild(void Function(InfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfoBuilder toBuilder() => new InfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Info && results == other.results && page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, results.hashCode), page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Info')
          ..add('results', results)
          ..add('page', page))
        .toString();
  }
}

class InfoBuilder implements Builder<Info, InfoBuilder> {
  _$Info _$v;

  int _results;
  int get results => _$this._results;
  set results(int results) => _$this._results = results;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  InfoBuilder();

  InfoBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results;
      _page = _$v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Info other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Info;
  }

  @override
  void update(void Function(InfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Info build() {
    final _$result = _$v ?? new _$Info._(results: results, page: page);
    replace(_$result);
    return _$result;
  }
}

class _$RandomUser extends RandomUser {
  @override
  final String email;
  @override
  final Nationality nat;
  @override
  final Location location;

  factory _$RandomUser([void Function(RandomUserBuilder) updates]) =>
      (new RandomUserBuilder()..update(updates)).build();

  _$RandomUser._({this.email, this.nat, this.location}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('RandomUser', 'email');
    }
    if (nat == null) {
      throw new BuiltValueNullFieldError('RandomUser', 'nat');
    }
    if (location == null) {
      throw new BuiltValueNullFieldError('RandomUser', 'location');
    }
  }

  @override
  RandomUser rebuild(void Function(RandomUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RandomUserBuilder toBuilder() => new RandomUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RandomUser &&
        email == other.email &&
        nat == other.nat &&
        location == other.location;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, email.hashCode), nat.hashCode), location.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RandomUser')
          ..add('email', email)
          ..add('nat', nat)
          ..add('location', location))
        .toString();
  }
}

class RandomUserBuilder implements Builder<RandomUser, RandomUserBuilder> {
  _$RandomUser _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  Nationality _nat;
  Nationality get nat => _$this._nat;
  set nat(Nationality nat) => _$this._nat = nat;

  LocationBuilder _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder location) => _$this._location = location;

  RandomUserBuilder();

  RandomUserBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _nat = _$v.nat;
      _location = _$v.location?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RandomUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RandomUser;
  }

  @override
  void update(void Function(RandomUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RandomUser build() {
    _$RandomUser _$result;
    try {
      _$result = _$v ??
          new _$RandomUser._(
              email: email, nat: nat, location: location.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RandomUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Location extends Location {
  @override
  final String country;
  @override
  final Coordinates coordinates;

  factory _$Location([void Function(LocationBuilder) updates]) =>
      (new LocationBuilder()..update(updates)).build();

  _$Location._({this.country, this.coordinates}) : super._() {
    if (country == null) {
      throw new BuiltValueNullFieldError('Location', 'country');
    }
    if (coordinates == null) {
      throw new BuiltValueNullFieldError('Location', 'coordinates');
    }
  }

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        country == other.country &&
        coordinates == other.coordinates;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, country.hashCode), coordinates.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('country', country)
          ..add('coordinates', coordinates))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location _$v;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  CoordinatesBuilder _coordinates;
  CoordinatesBuilder get coordinates =>
      _$this._coordinates ??= new CoordinatesBuilder();
  set coordinates(CoordinatesBuilder coordinates) =>
      _$this._coordinates = coordinates;

  LocationBuilder();

  LocationBuilder get _$this {
    if (_$v != null) {
      _country = _$v.country;
      _coordinates = _$v.coordinates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    _$Location _$result;
    try {
      _$result = _$v ??
          new _$Location._(country: country, coordinates: coordinates.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'coordinates';
        coordinates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Location', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Coordinates extends Coordinates {
  @override
  final String latitude;
  @override
  final String longitude;

  factory _$Coordinates([void Function(CoordinatesBuilder) updates]) =>
      (new CoordinatesBuilder()..update(updates)).build();

  _$Coordinates._({this.latitude, this.longitude}) : super._() {
    if (latitude == null) {
      throw new BuiltValueNullFieldError('Coordinates', 'latitude');
    }
    if (longitude == null) {
      throw new BuiltValueNullFieldError('Coordinates', 'longitude');
    }
  }

  @override
  Coordinates rebuild(void Function(CoordinatesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoordinatesBuilder toBuilder() => new CoordinatesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Coordinates &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, latitude.hashCode), longitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Coordinates')
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class CoordinatesBuilder implements Builder<Coordinates, CoordinatesBuilder> {
  _$Coordinates _$v;

  String _latitude;
  String get latitude => _$this._latitude;
  set latitude(String latitude) => _$this._latitude = latitude;

  String _longitude;
  String get longitude => _$this._longitude;
  set longitude(String longitude) => _$this._longitude = longitude;

  CoordinatesBuilder();

  CoordinatesBuilder get _$this {
    if (_$v != null) {
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Coordinates other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Coordinates;
  }

  @override
  void update(void Function(CoordinatesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Coordinates build() {
    final _$result =
        _$v ?? new _$Coordinates._(latitude: latitude, longitude: longitude);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
