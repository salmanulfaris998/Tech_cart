import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/utils/constants/colorss.dart';

class Tcartcounter extends StatelessWidget {
  const Tcartcounter({
    super.key,
    required this.iconColor,
    required this.onpressed,
  });
  final Color iconColor;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.shopping_bag,
              color: Tcolors.white,
            )),
        Positioned(
            right: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                  color: Tcolors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Text(
                  '2',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: Tcolors.white),
                ),
              ),
            ))
      ],
    );
  }
}
