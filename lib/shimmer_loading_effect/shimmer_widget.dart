import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double width;
  final double height;
  final BoxShape boxShape;

    ShimmerWidget.rectangular({
     super.key,
   this.width = double.infinity,
   required this.height
  }): this.boxShape = BoxShape.rectangle;
  const ShimmerWidget.circular({
    super.key,
    required this.width, required this.height,
     this.boxShape = BoxShape.circle
  });

  @override
  Widget build(BuildContext context)  {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[200]!,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.grey,
          shape: boxShape,
        ),
      ),
    );
  }
}
