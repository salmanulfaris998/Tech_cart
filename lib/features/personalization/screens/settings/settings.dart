import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/common/widgets/app%20bar/Tappbar.dart';
import 'package:tech_cart/common/widgets/custom_shapes/containers/primeryheadercontainer.dart';
import 'package:tech_cart/common/widgets/image_widget/circularimage.dart';
import 'package:tech_cart/common/widgets/list_tiles/settings_menu_TILE.dart';
import 'package:tech_cart/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:tech_cart/common/widgets/text/section_heading.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/image_strings.dart';
import 'package:tech_cart/utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Sticky Blue Header
          TprimeryHeaderwidget(
            height: 230,
            child: Column(
              children: [
                //appbar
                Tappbar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: Tcolors.white),
                  ),
                ),
                //user profile card
                const TuserProfileTile()
              ],
            ),
          ),

          // Scrollable White Content
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(Tsize.defaultSpace),
                child: Column(
                  children: [
                    Tsectionheading(
                      title: "Account Settings",
                      showactionbutton: false,
                    ),
                    SizedBox(
                      height: Tsize.spaceBtwItems,
                    ),
                    Tsettingsmenutile(
                        icon: Iconsax.safe_home,
                        title: 'My Addresses',
                        subtitle: 'Set shopping delivery address'),
                    Tsettingsmenutile(
                        icon: Iconsax.shopping_cart,
                        title: 'My Cart',
                        subtitle: 'Add, remove products and move to checkout'),
                    Tsettingsmenutile(
                        icon: Iconsax.bag_tick,
                        title: 'My Orders',
                        subtitle: 'In-progress and Completed Orders'),
                    Tsettingsmenutile(
                        icon: Iconsax.bank,
                        title: 'Bank Account',
                        subtitle:
                            'Withdraw balance to registered bank account'),
                    Tsettingsmenutile(
                        icon: Iconsax.discount_shape,
                        title: 'My Coupons',
                        subtitle: 'List of all the discounted coupons'),
                    Tsettingsmenutile(
                        icon: Iconsax.notification,
                        title: 'Notifications',
                        subtitle: 'Set any kind of notification message'),
                    Tsettingsmenutile(
                        icon: Iconsax.security_card,
                        title: 'Account Privacy',
                        subtitle: 'Manage data usage and connected accounts'),

                    //app settings
                    SizedBox(
                      height: Tsize.spaceBtSections,
                    ),
                    Tsectionheading(
                      title: "App Settings",
                      showactionbutton: false,
                    ),
                    SizedBox(
                      height: Tsize.spaceBtwItems,
                    ),
                    Tsettingsmenutile(
                        icon: Iconsax.document_upload,
                        title: 'Load Data',
                        subtitle: 'Upload Data to your Cloud Firebase'),
                    Tsettingsmenutile(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      subtitle: 'Set recommendation based on location',
                      trailing: Switch(value: true, onChanged: (value) {}),
                    ),
                    Tsettingsmenutile(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subtitle: 'Search result is safe for all ages',
                      trailing: Switch(value: false, onChanged: (value) {}),
                    ),
                    Tsettingsmenutile(
                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subtitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged: (value) {}),
                    ),
                    SizedBox(
                      height: Tsize.spaceBtSections,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {}, child: const Text("Logout")),
                    ),
                    SizedBox(
                      height: Tsize.spaceBtSections * 2.5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
