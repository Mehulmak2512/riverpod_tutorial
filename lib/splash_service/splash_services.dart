import 'dart:async';

import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/auth/login_screen.dart';
import 'package:riverpod_tutorial/sevenstarfx/history_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashServices{

  isLogin(context) async {
    SharedPreferences pref  = await SharedPreferences.getInstance();
    String token = pref.getString("token") ?? "";
    if( token != ""){
      Timer(const Duration(seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HistoryScreen())));

    }else{
      Timer(const Duration(seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginScreen())));

    }
  }
}