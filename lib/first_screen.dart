import 'dart:developer';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
       final result =  await Navigator.pushNamed(context, "/loginScreen",arguments: 1) ;
       log("result is --->${result}");
      },
        child: Icon(Icons.navigate_next_outlined,color: Colors.black,),),
    );
  }
}
