

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/product.dart';

part 'product_provider.g.dart';

 List<Product> allproducts = [
  Product(id: '1', title: 'Sports', price:  50, image: 'assests/images/Screenshot from 2024-06-25 10-18-51.png'),
   Product(id: '2', title: "Fruits", price: 180, image: "assests/images/Screenshot from 2024-06-25 14-02-06.png"),
   Product(id: '3', title: "Cloths", price: 200, image: "assests/images/Screenshot from 2024-06-25 14-02-06.png"),
   Product(id: '4', title: "Bag", price: 300, image: "assests/images/Screenshot from 2024-06-25 14-14-14.png"),
   Product(id: '5', title: "Shoes", price: 250, image: "assests/images/Screenshot from 2024-06-25 15-27-16.png"),
   Product(id: '6', title: "Music", price: 450, image: "assests/images/Screenshot from 2024-06-26 14-45-44.png"),
   Product(id: '7', title: "Books", price: 270, image: "assests/images/Screenshot from 2024-06-26 14-45-44.png"),
   Product(id: '8', title: "Watch", price: 1250, image: "assests/images/Screenshot from 2024-06-26 14-45-44.png"),
];



// final produtProvider = Provider((ref){
//   return allproducts;
// });


// final reducedProdutProvider = Provider((ref){
//
//   return allproducts.where((e)=>e.price < 300).toList();
// });
//

/// generated provider


@riverpod
List<Product> product(ProductRef ref) {
  return allproducts;
}

@riverpod
List<Product> reducedProduct(ReducedProductRef ref) {
  return allproducts.where((e)=> e.price < 300).toList();
}

@riverpod
class CartProduct extends _$CartProduct {
  @override
  List<Product> build() {
    return [];
  }

  void addProduct(Product product){
    if(!state.contains(product)){
       state =[...state,product];
    }
  }

  void removeProduct(Product product){
    if(state.contains(product)){
      state = state.where((e)=> e.id != product.id).toList();
    }
  }

  int cartTotal(){
      int total = 0;
      // state.map((e) => e.price).reduce((value, element) => value + element);
      for(Product product in state){
        total = total + product.price;
      }
     return total;
  }

  int maxCart(){
    final list = state.map((e) => e.price).toList();
    final int result = list.fold(list.first, (value,element) {
      if(value < element) value = element;
      return value;
    });
    return result;
  }
  int minCart(){
    final list = state.map((e) => e.price).toList();
    final int result = list.fold(list.first, (value,element) {
      if(value > element) value = element;
      return value;
    });
    return result;
  }


}
