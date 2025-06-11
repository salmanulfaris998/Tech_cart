import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_cart/common/widgets/app%20bar/Tappbar.dart';
import 'package:tech_cart/common/widgets/cartwidgets/cart_menu_icons.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/constants/text_strings.dart';
import 'package:tech_cart/utils/device/device_utility.dart';

class Thomeappbar extends StatelessWidget {
  const Thomeappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Tappbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Tcolors.grey),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Tcolors.grey),
          )
        ],
      ),
      actions: [
        Tcartcounter(
          onpressed: () {},
          iconColor: Tcolors.white,
        ),
      ],
    );
  }
}
