import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/ui/qr_preview_screen.dart';
import 'package:riverpod_tutorial/ui_design/animation/list_animation.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: MultiProvider(providers: [
      //     // ChangeNotifierProvider(create: (context) => CounterNotifier()),
      //     // ChangeNotifierProvider(create: (context) => ColorNotifier()),
      //     // ChangeNotifierProvider(create: (context) => ListNotifier()),
      // ],
      // child: const ItemList(),)
      home: const QrPreviewScreen(),
      // routes: {
      //      "/" : (context) => FirstScreen(),
      //      "/loginScreen" : (context) => LoginScreen(),
      // },
    );
  }
}


// class MyHomePage extends ConsumerWidget {|
//   const MyHomePage({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final count = ref.watch(countProvider);
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Riverpod"),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               count > 0 ? IconButton(onPressed: () {
//                    ref.read(countProvider.notifier).state--;
//               }, icon: const Icon(Icons.remove) ,
//
//               ) : const Icon(Icons.remove),
//               Text(
//                 count.toString(),
//                 style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w800, fontSize: 30),
//               ),
//               IconButton(
//                   onPressed: () {
//                     ref.read(countProvider.notifier).state++;
//                   },
//                   icon: const Icon(Icons.add))
//             ],
//           ),
//         ));
//   }
// }
