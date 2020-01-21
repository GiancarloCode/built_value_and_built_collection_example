// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'values.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleValue extends SimpleValue {
  @override
  final int anInt;
  @override
  final String aString;
  int __derivedValue;

  factory _$SimpleValue([void Function(SimpleValueBuilder) updates]) =>
      (new SimpleValueBuilder()..update(updates)).build();

  _$SimpleValue._({this.anInt, this.aString}) : super._() {
    if (anInt == null) {
      throw new BuiltValueNullFieldError('SimpleValue', 'anInt');
    }
    if (aString == null) {
      throw new BuiltValueNullFieldError('SimpleValue', 'aString');
    }
  }

  @override
  int get derivedValue => __derivedValue ??= super.derivedValue;

  @override
  SimpleValue rebuild(void Function(SimpleValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleValueBuilder toBuilder() => new SimpleValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleValue &&
        anInt == other.anInt &&
        aString == other.aString;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, anInt.hashCode), aString.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SimpleValue')
          ..add('anInt', anInt)
          ..add('aString', aString))
        .toString();
  }
}

class SimpleValueBuilder implements Builder<SimpleValue, SimpleValueBuilder> {
  _$SimpleValue _$v;

  int _anInt;
  int get anInt => _$this._anInt;
  set anInt(int anInt) => _$this._anInt = anInt;

  String _aString;
  String get aString => _$this._aString;
  set aString(String aString) => _$this._aString = aString;

  SimpleValueBuilder();

  SimpleValueBuilder get _$this {
    if (_$v != null) {
      _anInt = _$v.anInt;
      _aString = _$v.aString;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleValue other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SimpleValue;
  }

  @override
  void update(void Function(SimpleValueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SimpleValue build() {
    final _$result = _$v ?? new _$SimpleValue._(anInt: anInt, aString: aString);
    replace(_$result);
    return _$result;
  }
}

class _$CompoundValue extends CompoundValue {
  @override
  final SimpleValue simpleValue;

  factory _$CompoundValue([void Function(CompoundValueBuilder) updates]) =>
      (new CompoundValueBuilder()..update(updates)).build();

  _$CompoundValue._({this.simpleValue}) : super._() {
    if (simpleValue == null) {
      throw new BuiltValueNullFieldError('CompoundValue', 'simpleValue');
    }
  }

  @override
  CompoundValue rebuild(void Function(CompoundValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompoundValueBuilder toBuilder() => new CompoundValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompoundValue && simpleValue == other.simpleValue;
  }

  @override
  int get hashCode {
    return $jf($jc(0, simpleValue.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CompoundValue')
          ..add('simpleValue', simpleValue))
        .toString();
  }
}

class CompoundValueBuilder
    implements Builder<CompoundValue, CompoundValueBuilder> {
  _$CompoundValue _$v;

  SimpleValueBuilder _simpleValue;
  SimpleValueBuilder get simpleValue =>
      _$this._simpleValue ??= new SimpleValueBuilder();
  set simpleValue(SimpleValueBuilder simpleValue) =>
      _$this._simpleValue = simpleValue;

  CompoundValueBuilder();

  CompoundValueBuilder get _$this {
    if (_$v != null) {
      _simpleValue = _$v.simpleValue?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompoundValue other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CompoundValue;
  }

  @override
  void update(void Function(CompoundValueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CompoundValue build() {
    _$CompoundValue _$result;
    try {
      _$result = _$v ?? new _$CompoundValue._(simpleValue: simpleValue.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'simpleValue';
        simpleValue.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CompoundValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
