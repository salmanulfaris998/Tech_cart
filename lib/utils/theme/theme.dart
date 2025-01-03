import 'package:flutter/material.dart';
import 'package:tech_cart/utils/theme/custom_themes/Ttexttheme.dart';
import 'package:tech_cart/utils/theme/custom_themes/appbar_theme.dart';
import 'package:tech_cart/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:tech_cart/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:tech_cart/utils/theme/custom_themes/chip_theme.dart';
import 'package:tech_cart/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:tech_cart/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:tech_cart/utils/theme/custom_themes/text_field_theme.dart';

class Tapptheme {
  Tapptheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.purple,
    textTheme: Ttexttheme.lighttextTheme,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: TelevatedButtonTheme.lightButtonTheme,
    inputDecorationTheme: TtextFormFieldTheme.lightInputDecorationTheme,
    appBarTheme: Tappbar_theme.lightAppBarTheme,
    bottomSheetTheme: Tbottom_sheet_theme.lightBottomSheetTheme,
    outlinedButtonTheme: Toutlined_button_theme.lightInputDecorationTheme,
    chipTheme: Tchip_theme.lightChipTheme,
    checkboxTheme: Tcheckbox_theme.lightCheckboxTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.purple,
    textTheme: Ttexttheme.darktextTheme,
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: TelevatedButtonTheme.darkButtonTheme,
    inputDecorationTheme: TtextFormFieldTheme.darkInputDecorationTheme,
    appBarTheme: Tappbar_theme.darkAppBarTheme,
    bottomSheetTheme: Tbottom_sheet_theme.darkBottomSheetTheme,
    outlinedButtonTheme: Toutlined_button_theme.darkInputDecorationTheme,
    chipTheme: Tchip_theme.darkChipTheme,
    checkboxTheme: Tcheckbox_theme.darkCheckboxTheme,
  );
}
