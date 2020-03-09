import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value_example/pet.dart';
import 'package:built_value_example/gender.dart';
import 'package:built_value_example/todo.dart';
import 'package:built_value_example/random_user_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  Pet,
  Gender,
  Todo,
  // Coordinates,
  // Location,
  // Nationality,
  // RandomUser,
  // Info,
  RandomUserResponse,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
