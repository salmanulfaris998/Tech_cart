import 'package:flutter/material.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/sizes.dart';

class TcurvedCOntainer extends StatelessWidget {
  const TcurvedCOntainer(
      {super.key,
      this.width,
      this.height,
      this.radius = Tsize.cardRadiuslg,
      this.child,
      this.showBorder = false,
      this.borderColor = Tcolors.borderPrimary,
      this.backgroundColor = Tcolors.white,
      this.padding,
      this.margin});
  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder ? Border.all(color: borderColor) : null,
        ),
        child: child);
  }
}
