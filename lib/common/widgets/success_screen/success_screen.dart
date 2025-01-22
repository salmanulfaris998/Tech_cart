import 'package:flutter/material.dart';

import 'package:tech_cart/common/styles/spacing_styles.dart';

import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/constants/text_strings.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

class Success_screen extends StatelessWidget {
  const Success_screen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onpressed});
  final String image, title, subtitle;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: Spacing_styles.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: THelperFunctions.screenwidth() * 0.6,
              ),
              const SizedBox(
                height: Tsize.spaceBtwItems,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Tsize.spaceBtwItems,
              ),
              const SizedBox(
                height: Tsize.spaceBtwItems,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Tsize.spaceBtSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onpressed, child: const Text(TTexts.tContinue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
