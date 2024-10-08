import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod.g.dart';


@riverpod
class trades extends _$trades {
  @override
  bool build() {
    log("trades calling");

    return true;
  }
  void openTrade(){
    log("openTrade button calling");
    state = true;
  }
  void closedTrade(){
    log("closedTrade button calling");
    state = false;
  }
}


