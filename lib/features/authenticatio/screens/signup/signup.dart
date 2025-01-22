import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/features/authenticatio/screens/login/widgets/FormDivider.dart';
import 'package:tech_cart/features/authenticatio/screens/login/widgets/SocialButtons.dart';
import 'package:tech_cart/features/authenticatio/screens/login/widgets/butt.dart';
import 'package:tech_cart/features/authenticatio/screens/signup/widgets/signupform.dart';
import 'package:tech_cart/features/authenticatio/screens/signup/widgets/verify_email.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/constants/text_strings.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

class Tsignup extends StatelessWidget {
  const Tsignup({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isdarkmod(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: Tsize.spaceBtwItems,
              ),
              signupform(dark: dark),
              const SizedBox(
                height: Tsize.spaceBtSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const Verify_email()),
                    child: const Text(TTexts.createAccount)),
              ),
              const SizedBox(
                height: Tsize.spaceBtSections,
              ),
              TFormDivider(
                dark: dark,
                dividertext: TTexts.orSignUpWith,
              ),
              const SizedBox(
                height: Tsize.spaceBtSections,
              ),
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
