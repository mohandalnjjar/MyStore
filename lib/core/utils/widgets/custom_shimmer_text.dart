import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomSHimmerText extends StatelessWidget {
  const CustomSHimmerText({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.red,
        highlightColor: Colors.yellow,
        child: Text(title));
  }
}
