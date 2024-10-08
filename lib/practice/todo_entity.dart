import 'package:riverpod_tutorial/generated/json/base/json_field.dart';
import 'package:riverpod_tutorial/generated/json/todo_entity.g.dart';
import 'dart:convert';
export 'package:riverpod_tutorial/generated/json/todo_entity.g.dart';

@JsonSerializable()
class TodoEntity {
	String? description;
	bool? completed;

	TodoEntity();

	factory TodoEntity.fromJson(Map<String, dynamic> json) => $TodoEntityFromJson(json);

	Map<String, dynamic> toJson() => $TodoEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}