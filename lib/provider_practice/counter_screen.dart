// import 'dart:developer';
//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import 'change_notifier.dart';
//
// class CounterScreen extends StatelessWidget {
//   const CounterScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     log("counterscreen calling");
//
//     // final count = Provider.of<CounterNotifier>(context).count;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Counter"),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("you have pushed the button many times"),
//             Consumer<ColorNotifier>(
//               builder: (context, value,child) {
//                 return RedBox(
//                   child: child!,
//                   isRed: value.isRed,
//                 );
//               },
//            child: CounterExample(number: 0,),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () {
//        Provider.of<ColorNotifier>(context,listen: false).changeColor();
//       },
//       child: Icon(Icons.add,color: Colors.black,),),
//     );
//   }
// }
//
// class CounterExample extends StatelessWidget {
//   const CounterExample({
//     super.key, required this.number,
//   });
//   final int number ;
//   @override
//   Widget build(BuildContext context) {
//     log("counter calling");
//     return Text(number.toString(),style: TextStyle(
//       color: Colors.white,
//       fontWeight: FontWeight.w600,
//       fontSize: 20
//     ),);
//   }
// }
//
// class RedBox extends StatelessWidget {
//   final Widget child;
//   final bool isRed;
//
//   const RedBox({
//     super.key,
//     required this.child,
//     required this.isRed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     log("redbox calling");
//
//     return Container(
//       alignment: Alignment.center,
//       height: 50,width: 50,
//         decoration: BoxDecoration(
//             color: isRed ?? true ? Colors.redAccent :Colors.blue
//         )
//         , child: child);
//   }
// }
//
