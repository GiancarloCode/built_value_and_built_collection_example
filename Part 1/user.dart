class User {
  final String _id;
  final String _name;

  String get id => _id;
  String get name => _name;

  User._({String id, String name})
      : _id = id,
        _name = name;

  factory User([void Function(UserBuilder) updates]) =>
      (UserBuilder()..update(updates)).build();

  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  UserBuilder toBuilder() => UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User && id == other.id && name == other.name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;

  @override
  String toString() => '''User {
  id=$id,
  name=$name,
}''';
}

class UserBuilder {
  User _user;

  String _id;
  String get id => _user != null ? _user._id : _id;
  set id(String id) => _this._id = id;

  String _name;
  String get name => _user != null ? _user._name : _name;
  set name(String name) => _this._name = name;

  UserBuilder get _this {
    if (_user != null) {
      _id = _user.id;
      _name = _user.name;
      _user = null;
    }
    return this;
  }

  UserBuilder();

  void replace(User other) {
    if (other == null) {
      throw ArgumentError.notNull('other');
    }
    _user = other;
  }

  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  User build() {
    final result = _user ?? User._(id: id, name: name);
    replace(result);
    _this;
    return result;
  }
}
