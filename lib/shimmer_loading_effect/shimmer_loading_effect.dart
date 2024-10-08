import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/shimmer_loading_effect/shimmer_widget.dart';

class ShimmerLoadingEffect extends StatelessWidget {
  const ShimmerLoadingEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Shimmer Loading Effect"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index){
        return  buildShimmer();
      }),
    );
  }
  Widget buildShimmer() =>  ListTile(
    title: Align(alignment: Alignment.centerLeft,child: ShimmerWidget.rectangular(height: 15,width: 100,)),
    subtitle:ShimmerWidget.rectangular(height: 12,),
    leading: ShimmerWidget.circular(height: 64,width: 64,),
  );
}
