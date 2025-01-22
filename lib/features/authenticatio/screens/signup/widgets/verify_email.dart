import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tech_cart/features/authenticatio/screens/login/login.dart';
import 'package:tech_cart/common/widgets/success_screen/success_screen.dart';
import 'package:tech_cart/utils/constants/image_strings.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/constants/text_strings.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

class Verify_email extends StatelessWidget {
  const Verify_email({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const loginscreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsize.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(Timage.deliveredEmailIllustration),
                width: THelperFunctions.screenwidth() * 0.6,
              ),
              const SizedBox(
                height: Tsize.spaceBtwItems,
              ),
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Tsize.spaceBtwItems,
              ),
              Text(
                'support@techcart.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Tsize.spaceBtwItems,
              ),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Tsize.spaceBtSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => Success_screen(
                        image: Timage.confirmEmil,
                        title: TTexts.confirmEmail,
                        subtitle: TTexts.confirmEmailSubTitle,
                        onpressed: () => Get.to(
                              () => const loginscreen(),
                            ))),
                    child: const Text(TTexts.tContinue)),
              ),
              const SizedBox(
                height: Tsize.spaceBtSections,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(TTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
