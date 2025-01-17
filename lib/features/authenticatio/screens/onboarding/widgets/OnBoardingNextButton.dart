import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/features/authenticatio/controllers.onboarding/controllers.onboarding.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/device/device_utility.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isdarkmod(context);
    return Positioned(
        right: Tsize.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () {
              OnBoardingControlle.instent.nextPage();
            },
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: dark ? Colors.white : Colors.black),
            child: Icon(
              (Iconsax.arrow_right_3),
              color: dark ? Colors.black : Colors.white,
            )));
  }
}
