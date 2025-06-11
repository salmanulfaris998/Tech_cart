import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

class Tcircular_icon extends StatelessWidget {
  const Tcircular_icon(
      {super.key,
      required this.icon,
      this.width,
      this.hight,
      this.size,
      this.color,
      this.backroundcolor,
      this.onpressed});

  final double? width, hight, size;
  final IconData icon;
  final Color? color;
  final Color? backroundcolor;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backroundcolor != null
              ? backroundcolor!
              : THelperFunctions.isdarkmod(context)
                  ? Tcolors.black.withOpacity(0.9)
                  : Tcolors.white.withOpacity(0.9)),
      child: IconButton(
          onPressed: () {}, icon: Icon(icon, color: color, size: size)),
    );
  }
}
