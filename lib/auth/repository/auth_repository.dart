import 'dart:convert';
import 'dart:developer';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_tutorial/auth/login_entity.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_repository.g.dart';

class AuthRepository {
  FutureOr<LoginEntity?> signIn({required String email, required String password}) async {
    Map<String, String> data = {"email": "$email", "password": "$password"};
    // log(data.toString());
    final response = await http.post(Uri.parse("https://api.sevenstarfx.com/api/v1/login"), body: data);
    // log(response.body);
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      final String token = result['data']['token_data'];
      log("token is --->$token");
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setString("token", token);
      // log(result);
      return result;
    } else {
      log("failed to sign in");
      return null;
    }
  }
}

@riverpod
class authRepository extends _$authRepository {
  @override
  FutureOr<LoginEntity?> build({required String email, required String password}) {
    AuthRepository _auth = AuthRepository();
    final result = _auth.signIn(email: email, password: password);
    return result;
  }
}





