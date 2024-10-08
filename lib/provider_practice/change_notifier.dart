import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/provider_practice/consts.dart';
import 'package:riverpod_tutorial/provider_practice/items.dart';

import '../models/product.dart';

class CounterNotifier extends ChangeNotifier{
  int _count = 0;
  int get count => _count;

  void increment(){
    _count += 1;
    notifyListeners();
  }
}

class ColorNotifier extends ChangeNotifier{
  bool _isRed = true;
  bool get isRed => _isRed;

  void changeColor(){
    _isRed = !_isRed;
    notifyListeners();
  }
}


class ListNotifier extends ChangeNotifier{

  List<Items> _item = [];

  List<Items> get items => _item;

  bool isLoading = false;
  bool get loading => isLoading;

  Future<void> fetchData() async {

    isLoading = true;

    await Future.delayed(Duration(seconds: 3),()=>
        _item.addAll(itemList));
    log("items added");
    isLoading = false;
    notifyListeners();
  }

  void removeItem(Items item){
    _item.remove(item);
    notifyListeners();
  }

  void addItem(Items item){
    _item.add(item);
    log("items added successfully");
    notifyListeners();
  }

}



