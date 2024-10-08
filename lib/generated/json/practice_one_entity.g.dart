import 'package:riverpod_tutorial/generated/json/base/json_convert_content.dart';
import 'package:riverpod_tutorial/practice/practice_one_entity.dart';

PracticeOneEntity $PracticeOneEntityFromJson(Map<String, dynamic> json) {
  final PracticeOneEntity practiceOneEntity = PracticeOneEntity();
  final bool? status = jsonConvert.convert<bool>(json['status']);
  if (status != null) {
    practiceOneEntity.status = status;
  }
  final int? responseCode = jsonConvert.convert<int>(json['response_code']);
  if (responseCode != null) {
    practiceOneEntity.responseCode = responseCode;
  }
  final List<PracticeOneData>? data = (json['data'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<PracticeOneData>(e) as PracticeOneData).toList();
  if (data != null) {
    practiceOneEntity.data = data;
  }
  return practiceOneEntity;
}

Map<String, dynamic> $PracticeOneEntityToJson(PracticeOneEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['response_code'] = entity.responseCode;
  data['data'] = entity.data?.map((v) => v.toJson()).toList();
  return data;
}

extension PracticeOneEntityExtension on PracticeOneEntity {
  PracticeOneEntity copyWith({
    bool? status,
    int? responseCode,
    List<PracticeOneData>? data,
  }) {
    return PracticeOneEntity()
      ..status = status ?? this.status
      ..responseCode = responseCode ?? this.responseCode
      ..data = data ?? this.data;
  }
}

PracticeOneData $PracticeOneDataFromJson(Map<String, dynamic> json) {
  final PracticeOneData practiceOneData = PracticeOneData();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    practiceOneData.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    practiceOneData.id = id;
  }
  return practiceOneData;
}

Map<String, dynamic> $PracticeOneDataToJson(PracticeOneData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['id'] = entity.id;
  return data;
}

extension PracticeOneDataExtension on PracticeOneData {
  PracticeOneData copyWith({
    String? name,
    int? id,
  }) {
    return PracticeOneData()
      ..name = name ?? this.name
      ..id = id ?? this.id;
  }
}