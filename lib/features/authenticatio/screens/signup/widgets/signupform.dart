import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/features/authenticatio/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/constants/text_strings.dart';

class signupform extends StatelessWidget {
  const signupform({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Expanded(
              child: TextField(
                expands: false,
                decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            SizedBox(
              width: Tsize.spaceBtwInputFields,
            ),
            Expanded(
              child: TextField(
                expands: false,
                decoration: InputDecoration(
                    labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user)),
              ),
            )
          ],
        ),
        const SizedBox(
          height: Tsize.spaceBtwInputFields,
        ),
        const TextField(
          expands: false,
          decoration: InputDecoration(
              labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: Tsize.spaceBtwInputFields,
        ),
        const TextField(
          expands: false,
          decoration: InputDecoration(
              labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: Tsize.spaceBtwInputFields,
        ),
        const TextField(
          expands: false,
          decoration: InputDecoration(
              labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: Tsize.spaceBtwInputFields,
        ),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(
          height: Tsize.spaceBtSections,
        ),
        terms_conditions_checkbox(dark: dark)
      ],
    ));
  }
}
