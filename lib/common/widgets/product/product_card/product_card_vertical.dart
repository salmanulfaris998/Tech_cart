import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/common/styles/shadows.dart';
import 'package:tech_cart/common/widgets/custom_shapes/containers/Troundedcontainer.dart';
import 'package:tech_cart/common/widgets/icon/icon_widget.dart';
import 'package:tech_cart/common/widgets/image_widget/curvedimage.dart';
import 'package:tech_cart/common/widgets/text/brand%20text.dart';
import 'package:tech_cart/features/shop/screens/product_detailes/product_detailes.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/enums.dart';
import 'package:tech_cart/utils/constants/image_strings.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

class TproductCardVertical extends StatelessWidget {
  const TproductCardVertical({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isdarkmod(context);
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetailesScreen()),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [Tshadow.Tverticalshadows],
          borderRadius: BorderRadius.circular(Tsize.productImageRadius),
          color: dark ? Tcolors.black : Tcolors.lightGrey,
          // Option 1: Simple border
          border: Border.all(
            color: dark ? Tcolors.darkGrey : Tcolors.grey,
            width: 1.0,
          ),

          // Option 2: Gradient border (uncomment to use instead of simple border)
          // gradient: LinearGradient(
          //   colors: [
          //     dark ? Tcolors.primary.withOpacity(0.3) : Tcolors.primary.withOpacity(0.1),
          //     dark ? Tcolors.secondary.withOpacity(0.3) : Tcolors.secondary.withOpacity(0.1),
          //   ],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
        ),
        child: Column(
          children: [
            //thumbnail
            TcurvedCOntainer(
              height: 150,
              padding: EdgeInsets.all(Tsize.sm),
              backgroundColor: dark ? Tcolors.dark : Tcolors.softGrey,
              child: Stack(
                children: [
                  BannerImages(
                    backround: Colors.transparent,
                    images:
                        'assets/images/vertical card banner image/macbook.PNG',
                    fit: BoxFit.contain,
                    imageradius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: TcurvedCOntainer(
                      radius: Tsize.md,
                      backgroundColor: Tcolors.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(
                          horizontal: Tsize.sm, vertical: Tsize.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: Tcolors.black),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Tcircular_icon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            //details
            Padding(
              padding: EdgeInsets.only(left: Tsize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Tsize.spaceBtwItems / 2),
                  Text(
                    'data',
                    style: Theme.of(context).textTheme.titleSmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: Tsize.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(title: 'Nike'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$35.5 ',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: dark ? Tcolors.white : Tcolors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(Tsize.cardRadiusid),
                                bottomRight:
                                    Radius.circular(Tsize.productImageRadius))),
                        child: SizedBox(
                          width: Tsize.icong * 1.2,
                          height: Tsize.icong * 1.2,
                          child: Icon(
                            Iconsax.add,
                            color: dark ? Tcolors.dark : Tcolors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Alternative: Using a border with different styles
class TproductCardVerticalWithCustomBorder extends StatelessWidget {
  const TproductCardVerticalWithCustomBorder({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isdarkmod(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [Tshadow.Tverticalshadows],
          borderRadius: BorderRadius.circular(Tsize.productImageRadius),
          color: dark ? Tcolors.black : Tcolors.lightGrey,
          // Custom border with different color based on theme
          border: Border.all(
            color: dark
                ? Tcolors.primary.withOpacity(0.5)
                : Tcolors.primary.withOpacity(0.3),
            width: 1.5,
          ),
        ),
        child: Column(
          children: [
            // ... rest of your existing content
          ],
        ),
      ),
    );
  }
}

// Alternative: Double border effect
class TproductCardVerticalDoubleBorder extends StatelessWidget {
  const TproductCardVerticalDoubleBorder({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isdarkmod(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 182, // Slightly larger for outer border
        padding: EdgeInsets.all(1), // Space for outer border
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Tsize.productImageRadius + 1),
          color: dark
              ? Tcolors.primary.withOpacity(0.3)
              : Tcolors.primary.withOpacity(0.2),
        ),
        child: Container(
          width: 180,
          decoration: BoxDecoration(
            boxShadow: [Tshadow.Tverticalshadows],
            borderRadius: BorderRadius.circular(Tsize.productImageRadius),
            color: dark ? Tcolors.black : Tcolors.lightGrey,
            border: Border.all(
              color: dark ? Tcolors.darkGrey : Tcolors.grey,
              width: 1.0,
            ),
          ),
          child: Column(
            children: [
              // ... rest of your existing content
            ],
          ),
        ),
      ),
    );
  }
}

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = Tcolors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: Tsize.xs),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: Tsize.iconSm,
        ),
      ],
    );
  }
}
