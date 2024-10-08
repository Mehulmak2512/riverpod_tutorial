import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/provider/product_provider.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final cartProducts = ref.watch(cartProductProvider);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: const Text(
          "Your Cart",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: cartProducts.isEmpty ?  const Center(
        child:  Text("No Products Available",style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.w700
        ),),
      ):SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
                itemCount: cartProducts.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                itemBuilder: (context, index) {
              return Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.grey.shade400, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      cartProducts[index].image.toString(),
                      height: 80,
                      width: 90,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartProducts[index].title.toString(),
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "₹ ${cartProducts[index].price.toString()}",
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              );
            }, separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 10,);
            },),
            Center(
              child: Text(
                "Total Price - ₹${cartProducts.map((e) => e.price).toList().reduce((value, element) => value + element).toString()}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Center(
              child: Text(
                "Min Price - ₹${cartProducts.map((e) => e.price).toList().reduce((value, element) {
                  if(value > element) value = element;
                  return value;
                }).toString()}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Center(
              child: Text(
                "Max Price - ₹${ref.watch(cartProductProvider.notifier).maxCart().toString()}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
