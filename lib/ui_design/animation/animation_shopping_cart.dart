import 'dart:developer';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AnimationShoppingCart extends HookConsumerWidget {
  const AnimationShoppingCart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isExpanded = useValueNotifier(false);
    log("build calling");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Animation",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              isExpanded.value = !isExpanded.value;
              log("isExpanded value --> ${isExpanded.value}");
            },
            child: ValueListenableBuilder(
              valueListenable: isExpanded,
              builder: (context, value, child) {
                log("value calling");
                return AnimatedContainer(
                  height: 50,
                  width: value ? 200 : 60,
                  decoration: BoxDecoration(
                      color: value ? Colors.green : Colors.blue, borderRadius: BorderRadius.circular(value ? 30 : 10)),
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.linearToEaseOut,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       Icon(
                        value ? Icons.check : Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    if(value)
                      AnimatedTextKit(
                        totalRepeatCount: 1,
                        onTap: (){
                          isExpanded.value = !isExpanded.value;
                          log("isExpanded value --> ${isExpanded.value}");
                        },
                        repeatForever: false,
                        displayFullTextOnTap: true,
                        animatedTexts: [
                        TyperAnimatedText(
                          "Added to Cart",textStyle: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400
                        ),),
                      ],)

                    ],
                  ),
                );
              },
            )),
      ),
    );
  }
}
