import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'enums.g.dart';

class Color extends EnumClass {
  static const Color blue = _$blue;
  static const Color red = _$red;

  const Color._(String name) : super(name);

  static BuiltSet<Color> get values => _$colorValues;
  static Color valueOf(String name) => _$colorValueOf(name);
}

class UserStatus extends EnumClass {
  static const UserStatus active = _$active;
  static const UserStatus inactive = _$inactive;
  static const UserStatus deleted = _$deleted;

  const UserStatus._(String name) : super(name);

  static BuiltSet<UserStatus> get values => _$userStatusValues;
  static UserStatus valueOf(String name) => _$userStatusValueOf(name);
}
