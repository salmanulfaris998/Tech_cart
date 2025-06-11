import 'package:flutter/material.dart';
import 'package:tech_cart/utils/constants/colorss.dart';

class Tcircle extends StatelessWidget {
  const Tcircle(
      {super.key,
      this.width,
      this.height,
      required this.redius,
      required this.paading,
      this.child,
      required this.backgroundcolor});

  final double? width, height;

  final double redius, paading;
  final Widget? child;
  final Color backgroundcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(paading),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(redius),
          color: Tcolors.textWhite.withOpacity(.15)),
      child: child,
    );
  }
}
