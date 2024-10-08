import 'package:riverpod_tutorial/generated/json/base/json_convert_content.dart';
import 'package:riverpod_tutorial/practice/practice_entity.dart';

PracticeEntity $PracticeEntityFromJson(Map<String, dynamic> json) {
  final PracticeEntity practiceEntity = PracticeEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    practiceEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    practiceEntity.name = name;
  }
  final String? lastname = jsonConvert.convert<String>(json['lastname']);
  if (lastname != null) {
    practiceEntity.lastname = lastname;
  }
  return practiceEntity;
}

Map<String, dynamic> $PracticeEntityToJson(PracticeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['lastname'] = entity.lastname;
  return data;
}

extension PracticeEntityExtension on PracticeEntity {
  PracticeEntity copyWith({
    int? id,
    String? name,
    String? lastname,
  }) {
    return PracticeEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..lastname = lastname ?? this.lastname;
  }
}