import 'package:flutter/material.dart';
import 'package:tech_cart/utils/constants/colorss.dart';

class Tshadow {
  static final Tverticalshadows = BoxShadow(
      color: Tcolors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

  static final Thorizontallshadows = BoxShadow(
      color: Tcolors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
