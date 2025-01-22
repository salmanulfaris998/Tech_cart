import 'package:flutter/material.dart';
import 'package:tech_cart/utils/constants/colorss.dart';

import '../../../../../utils/constants/text_strings.dart';

class terms_conditions_checkbox extends StatelessWidget {
  const terms_conditions_checkbox({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: "${TTexts.iAgreeTo}",
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: " ${TTexts.privacyPolicy} ",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? Tcolors.white : Tcolors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? Tcolors.white : Tcolors.primary)),
          TextSpan(
              text: " ${TTexts.and} ",
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: "${TTexts.termsOfUse}",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? Tcolors.white : Tcolors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? Tcolors.white : Tcolors.primary)),
        ])),
      ],
    );
  }
}
