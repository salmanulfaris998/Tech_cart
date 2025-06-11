import 'package:flutter/material.dart';

class Small_circle extends StatelessWidget {
  const Small_circle({
    super.key,
    required this.color,
    required this.width,
    required this.height,
    required this.margin,
  });

  final Color color;
  final double width, height;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height, margin: margin,
      //padding: EdgeInsets.all(padding),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(100)),
      child: Center(),
    );
  }
}
