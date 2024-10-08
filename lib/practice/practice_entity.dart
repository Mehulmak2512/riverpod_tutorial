import 'package:riverpod_tutorial/generated/json/base/json_field.dart';
import 'package:riverpod_tutorial/generated/json/practice_entity.g.dart';
import 'dart:convert';
export 'package:riverpod_tutorial/generated/json/practice_entity.g.dart';

@JsonSerializable()
class PracticeEntity {
	int? id;
	String? name;
	String? lastname;

	PracticeEntity();

	factory PracticeEntity.fromJson(Map<String, dynamic> json) => $PracticeEntityFromJson(json);

	Map<String, dynamic> toJson() => $PracticeEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}