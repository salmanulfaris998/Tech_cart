import 'package:flutter/material.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/device/device_utility.dart';

import '../../../../utils/constants/sizes.dart';

class Tsearch_container extends StatelessWidget {
  const Tsearch_container({
    super.key,
    required this.darkmode,
    required this.text,
    required this.icon,
    this.showbackround,
    this.showborder,
    this.ontap,
  });

  final bool darkmode;
  final String text;
  final IconData? icon;
  final showbackround, showborder;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Tsize.defaultSpace),
        child: Container(
          child: Row(
            children: [
              Icon(
                icon,
                color: darkmode ? Tcolors.white : Tcolors.black,
              ),
              SizedBox(
                width: Tsize.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
          width: TDeviceUtils.getScreenwidth(context),
          padding: const EdgeInsets.all(Tsize.md),
          decoration: BoxDecoration(
              color: showbackround
                  ? darkmode
                      ? Tcolors.black
                      : Tcolors.white
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(Tsize.cardRadiuslg),
              border: showborder
                  ? Border.all(color: darkmode ? Tcolors.white : Tcolors.black)
                  : null),
        ),
      ),
    );
  }
}
