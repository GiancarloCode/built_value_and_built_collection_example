import 'package:built_value/built_value.dart';

part 'values.g.dart';

abstract class SimpleValue implements Built<SimpleValue, SimpleValueBuilder> {
  int get anInt;
  String get aString;

  @memoized
  int get derivedValue => anInt + 100;

  SimpleValue._();
  factory SimpleValue([void Function(SimpleValueBuilder) updates]) =
      _$SimpleValue;
}

abstract class CompoundValue
    implements Built<CompoundValue, CompoundValueBuilder> {
  SimpleValue get simpleValue;

  CompoundValue._();
  factory CompoundValue([void Function(CompoundValueBuilder) updates]) =
      _$CompoundValue;
}
