import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value_example/pet.dart';
import 'package:built_value_example/enums.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  String get id;
  @nullable
  String get name;
  @nullable
  String get phoneNumber;
  @nullable
  String get address;
  @nullable
  bool get isVerified;
  @nullable
  Pet get pet;
  @nullable
  BuiltList<Pet> get pets;
  @nullable
  UserStatus get userStatus;

  User._();
  factory User([void Function(UserBuilder) updates]) = _$User;
}
