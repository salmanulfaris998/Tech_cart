import 'package:flutter/material.dart';

class Tcheckbox_theme {
  Tcheckbox_theme._();

  /// light

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.white;
        } else {
          return Colors.black;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((state) {
        if (state.contains(MaterialState.selected)) {
          return Colors.blue;
        } else {
          return Colors.transparent;
        }
      }));

  ///dark
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.white;
        } else {
          return Colors.black;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((state) {
        if (state.contains(MaterialState.selected)) {
          return Colors.blue;
        } else {
          return Colors.transparent;
        }
      }));
}
