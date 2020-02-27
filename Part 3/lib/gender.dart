import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'gender.g.dart';

class Gender extends EnumClass {
  static const Gender male = _$male;
  static const Gender female = _$female;

  const Gender._(String name) : super(name);

  static BuiltSet<Gender> get values => _$genderValues;
  static Gender valueOf(String name) => _$genderValueOf(name);
}
