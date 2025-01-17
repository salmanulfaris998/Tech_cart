import 'package:flutter/material.dart';
import 'package:tech_cart/features/authenticatio/controllers.onboarding/controllers.onboarding.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/device/device_utility.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isdarkmod(context);
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: Tsize.defaultSpace,
        child: TextButton(
            onPressed: () {
              OnBoardingControlle.instent.skipPage();
            },
            child: Text(
              'skip',
              style: TextStyle(
                  fontSize: 18, color: dark ? Tcolors.white : Tcolors.dark),
            )));
  }
}
