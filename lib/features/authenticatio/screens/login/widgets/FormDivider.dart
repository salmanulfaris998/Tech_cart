import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tech_cart/utils/constants/colorss.dart';

import 'package:tech_cart/utils/constants/text_strings.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider(
      {super.key, required this.dark, required this.dividertext});

  final bool dark;
  final String dividertext;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? Tcolors.darkGrey : Tcolors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividertext.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? Tcolors.darkGrey : Tcolors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        )
      ],
    );
  }
}
