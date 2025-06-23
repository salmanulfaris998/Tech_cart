import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/features/personalization/screens/settings/settings.dart';
import 'package:tech_cart/features/shop/screens/home/home.dart';
import 'package:tech_cart/features/shop/screens/store/store.dart';
import 'package:tech_cart/features/shop/screens/wishlist/wishlist.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

class NavigationMenu extends HookWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final darkmode = THelperFunctions.isdarkmod(context);
    final counter = useState(0);
    final containers = useState(Listprov.getContainers());

    return Scaffold(
      bottomNavigationBar: NavigationBar(
          height: 65,
          elevation: 0,
          backgroundColor: darkmode ? Tcolors.black : Tcolors.white,
          indicatorColor: darkmode ? Tcolors.white : Tcolors.black,
          selectedIndex: counter.value,
          onDestinationSelected: (index) => counter.value = index,
          destinations: [
            NavigationDestination(
                icon: Icon(
                  Iconsax.home,
                  color: counter.value == 0
                      ? (darkmode ? Colors.black : Colors.white)
                      : (darkmode ? Colors.grey : Colors.grey),
                ),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(
                  Iconsax.shop,
                  color: counter.value == 1
                      ? (darkmode ? Colors.black : Colors.white)
                      : (darkmode ? Colors.grey : Colors.grey),
                ),
                label: 'Store'),
            NavigationDestination(
                icon: Icon(
                  Iconsax.heart,
                  color: counter.value == 2
                      ? (darkmode ? Colors.black : Colors.white)
                      : (darkmode ? Colors.grey : Colors.grey),
                ),
                label: 'Wishlist'),
            NavigationDestination(
                icon: Icon(
                  Iconsax.user,
                  color: counter.value == 3
                      ? (darkmode ? Colors.black : Colors.white)
                      : (darkmode ? Colors.grey : Colors.grey),
                ),
                label: 'Profile'),
          ]),
      body: containers.value[counter.value],
    );
  }
}

class Listprov {
  static List<Widget> getContainers() {
    return [
      const Homescreen(),
      const PopularStore(),
      const Favorite(),
      const SettingScreen()
    ];
  }
}
