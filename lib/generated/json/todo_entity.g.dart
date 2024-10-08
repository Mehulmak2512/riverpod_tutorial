import 'package:riverpod_tutorial/generated/json/base/json_convert_content.dart';
import 'package:riverpod_tutorial/practice/todo_entity.dart';

TodoEntity $TodoEntityFromJson(Map<String, dynamic> json) {
  final TodoEntity todoEntity = TodoEntity();
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    todoEntity.description = description;
  }
  final bool? completed = jsonConvert.convert<bool>(json['completed']);
  if (completed != null) {
    todoEntity.completed = completed;
  }
  return todoEntity;
}

Map<String, dynamic> $TodoEntityToJson(TodoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['description'] = entity.description;
  data['completed'] = entity.completed;
  return data;
}

extension TodoEntityExtension on TodoEntity {
  TodoEntity copyWith({
    String? description,
    bool? completed,
  }) {
    return TodoEntity()
      ..description = description ?? this.description
      ..completed = completed ?? this.completed;
  }
}