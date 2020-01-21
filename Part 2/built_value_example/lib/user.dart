import 'package:built_value/built_value.dart';
import 'package:built_value_example/pet.dart';

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

  User._();
  factory User([void Function(UserBuilder) updates]) = _$User;
}
