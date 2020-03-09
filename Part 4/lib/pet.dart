import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value_example/serializers.dart';

part 'pet.g.dart';

abstract class Pet implements Built<Pet, PetBuilder> {
  @nullable
  String get id;

  @nullable
  @BuiltValueField(wireName: 'nombre')
  String get name;

  @nullable
  @BuiltValueField(serialize: false, compare: false)
  int get age;

  Pet._();
  factory Pet([void Function(PetBuilder) updates]) = _$Pet;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Pet.serializer, this);
  }

  static Pet fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Pet.serializer, json);
  }

  static Serializer<Pet> get serializer => _$petSerializer;
}
