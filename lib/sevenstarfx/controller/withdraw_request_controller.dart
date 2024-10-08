import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_tutorial/sevenstarfx/withdraw_requet_history_entity.dart';

import '../repository/withdraw_request_history.dart';

part 'withdraw_request_controller.g.dart';

@riverpod
class WithRequestHistoryList extends _$WithRequestHistoryList {
  @override
  List<WithdrawRequetHistoryDataUsers> build() {
    // historyList();
    return [];
  }

  Future<List<WithdrawRequetHistoryDataUsers>> historyList({ int page = 1}) async {
    WithdrawRequestHistory history = WithdrawRequestHistory();
    final result = await history.requestHistory(page: page);
    log("page called: $page");
    log("result called: ${result}");
    state =  [...state,...result ?? []] ;
    return result ?? [];
  }

}


