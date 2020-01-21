import 'package:built_value_example/user.dart';
import 'package:logger/logger.dart';
import 'package:built_value_example/pet.dart';

void main() {
  final logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      colors: false,
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
}
