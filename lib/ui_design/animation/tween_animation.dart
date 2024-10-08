import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TweenAnimationWidget extends HookConsumerWidget {
  const TweenAnimationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 150),
          duration: Duration(milliseconds:2000),
          builder: (context, value, child) {
            return Container(
              height: value,
              width: value,
              decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.green.withOpacity(0.5),
                        blurRadius: value,
                        spreadRadius: value / 2
                    )
                  ]
              ),
            );
          },
        ),
      ),
    );
  }
}
