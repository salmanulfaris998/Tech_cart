import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/common/widgets/app%20bar/Tappbar.dart';
import 'package:tech_cart/common/widgets/icon/icon_widget.dart';
import 'package:tech_cart/common/widgets/layouts/grid_layouts.dart';
import 'package:tech_cart/common/widgets/product/product_card/product_card_vertical.dart';
import 'package:tech_cart/features/shop/screens/home/home.dart';
import 'package:tech_cart/utils/constants/sizes.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    // You can replace this with your actual wishlist logic
    // For example: final wishlistItems = WishlistController.to.items;
    // For now, I'm using a simple boolean to demonstrate
    final bool hasWishlistItems =
        true; // Change this to false to see empty state
    final int wishlistItemCount =
        hasWishlistItems ? 0 : 0; // Your actual item count

    return Scaffold(
      appBar: Tappbar(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          Tcircular_icon(
            icon: Iconsax.add,
            onpressed: () => Get.to(() => Homescreen()),
          )
        ],
      ),
      body: wishlistItemCount > 0
          ? SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(Tsize.defaultSpace),
                child: Column(
                  children: [
                    Tgridlayaout(
                      itemCount: wishlistItemCount,
                      itemBuilder: (_, index) => TproductCardVertical(),
                    )
                  ],
                ),
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Iconsax.heart,
                    size: 100,
                    color: Colors.grey[300],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Your Wishlist is Empty',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Add items to your wishlist to see them here',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
    );
  }
}

// Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Iconsax.heart,
//               size: 100,
//               color: Colors.grey[300],
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Your Wishlist is Empty',
//               style: Theme.of(context).textTheme.headlineSmall,
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Add items to your wishlist to see them here',
//               style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                     color: Colors.grey[600],
//                   ),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
