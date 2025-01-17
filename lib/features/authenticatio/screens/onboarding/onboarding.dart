import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tech_cart/features/authenticatio/controllers.onboarding/controllers.onboarding.dart';
import 'package:tech_cart/features/authenticatio/screens/onboarding/widgets/OnBoardingNextButton.dart';
import 'package:tech_cart/features/authenticatio/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:tech_cart/features/authenticatio/screens/onboarding/widgets/onboarding_page.dart';
import 'package:tech_cart/features/authenticatio/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/image_strings.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/constants/text_strings.dart';
import 'package:tech_cart/utils/device/device_utility.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controler = Get.put(OnBoardingControlle());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controler.pageconroler,
            onPageChanged: controler.updatePageIndicator,
            children: const [
              OnBoardingPage(
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
                image: Timage.onBoardingImagel1,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
                image: Timage.onBoardingImagel2,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
                image: Timage.onBoardingImagel3,
              ),
            ],
          ),
          OnBoardingSkip(),
          OnBoardingDotNavigation(),
          OnBoardingNextButton()
        ],
      ),
    );
  }
}
