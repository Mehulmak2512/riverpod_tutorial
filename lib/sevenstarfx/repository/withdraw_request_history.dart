import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:riverpod_tutorial/sevenstarfx/withdraw_requet_history_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';


class WithdrawRequestHistory {
  Future<List<WithdrawRequetHistoryDataUsers>?> requestHistory({required int page,  int limit = 15}) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? token = pref.getString("token");
    // log("token is --->${token.toString()}");
    final response = await get(Uri.parse("https://api.sevenstarfx.com/api/v1/withdraw/withdrawRequestHistory?page=$page&limit=$limit"),
        headers: {"Authorization": "Bearer $token"}
    );
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final List jsonString = json["data"]["users"];
      final result = jsonString.map((e) => WithdrawRequetHistoryDataUsers.fromJson(e)).toList();
      // log("result is --> ${result.toString()}");

      return result;
    } else {
      log("failed to get data");
      return null;
    }
  }
}






