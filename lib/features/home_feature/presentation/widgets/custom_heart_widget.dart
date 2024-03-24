import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CustomHeart extends StatefulWidget {
  const CustomHeart({super.key, this.color, this.height});
  final Color? color;
  final double? height;

  @override
  State<CustomHeart> createState() => _CustomHeartState();
}

class _CustomHeartState extends State<CustomHeart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          50,
        ),
        color: widget.color,
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(IconlyLight.heart),
      ),
    );
  }
}
