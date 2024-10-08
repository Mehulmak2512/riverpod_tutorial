 import 'package:riverpod_tutorial/generated/json/base/json_field.dart';
import 'package:riverpod_tutorial/generated/json/practice_one_entity.g.dart';
import 'dart:convert';
export 'package:riverpod_tutorial/generated/json/practice_one_entity.g.dart';

@JsonSerializable()
class PracticeOneEntity {
	bool? status;
	@JSONField(name: "response_code")
	int? responseCode;
	List<PracticeOneData>? data;

	PracticeOneEntity();

	factory PracticeOneEntity.fromJson(Map<String, dynamic> json) => $PracticeOneEntityFromJson(json);

	Map<String, dynamic> toJson() => $PracticeOneEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PracticeOneData {
	String? name;
	int? id;

	PracticeOneData();

	factory PracticeOneData.fromJson(Map<String, dynamic> json) => $PracticeOneDataFromJson(json);

	Map<String, dynamic> toJson() => $PracticeOneDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}