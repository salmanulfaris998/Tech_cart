import 'package:flutter/material.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/device/device_utility.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

class Tabbarr extends StatelessWidget implements PreferredSizeWidget {
  const Tabbarr({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isdarkmod(context);
    return Material(
      color: dark ? Tcolors.black : Tcolors.white,
      child: Container(
        alignment: Alignment.centerLeft,
        child: TabBar(
          tabs: tabs,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          indicatorColor: Tcolors.primary,
          unselectedLabelColor: Tcolors.darkerGrey,
          labelColor: dark ? Tcolors.white : Tcolors.primary,
          labelPadding: const EdgeInsets.symmetric(horizontal: 16.0),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
