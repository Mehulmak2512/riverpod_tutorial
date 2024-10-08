import 'package:riverpod_tutorial/generated/json/base/json_convert_content.dart';
import 'package:riverpod_tutorial/auth/login_entity.dart';

LoginEntity $LoginEntityFromJson(Map<String, dynamic> json) {
  final LoginEntity loginEntity = LoginEntity();
  final LoginResponse? response = jsonConvert.convert<LoginResponse>(json['response']);
  if (response != null) {
    loginEntity.response = response;
  }
  final LoginData? data = jsonConvert.convert<LoginData>(json['data']);
  if (data != null) {
    loginEntity.data = data;
  }
  return loginEntity;
}

Map<String, dynamic> $LoginEntityToJson(LoginEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['response'] = entity.response?.toJson();
  data['data'] = entity.data?.toJson();
  return data;
}

extension LoginEntityExtension on LoginEntity {
  LoginEntity copyWith({
    LoginResponse? response,
    LoginData? data,
  }) {
    return LoginEntity()
      ..response = response ?? this.response
      ..data = data ?? this.data;
  }
}

LoginResponse $LoginResponseFromJson(Map<String, dynamic> json) {
  final LoginResponse loginResponse = LoginResponse();
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    loginResponse.status = status;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    loginResponse.message = message;
  }
  return loginResponse;
}

Map<String, dynamic> $LoginResponseToJson(LoginResponse entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['message'] = entity.message;
  return data;
}

extension LoginResponseExtension on LoginResponse {
  LoginResponse copyWith({
    String? status,
    String? message,
  }) {
    return LoginResponse()
      ..status = status ?? this.status
      ..message = message ?? this.message;
  }
}

LoginData $LoginDataFromJson(Map<String, dynamic> json) {
  final LoginData loginData = LoginData();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    loginData.code = code;
  }
  final String? tokenData = jsonConvert.convert<String>(json['token_data']);
  if (tokenData != null) {
    loginData.tokenData = tokenData;
  }
  final bool? showIbForm = jsonConvert.convert<bool>(json['show_ib_form']);
  if (showIbForm != null) {
    loginData.showIbForm = showIbForm;
  }
  final List<LoginDataUserData>? userData = (json['user_data'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<LoginDataUserData>(e) as LoginDataUserData).toList();
  if (userData != null) {
    loginData.userData = userData;
  }
  return loginData;
}

Map<String, dynamic> $LoginDataToJson(LoginData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['token_data'] = entity.tokenData;
  data['show_ib_form'] = entity.showIbForm;
  data['user_data'] = entity.userData?.map((v) => v.toJson()).toList();
  return data;
}

extension LoginDataExtension on LoginData {
  LoginData copyWith({
    int? code,
    String? tokenData,
    bool? showIbForm,
    List<LoginDataUserData>? userData,
  }) {
    return LoginData()
      ..code = code ?? this.code
      ..tokenData = tokenData ?? this.tokenData
      ..showIbForm = showIbForm ?? this.showIbForm
      ..userData = userData ?? this.userData;
  }
}

LoginDataUserData $LoginDataUserDataFromJson(Map<String, dynamic> json) {
  final LoginDataUserData loginDataUserData = LoginDataUserData();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    loginDataUserData.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    loginDataUserData.name = name;
  }
  final String? lastName = jsonConvert.convert<String>(json['last_name']);
  if (lastName != null) {
    loginDataUserData.lastName = lastName;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    loginDataUserData.email = email;
  }
  final String? dob = jsonConvert.convert<String>(json['dob']);
  if (dob != null) {
    loginDataUserData.dob = dob;
  }
  final String? phone = jsonConvert.convert<String>(json['phone']);
  if (phone != null) {
    loginDataUserData.phone = phone;
  }
  final String? country = jsonConvert.convert<String>(json['country']);
  if (country != null) {
    loginDataUserData.country = country;
  }
  final String? state = jsonConvert.convert<String>(json['state']);
  if (state != null) {
    loginDataUserData.state = state;
  }
  final String? city = jsonConvert.convert<String>(json['city']);
  if (city != null) {
    loginDataUserData.city = city;
  }
  final String? zipcode = jsonConvert.convert<String>(json['zipcode']);
  if (zipcode != null) {
    loginDataUserData.zipcode = zipcode;
  }
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    loginDataUserData.address = address;
  }
  final int? verification = jsonConvert.convert<int>(json['verification']);
  if (verification != null) {
    loginDataUserData.verification = verification;
  }
  final int? ibAc = jsonConvert.convert<int>(json['ib_ac']);
  if (ibAc != null) {
    loginDataUserData.ibAc = ibAc;
  }
  final int? active = jsonConvert.convert<int>(json['active']);
  if (active != null) {
    loginDataUserData.active = active;
  }
  final dynamic chaavi = json['chaavi'];
  if (chaavi != null) {
    loginDataUserData.chaavi = chaavi;
  }
  final dynamic group = json['group'];
  if (group != null) {
    loginDataUserData.group = group;
  }
  final String? fcmToken = jsonConvert.convert<String>(json['fcm_token']);
  if (fcmToken != null) {
    loginDataUserData.fcmToken = fcmToken;
  }
  final double? dollorRate = jsonConvert.convert<double>(json['dollorRate']);
  if (dollorRate != null) {
    loginDataUserData.dollorRate = dollorRate;
  }
  final LoginDataUserDataDewijson? dewijson = jsonConvert.convert<LoginDataUserDataDewijson>(json['dewijson']);
  if (dewijson != null) {
    loginDataUserData.dewijson = dewijson;
  }
  return loginDataUserData;
}

Map<String, dynamic> $LoginDataUserDataToJson(LoginDataUserData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['last_name'] = entity.lastName;
  data['email'] = entity.email;
  data['dob'] = entity.dob;
  data['phone'] = entity.phone;
  data['country'] = entity.country;
  data['state'] = entity.state;
  data['city'] = entity.city;
  data['zipcode'] = entity.zipcode;
  data['address'] = entity.address;
  data['verification'] = entity.verification;
  data['ib_ac'] = entity.ibAc;
  data['active'] = entity.active;
  data['chaavi'] = entity.chaavi;
  data['group'] = entity.group;
  data['fcm_token'] = entity.fcmToken;
  data['dollorRate'] = entity.dollorRate;
  data['dewijson'] = entity.dewijson?.toJson();
  return data;
}

extension LoginDataUserDataExtension on LoginDataUserData {
  LoginDataUserData copyWith({
    int? id,
    String? name,
    String? lastName,
    String? email,
    String? dob,
    String? phone,
    String? country,
    String? state,
    String? city,
    String? zipcode,
    String? address,
    int? verification,
    int? ibAc,
    int? active,
    dynamic chaavi,
    dynamic group,
    String? fcmToken,
    double? dollorRate,
    LoginDataUserDataDewijson? dewijson,
  }) {
    return LoginDataUserData()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..lastName = lastName ?? this.lastName
      ..email = email ?? this.email
      ..dob = dob ?? this.dob
      ..phone = phone ?? this.phone
      ..country = country ?? this.country
      ..state = state ?? this.state
      ..city = city ?? this.city
      ..zipcode = zipcode ?? this.zipcode
      ..address = address ?? this.address
      ..verification = verification ?? this.verification
      ..ibAc = ibAc ?? this.ibAc
      ..active = active ?? this.active
      ..chaavi = chaavi ?? this.chaavi
      ..group = group ?? this.group
      ..fcmToken = fcmToken ?? this.fcmToken
      ..dollorRate = dollorRate ?? this.dollorRate
      ..dewijson = dewijson ?? this.dewijson;
  }
}

LoginDataUserDataDewijson $LoginDataUserDataDewijsonFromJson(Map<String, dynamic> json) {
  final LoginDataUserDataDewijson loginDataUserDataDewijson = LoginDataUserDataDewijson();
  final String? depositGateway = jsonConvert.convert<String>(json['depositGateway']);
  if (depositGateway != null) {
    loginDataUserDataDewijson.depositGateway = depositGateway;
  }
  final String? withdrawGateway = jsonConvert.convert<String>(json['withdrawGateway']);
  if (withdrawGateway != null) {
    loginDataUserDataDewijson.withdrawGateway = withdrawGateway;
  }
  return loginDataUserDataDewijson;
}

Map<String, dynamic> $LoginDataUserDataDewijsonToJson(LoginDataUserDataDewijson entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['depositGateway'] = entity.depositGateway;
  data['withdrawGateway'] = entity.withdrawGateway;
  return data;
}

extension LoginDataUserDataDewijsonExtension on LoginDataUserDataDewijson {
  LoginDataUserDataDewijson copyWith({
    String? depositGateway,
    String? withdrawGateway,
  }) {
    return LoginDataUserDataDewijson()
      ..depositGateway = depositGateway ?? this.depositGateway
      ..withdrawGateway = withdrawGateway ?? this.withdrawGateway;
  }
}