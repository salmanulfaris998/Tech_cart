import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/common/styles/shadows.dart';
import 'package:tech_cart/common/widgets/custom_shapes/containers/Troundedcontainer.dart';
import 'package:tech_cart/common/widgets/icon/icon_widget.dart';
import 'package:tech_cart/common/widgets/image_widget/curvedimage.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
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
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [Tshadow.Tverticalshadows],
            borderRadius: BorderRadius.circular(Tsize.productImageRadius),
            color: dark ? Tcolors.black : Tcolors.lightGrey),
        child: Column(
          children: [
            //thumpnail
            TcurvedCOntainer(
              height: 200,
              padding: EdgeInsets.all(Tsize.sm),
              backgroundColor: dark ? Tcolors.dark : Tcolors.softGrey,
              child: Stack(
                children: [
                  BannerImages(
                    images: Timage.camera_white,
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
              padding: EdgeInsets.only(
                left: Tsize.sm,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Tsize.spaceBtwItems / 2,
                  ),
                  Text(
                    'data',
                    style: Theme.of(context).textTheme.titleSmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: Tsize.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      SizedBox(
                        width: Tsize.xs,
                      ),
                      Icon(
                        Iconsax.verify5,
                        color: Tcolors.primary,
                        size: Tsize.iconSm,
                      )
                    ],
                  ),
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
