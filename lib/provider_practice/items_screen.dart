// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:riverpod_tutorial/provider_practice/items.dart';
//
// import 'change_notifier.dart';
//
// class ItemList extends StatefulWidget {
//   const ItemList({super.key});
//
//   @override
//   State<ItemList> createState() => _ItemListState();
// }
//
// class _ItemListState extends State<ItemList> {
//
//
//
//   final idController = TextEditingController();
//   final colorNameController = TextEditingController();
//   final colorController = TextEditingController();
//
// @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Provider.of<ListNotifier>(context,listen: false).fetchData();
// }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple,
//         title: Text("Provider",style: TextStyle(color: Colors.white),),
//         centerTitle: true,
//       ),
//
//       body: Consumer<ListNotifier>(
//         builder: (BuildContext context, value, Widget? child) {
//           return value.loading ? Center(child: CircularProgressIndicator(),):ListView.builder(
//               scrollDirection: Axis.vertical,
//               padding: EdgeInsets.all(18),
//               physics: ScrollPhysics(),
//               shrinkWrap: true,
//               itemCount: value.items.length,
//               itemBuilder: (
//                   context,index){
//                 var item = value.items[index];
//                 return Container(
//                   margin: EdgeInsets.all(8),
//                   padding: EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: Colors.blueGrey
//                   ),
//                   child: Row(
//                     children: [
//                       CircleAvatar(
//                         backgroundColor: item.color,
//                         child:  Text(item.id.toString()),
//                       ),
//                       SizedBox(width: 20,),
//                       Text(item.name,style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.white
//                       ),),
//                       Spacer(),
//                       GestureDetector(
//                         onTap: (){
//                           Provider.of<ListNotifier>(context,listen: false).removeItem(item);
//                         },
//                           child: Icon(Icons.delete,color: Colors.white,)
//                       ),
//                       // Icon(Icons.delete,color: Colors.white,),
//                     ],
//                   ),
//                 );
//               });
//         },
//       ),
//
//
//       floatingActionButton: FloatingActionButton(onPressed: (){
//         showDialog(context: context, builder: (con){
//           return SimpleDialog(
//             title: Center(child: Text("Add Item")),
//             alignment: Alignment.center,
//             contentPadding: EdgeInsets.symmetric(horizontal: 13,vertical: 20),
//             children: [
//               TextFormField(
//                 controller: idController,
//                 decoration: InputDecoration(
//                   hintText: "enter id",
//                   contentPadding: EdgeInsets.all(8),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15),
//                     borderSide: BorderSide(
//                       color: Colors.grey
//                     )
//                   )
//                 ),
//               ),
//               SizedBox(height: 10,),
//               TextFormField(
//                 controller: colorNameController,
//                 decoration: InputDecoration(
//                     hintText: "enter color name",
//                     contentPadding: EdgeInsets.all(8),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15),
//                     borderSide: BorderSide(
//                       color: Colors.grey
//                     )
//                   )
//                 ),
//               ),
//               SizedBox(height: 10,),
//               TextFormField(
//                 controller: colorController,
//                 decoration: InputDecoration(
//                     hintText: "enter color",
//                     helperText: "e.g.Colors.red",
//                     helperStyle: TextStyle(
//                       color: Colors.black,
//                       fontSize: 14
//                     ),
//                     contentPadding: EdgeInsets.all(8),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15),
//                         borderSide: BorderSide(
//                             color: Colors.grey
//                         )
//                     )
//                 ),
//               ),
//               SizedBox(height: 10,),
//
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   GestureDetector(
//                     onTap: (){
//                       Navigator.pop(context);
//                     },
//                     child: Container(
//                       alignment: Alignment.center,
//                       width: 120,
//                       height: 45,
//                       decoration: BoxDecoration(
//                         color: Colors.deepPurple,
//                         borderRadius: BorderRadius.circular(10)
//                       ),
//                       child: Text("Cancel",style:TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold
//                       ),),
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: (){
//                       Provider.of<ListNotifier>(context,listen: false).addItem(Items(id: int.parse(idController.text), name: colorNameController.text, color: Colors.red));
//                     },
//                     child: Container(
//                       alignment: Alignment.center,
//                       width: 120,
//                       height: 45,
//                       decoration: BoxDecoration(
//                         color: Colors.deepPurple,
//                         borderRadius: BorderRadius.circular(10)
//                       ),
//                       child: Text("Add",style:TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold
//                       ),),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           );
//         }) ;
//       },
//         child: Icon(Icons.add,color: Colors.black,),),
//     );
//   }
// }
