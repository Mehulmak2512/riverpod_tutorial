import 'package:riverpod_tutorial/generated/json/base/json_field.dart';
import 'package:riverpod_tutorial/generated/json/login_entity.g.dart';
import 'dart:convert';
export 'package:riverpod_tutorial/generated/json/login_entity.g.dart';

@JsonSerializable()
class LoginEntity {
	LoginResponse? response;
	LoginData? data;

	LoginEntity();

	factory LoginEntity.fromJson(Map<String, dynamic> json) => $LoginEntityFromJson(json);

	Map<String, dynamic> toJson() => $LoginEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginResponse {
	String? status = '';
	String? message = '';

	LoginResponse();

	factory LoginResponse.fromJson(Map<String, dynamic> json) => $LoginResponseFromJson(json);

	Map<String, dynamic> toJson() => $LoginResponseToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginData {
	int? code = 0;
	@JSONField(name: "token_data")
	String? tokenData = '';
	@JSONField(name: "show_ib_form")
	bool? showIbForm = false;
	@JSONField(name: "user_data")
	List<LoginDataUserData>? userData = [];

	LoginData();

	factory LoginData.fromJson(Map<String, dynamic> json) => $LoginDataFromJson(json);

	Map<String, dynamic> toJson() => $LoginDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginDataUserData {
	int? id = 0;
	String? name = '';
	@JSONField(name: "last_name")
	String? lastName = '';
	String? email = '';
	String? dob = '';
	String? phone = '';
	String? country = '';
	String? state = '';
	String? city = '';
	String? zipcode = '';
	String? address = '';
	int? verification = 0;
	@JSONField(name: "ib_ac")
	int? ibAc = 0;
	int? active = 0;
	dynamic chaavi;
	dynamic group;
	@JSONField(name: "fcm_token")
	String? fcmToken = '';
	double? dollorRate;
	LoginDataUserDataDewijson? dewijson;

	LoginDataUserData();

	factory LoginDataUserData.fromJson(Map<String, dynamic> json) => $LoginDataUserDataFromJson(json);

	Map<String, dynamic> toJson() => $LoginDataUserDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginDataUserDataDewijson {
	String? depositGateway = '';
	String? withdrawGateway = '';

	LoginDataUserDataDewijson();

	factory LoginDataUserDataDewijson.fromJson(Map<String, dynamic> json) => $LoginDataUserDataDewijsonFromJson(json);

	Map<String, dynamic> toJson() => $LoginDataUserDataDewijsonToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}