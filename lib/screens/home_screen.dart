import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/provider/product_provider.dart';
import 'package:riverpod_tutorial/screens/cart_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final productsLength = ref.watch(productProvider.select((value) => value.length,));
    log("ui rebuild");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Home Screen",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Stack(children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreen()));
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                )),
            Positioned(
                top: 5,
                right: 10,
                child: Consumer(
                  builder: (context,ref,_) {
                    final cartProductsListLength = ref.watch(cartProductProvider.select((value) => value.length,));

                    return cartProductsListLength == 0 ? const SizedBox(): CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      child:  Text(cartProductsListLength.toString(),style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10
                      ),),
                    );
                  }
                ))
          ])
        ],
      ),
      body: GridView.builder(
          itemCount: productsLength,
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 210, mainAxisSpacing: 15, crossAxisSpacing: 15),
          itemBuilder: (context, index) {
            return ProductItemView(index);
          }),
    );
  }
}

class ProductItemView extends ConsumerWidget {
  final  int index;
  const ProductItemView( this.index, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final product = ref.watch(productProvider.select((value) => value[index]));
    
    final isIncludedInCart = ref.watch(cartProductProvider.select((value) => value.contains(product)));
    
    return  Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            product.image.toString(),
            height: 80,
            width: 160,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            product.title.toString(),
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "₹ ${product.price.toString()}",
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          if (isIncludedInCart)
            TextButton(
              onPressed: () {
                ref.read(cartProductProvider.notifier).removeProduct(allproducts[index]);
              },
              child: const Text(
                "Remove",
                style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.w600),
              ),
            )
          else if (!isIncludedInCart)
            TextButton(
              onPressed: () {
                ref.read(cartProductProvider.notifier).addProduct(
                    allproducts[index]
                );
                debugPrint("button tapped");
              },
              child: const Text(
                "Add to Cart",
                style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.w600),
              ),
            )
        ],
      ),
    );
  }
}