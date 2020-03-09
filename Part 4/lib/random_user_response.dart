import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value_example/serializers.dart';

part 'random_user_response.g.dart';

abstract class RandomUserResponse
    implements Built<RandomUserResponse, RandomUserResponseBuilder> {
  BuiltList<RandomUser> get results;

  Info get info;

  RandomUserResponse._();
  factory RandomUserResponse(
          [void Function(RandomUserResponseBuilder) updates]) =
      _$RandomUserResponse;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(RandomUserResponse.serializer, this);
  }

  static RandomUserResponse fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(RandomUserResponse.serializer, json);
  }

  static Serializer<RandomUserResponse> get serializer =>
      _$randomUserResponseSerializer;
}

abstract class Info implements Built<Info, InfoBuilder> {
  int get results;

  int get page;

  Info._();
  factory Info([void Function(InfoBuilder) updates]) = _$Info;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Info.serializer, this);
  }

  static Info fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Info.serializer, json);
  }

  static Serializer<Info> get serializer => _$infoSerializer;
}

abstract class RandomUser implements Built<RandomUser, RandomUserBuilder> {
  String get email;

  Nationality get nat;

  Location get location;

  RandomUser._();
  factory RandomUser([void Function(RandomUserBuilder) updates]) = _$RandomUser;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(RandomUser.serializer, this);
  }

  static RandomUser fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(RandomUser.serializer, json);
  }

  static Serializer<RandomUser> get serializer => _$randomUserSerializer;
}

class Nationality extends EnumClass {
  @BuiltValueEnumConst(fallback: true)
  static const Nationality AU = _$AU;
  static const Nationality BR = _$BR;
  static const Nationality CA = _$CA;
  static const Nationality CH = _$CH;
  static const Nationality DE = _$DE;
  static const Nationality DK = _$DK;
  static const Nationality ES = _$ES;
  static const Nationality FI = _$FI;
  static const Nationality FR = _$FR;
  static const Nationality GB = _$GB;
  static const Nationality IE = _$IE;
  static const Nationality IR = _$IR;
  static const Nationality NO = _$NO;
  static const Nationality NL = _$NL;
  static const Nationality NZ = _$NZ;
  static const Nationality TR = _$TR;
  static const Nationality US = _$US;

  const Nationality._(String name) : super(name);

  static BuiltSet<Nationality> get values => _$nationalityValues;
  static Nationality valueOf(String name) => _$nationalityValueOf(name);

  String serialize() {
    return serializers.serializeWith(Nationality.serializer, this);
  }

  static Nationality deserialize(String string) {
    return serializers.deserializeWith(Nationality.serializer, string);
  }

  static Serializer<Nationality> get serializer => _$nationalitySerializer;
}

abstract class Location implements Built<Location, LocationBuilder> {
  String get country;

  Coordinates get coordinates;

  Location._();
  factory Location([void Function(LocationBuilder) updates]) = _$Location;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Location.serializer, this);
  }

  static Location fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Location.serializer, json);
  }

  static Serializer<Location> get serializer => _$locationSerializer;
}

abstract class Coordinates implements Built<Coordinates, CoordinatesBuilder> {
  String get latitude;

  String get longitude;

  Coordinates._();
  factory Coordinates([void Function(CoordinatesBuilder) updates]) =
      _$Coordinates;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Coordinates.serializer, this);
  }

  static Coordinates fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Coordinates.serializer, json);
  }

  static Serializer<Coordinates> get serializer => _$coordinatesSerializer;
}
