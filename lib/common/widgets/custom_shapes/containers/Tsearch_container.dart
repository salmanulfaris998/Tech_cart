import 'package:flutter/material.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/sizes.dart';

class Tsearch_container extends StatelessWidget {
  const Tsearch_container({
    super.key,
    required this.darkmode,
    required this.text,
    required this.icon,
    this.showbackround = true,
    this.showborder = true,
    this.ontap,
    this.padding = const EdgeInsets.symmetric(horizontal: Tsize.defaultSpace),
  });

  final bool darkmode;
  final String text;
  final IconData? icon;
  final bool showbackround;
  final bool showborder;
  final VoidCallback? ontap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity, // Ensures full width
        margin: padding, // External spacing
        padding: const EdgeInsets.all(Tsize.md), // Internal spacing
        decoration: BoxDecoration(
          color: showbackround
              ? (darkmode ? Tcolors.black : Tcolors.white)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(Tsize.cardRadiuslg),
          border: showborder
              ? Border.all(color: darkmode ? Tcolors.white : Tcolors.black)
              : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: darkmode ? Tcolors.white : Tcolors.black,
            ),
            const SizedBox(width: Tsize.spaceBtwItems),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
