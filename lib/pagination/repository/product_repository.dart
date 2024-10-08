import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_tutorial/item_entity.dart';
import 'package:riverpod_tutorial/pagination/network/network.dart';
import 'package:riverpod_tutorial/pagination/repository/endpoint.dart';

part 'product_repository.g.dart';

@riverpod
ProductRepository productRepository(ProductRepositoryRef ref) {
  final _networlHanler = ref.watch(networkhandlerProvider);
  return ProductRepository(networlHanler: _networlHanler);
}

class ProductRepository{

  final NetworlHanler _networlHanler;

  ProductRepository({required NetworlHanler networlHanler}) : _networlHanler = networlHanler;

  Future<List<ItemEntity>?> getProducts({required int skip,int limit = 10}) async {
      log("Products Requested");
      final url = Endpoint.productUrl(skip: skip,limit: limit);
      final response = await _networlHanler.getRequest(url: url);
      if(response!.statusCode == 200){
        // log(response.body);
        final jsonData = jsonDecode(response.body);
        final List productsJson = jsonData['products'];
        return productsJson.map((e)=> ItemEntity.fromJson(e)).toList();
      }else{
        log("failed to load data");
        return null;
      }
  }
}