import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/pagination/controller.dart';

class Pagination extends ConsumerWidget {
  const Pagination({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Text("Pagination"),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: ref.read(productControllerProvider).loadProduts(),
          builder: (context,snapshot){
            if(snapshot.data != null){
              return ListView.builder(
                itemCount: snapshot.data!.length,
                  itemBuilder: (context,index){
                   var itemEntity = snapshot.data![index];
                   return Row(
                     children: [
                       Image.network(itemEntity.thumbnail.toString(),height: 100,width: 100,),
                       SizedBox(width: 10,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(itemEntity.title.toString()),
                           SizedBox(height: 10,),
                           Text("\$ ${itemEntity.price.toString()}"),
                         ],
                       ),

                     ],
                   );
              });

            }
            return Text("abc");
          }
      ),
    );
  }
}
