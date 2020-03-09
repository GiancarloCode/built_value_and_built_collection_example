import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value_example/serializers.dart';

part 'todo.g.dart';

abstract class Todo implements Built<Todo, TodoBuilder> {
  int get userId;

  int get id;

  String get title;

  bool get completed;

  Todo._();
  factory Todo([void Function(TodoBuilder) updates]) = _$Todo;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Todo.serializer, this);
  }

  static Todo fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Todo.serializer, json);
  }

  static Serializer<Todo> get serializer => _$todoSerializer;
}
