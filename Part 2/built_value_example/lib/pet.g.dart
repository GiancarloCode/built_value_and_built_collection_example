// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Pet extends Pet {
  @override
  final String id;
  @override
  final String name;

  factory _$Pet([void Function(PetBuilder) updates]) =>
      (new PetBuilder()..update(updates)).build();

  _$Pet._({this.id, this.name}) : super._();

  @override
  Pet rebuild(void Function(PetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PetBuilder toBuilder() => new PetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pet && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Pet')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class PetBuilder implements Builder<Pet, PetBuilder> {
  _$Pet _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  PetBuilder();

  PetBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pet other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Pet;
  }

  @override
  void update(void Function(PetBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Pet build() {
    final _$result = _$v ?? new _$Pet._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
