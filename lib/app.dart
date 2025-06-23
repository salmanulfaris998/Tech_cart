import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_cart/features/authenticatio/screens/onboarding/onboarding.dart';
import 'package:tech_cart/utils/theme/theme.dart';

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Tapptheme.lightTheme,
      darkTheme: Tapptheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const OnBoardingScreen(),
    );
  }
}
