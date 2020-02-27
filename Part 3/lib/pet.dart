import 'package:built_value/built_value.dart';

part 'pet.g.dart';

abstract class Pet implements Built<Pet, PetBuilder> {
  @nullable
  String get id;
  @nullable
  String get name;

  Pet._();
  factory Pet([void Function(PetBuilder) updates]) = _$Pet;
}
