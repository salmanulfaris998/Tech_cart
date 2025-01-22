import 'package:flutter/material.dart';

import 'package:tech_cart/common/styles/spacing_styles.dart';
import 'package:tech_cart/features/authenticatio/screens/login/widgets/FormDivider.dart';
import 'package:tech_cart/features/authenticatio/screens/login/widgets/LoginForm.dart';
import 'package:tech_cart/features/authenticatio/screens/login/widgets/LoginHeader.dart';
import 'package:tech_cart/features/authenticatio/screens/login/widgets/SocialButtons.dart';
import 'package:tech_cart/utils/constants/text_strings.dart';

import 'package:tech_cart/utils/helpers/helper_functions.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isdarkmod(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: Spacing_styles.paddingWithAppBarHeight,
          child: Column(
            children: [
              const LoginHeader(),
              const LoginForm(),
              TFormDivider(
                dark: dark,
                dividertext: TTexts.signIn,
              ),
              const SizedBox(
                height: 20,
              ),
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
