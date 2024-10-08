
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart'as http;
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'network.g.dart';



class NetworlHanler {

  Future<Response?> getRequest({required String url}) async {
    try{
      final response = await http.get(Uri.parse(url));
      return response;
    }catch(e){
      debugPrint("failed to make request");
      return null;
    }
  }
}


// final networkProvider = Provider((ref) => NetworlHanler());

@riverpod
NetworlHanler networkhandler(NetworkhandlerRef ref) {
  return NetworlHanler();
}

