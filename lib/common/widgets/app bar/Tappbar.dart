import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/constants/text_strings.dart';
import 'package:tech_cart/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class Tappbar extends StatelessWidget implements PreferredSizeWidget {
  const Tappbar({
    super.key,
    this.title,
    this.showbackarrow = false,
    this.leadingicon,
    this.actions,
    this.leadingonpress,
  });

  final Widget? title;
  final bool showbackarrow;
  final IconData? leadingicon;
  final List<Widget>? actions;
  final VoidCallback? leadingonpress;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: Tsize.md),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: showbackarrow
              ? IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Iconsax.arrow_left))
              : leadingicon != null
                  ? IconButton(
                      onPressed: leadingonpress,
                      icon: const Icon(Iconsax.arrow_left))
                  : null,
          title: title,
          actions: actions,
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
