import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ListAnimation extends HookConsumerWidget {
  const ListAnimation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("List Animation",style: GoogleFonts.workSans(
          fontSize: 28,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.2,
          color: Colors.white
        ),),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 8  ,
          itemBuilder: (context,index){
        return ListTile(
          title: Text("Hello World, $index",style: GoogleFonts.workSans(
            letterSpacing: 1.2,
            fontSize: 28,
            fontWeight: FontWeight.w400
          ),),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        
      },child: Icon(Icons.check,color: Colors.black,),
      ),
    );
  }
}

