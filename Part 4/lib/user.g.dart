// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$User extends User {
  @override
  final String id;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String address;
  @override
  final bool isVerified;
  @override
  final Pet pet;
  @override
  final BuiltList<Pet> pets;
  @override
  final UserStatus userStatus;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.id,
      this.name,
      this.phoneNumber,
      this.address,
      this.isVerified,
      this.pet,
      this.pets,
      this.userStatus})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('User', 'id');
    }
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        address == other.address &&
        isVerified == other.isVerified &&
        pet == other.pet &&
        pets == other.pets &&
        userStatus == other.userStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            phoneNumber.hashCode),
                        address.hashCode),
                    isVerified.hashCode),
                pet.hashCode),
            pets.hashCode),
        userStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('id', id)
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('address', address)
          ..add('isVerified', isVerified)
          ..add('pet', pet)
          ..add('pets', pets)
          ..add('userStatus', userStatus))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  bool _isVerified;
  bool get isVerified => _$this._isVerified;
  set isVerified(bool isVerified) => _$this._isVerified = isVerified;

  PetBuilder _pet;
  PetBuilder get pet => _$this._pet ??= new PetBuilder();
  set pet(PetBuilder pet) => _$this._pet = pet;

  ListBuilder<Pet> _pets;
  ListBuilder<Pet> get pets => _$this._pets ??= new ListBuilder<Pet>();
  set pets(ListBuilder<Pet> pets) => _$this._pets = pets;

  UserStatus _userStatus;
  UserStatus get userStatus => _$this._userStatus;
  set userStatus(UserStatus userStatus) => _$this._userStatus = userStatus;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _phoneNumber = _$v.phoneNumber;
      _address = _$v.address;
      _isVerified = _$v.isVerified;
      _pet = _$v.pet?.toBuilder();
      _pets = _$v.pets?.toBuilder();
      _userStatus = _$v.userStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              id: id,
              name: name,
              phoneNumber: phoneNumber,
              address: address,
              isVerified: isVerified,
              pet: _pet?.build(),
              pets: _pets?.build(),
              userStatus: userStatus);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pet';
        _pet?.build();
        _$failedField = 'pets';
        _pets?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
