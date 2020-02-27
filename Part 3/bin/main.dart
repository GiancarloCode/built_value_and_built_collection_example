import 'package:built_value_example/user.dart';
import 'package:logger/logger.dart';
import 'package:built_value_example/pet.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value_example/gender.dart';
import 'package:built_value_example/enums.dart';

void main() {
  final logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      colors: false,
      lineLength: 90,
    ),
  );

  final user1 = User((b) => b..id = '1');

  logger.i('user1');
  logger.v(user1);

  final user2 = User((b) => b
    ..id = '2'
    ..name = 'Giancarlo'
    ..phoneNumber = '123456'
    ..address = '742 Evergreen Terrace'
    ..isVerified = true);

  logger.i('user2');
  logger.v(user2);

  final user3 = user2.rebuild((b) => b
    ..id = '3'
    ..name = 'Coder');

  logger.i('user3');
  logger.v(user3);

  final user4 = User((b) => b
    ..id = '2'
    ..name = 'Giancarlo'
    ..phoneNumber = '123456'
    ..address = '742 Evergreen Terrace'
    ..isVerified = true);

  logger.i('user2 == user3');
  logger.v(user2 == user3);
  logger.i('user2 == user4');
  logger.v(user2 == user4);

  logger.i('user2.hashCode == user3.hashCode');
  logger.v(user2.hashCode == user3.hashCode);
  logger.i('user2.hashCode == user4.hashCode');
  logger.v(user2.hashCode == user4.hashCode);

  final user5 = User((b) => b
    ..id = '2'
    ..name = 'Giancarlo'
    ..phoneNumber = '123456'
    ..address = '742 Evergreen Terrace'
    ..isVerified = true
    ..pet.update((b) => b
      ..id = '1'
      ..name = 'Pirulais'));

  logger.i('user5');
  logger.v(user5);

  final pet1 = Pet((b) => b
    ..id = '1'
    ..name = 'pirulais');

  final user6 = User((b) => b
    ..id = '1'
    ..pet = pet1.toBuilder());

  logger.i('user6');
  logger.v(user6);

  final user7 = user6.rebuild((b) => b
    ..phoneNumber = '987654'
    ..pet.update((b) => b..name = 'Coder'));

  logger.i('user7');
  logger.v(user7);

  final user8 = user6.rebuild((b) => b..id = '2');

  logger.i('identical(user6.pet, user8.pet)');
  logger.v(identical(user6.pet, user8.pet));

  final builtList1 = [1, 2, 3].build();

  logger.i('builtList1');
  print(builtList1);

  final builtList2 = BuiltList<int>();

  logger.i('builtList2');
  print(builtList2);

  final builtList3 = BuiltList<int>([1, 2, 3]);

  logger.i('builtList3');
  print(builtList3);

  // final builtList4 = BuiltList<int>(['a', 'b', 'c']);

  // final builtList4 = BuiltList<String>.of(['a', 'b', 'c', null]);

  final builtList4 = BuiltList<String>.of(['a', 'b', 'c']);

  logger.i('builtList4');
  print(builtList4);

  final listBuilder5 = ListBuilder<int>([1, 2, 3]);

  listBuilder5.add(2);
  listBuilder5.add(2);
  listBuilder5.add(2);
  listBuilder5.add(2);
  listBuilder5.add(2);
  listBuilder5.add(2);

  final builtList5 = listBuilder5.build();

  logger.i('builtList5');
  print(builtList5);

  final builtList6 = (ListBuilder<int>([1, 2, 3])
        ..add(2)
        ..add(2)
        ..add(2)
        ..add(2)
        ..add(2)
        ..add(2))
      .build();

  logger.i('builtList6');
  print(builtList6);

  final builtList7 = (builtList6.toBuilder()
        ..add(3)
        ..add(4)
        ..add(5)
        ..add(6)
        ..add(7)
        ..add(8))
      .build();

  logger.i('builtList7');
  print(builtList7);

  final builtList8 = builtList7.rebuild((b) => b
    ..add(10)
    ..add(11)
    ..addAll([12, 13, 14, 15, 16, 17])
    ..[0] = 999);

  logger.i('builtList8');
  print(builtList8);

  final builtSet1 = {1, 2, 3}.build();

  logger.i('builtSet1');
  print(builtSet1);

  final builtSet2 = BuiltSet<int>();

  logger.i('builtSet2');
  print(builtSet2);

  final builtSet3 = BuiltSet<int>({1, 2, 3});

  logger.i('builtSet3');
  print(builtSet3);

  final builtSet4 = BuiltSet<String>.of({'a', 'b', 'c'});

  logger.i('builtSet4');
  print(builtSet4);

  final setBuilder5 = SetBuilder<int>({1, 2, 3});

  setBuilder5.add(2);
  setBuilder5.add(2);
  setBuilder5.add(2);
  setBuilder5.add(2);
  setBuilder5.add(2);
  setBuilder5.add(2);

  final builtSet5 = setBuilder5.build();

  logger.i('builtSet5');
  print(builtSet5);

  final builtSet6 = (SetBuilder<int>({1, 2, 3})
        ..add(2)
        ..add(2)
        ..add(2)
        ..add(2)
        ..add(2)
        ..add(2))
      .build();

  logger.i('builtSet6');
  print(builtSet6);

  final builtSet7 = (builtSet6.toBuilder()
        ..add(3)
        ..add(4)
        ..add(5)
        ..add(6)
        ..add(7)
        ..add(8))
      .build();

  logger.i('builtSet7');
  print(builtSet7);

  final builtSet8 = builtSet7.rebuild((b) => b
    ..add(9)
    ..addAll({10, 11, 12, 13, 14, 15, 16})
    ..remove(5)
    ..retainWhere((e) => e % 2 != 0));

  logger.i('builtSet8');
  print(builtSet8);

  final builtMap1 = {'a': 1, 'b': 2, 'c': 4}.build();

  logger.i('builtMap1');
  print(builtMap1);

  final builtMap2 = BuiltMap<String, int>();

  logger.i('builtMap2');
  print(builtMap2);

  final builtMap3 = BuiltMap<String, int>({'a': 1, 'b': 2, 'c': 4});

  logger.i('builtMap3');
  print(builtMap3);

  final builtMap4 = BuiltMap<String, int>.of({'a': 1, 'b': 2, 'c': 4});

  logger.i('builtMap4');
  print(builtMap4);

  final mapBuilder5 = MapBuilder<String, int>({'a': 1, 'b': 2});

  mapBuilder5['c'] = 3;
  mapBuilder5['d'] = 4;
  mapBuilder5['d'] = 5;

  final builtMap5 = mapBuilder5.build();

  logger.i('builtMap5');
  print(builtMap5);

  final builtMap6 = (MapBuilder<String, int>({'a': 1, 'b': 2})
        ..['c'] = 3
        ..['d'] = 4
        ..['d'] = 5)
      .build();

  logger.i('builtMap6');
  print(builtMap6);

  final builtMap7 = (builtMap6.toBuilder()
        ..['d'] = 4
        ..['e'] = 5
        ..['f'] = 6
        ..['g'] = 7)
      .build();

  logger.i('builtMap7');
  print(builtMap7);

  final builtMap8 = builtMap7.rebuild((b) => b
    ..['h'] = 8
    ..['i'] = 9
    ..['j'] = 10
    ..['k'] = 11
    ..addAll({'l': 12, 'm': 13, 'n': 14})
    ..remove('h')
    ..removeWhere((key, value) => value % 2 == 0));

  logger.i('builtMap8');
  print(builtMap8);

  final gender1 = Gender.male;

  logger.i('gender1');
  logger.v(gender1);

  final gender2 = Gender.valueOf('male');
  final gender3 = Gender.valueOf('female');

  logger.i('gender2');
  logger.v(gender2);

  logger.i('gender3');
  logger.v(gender3);

  logger.i('Gender.values');
  print(Gender.values);

  logger.i('switch gender1');
  switch (gender1) {
    case Gender.male:
      logger.v('Is male');
      break;
    case Gender.female:
      logger.v('Is female');
      break;
  }

  final user9 = User((b) => b
    ..id = '1'
    ..pets.update((b) => b
      ..addAll([
        Pet((b) => b
          ..id = '1'
          ..name = 'Pirulais'),
        Pet((b) => b
          ..id = '2'
          ..name = 'Coder'),
      ]))
    ..userStatus = UserStatus.active);

  logger.i('user9');
  logger.v(user9);

  final user10 = user9.rebuild((b) => b
    ..pets.update((b) => b
      ..add(Pet((b) => b
        ..id = '3'
        ..name = 'Super Pet'))
      ..[1] = b[1].rebuild((b) => b..name = 'Pro Coder'))
    ..userStatus = UserStatus.inactive);

  logger.i('user10');
  logger.v(user10);
}
