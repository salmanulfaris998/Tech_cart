import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_cart/common/widgets/custom_shapes/containers/Troundedcontainer.dart';
import 'package:tech_cart/common/widgets/image_widget/circularimage.dart';
import 'package:tech_cart/common/widgets/product/product_card/product_card_vertical.dart';
import 'package:tech_cart/features/shop/screens/product_detailes/widget/product_price_text.dart';
import 'package:tech_cart/features/shop/screens/product_detailes/widget/product_title_text.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/enums.dart';
import 'package:tech_cart/utils/constants/image_strings.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

class Tproductmetadata extends StatelessWidget {
  const Tproductmetadata({super.key});

  @override
  Widget build(BuildContext context) {
    final darkmod = THelperFunctions.isdarkmod(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //price&salepraceing
        Row(
          children: [
            TcurvedCOntainer(
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
            SizedBox(
              width: Tsize.spaceBtwItems,
            ),
            //price
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            SizedBox(
              width: Tsize.spaceBtwItems,
            ),
            Tproducttext(price: '175')
          ],
        ),
        SizedBox(
          height: Tsize.spaceBtwItems / 1.5,
        ),
        //title
        TproducttitleText(Title: "Iphone 16 pro"),
        //stock status
        SizedBox(
          height: Tsize.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            TproducttitleText(Title: "Status"),
            SizedBox(
              width: Tsize.spaceBtwItems,
            ),
            Text(
              'In stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        SizedBox(
          height: Tsize.spaceBtwItems / 1.5,
        ),
        //brand
        Row(
          children: [
            Tcircularimage(
              image: Timage.apple,
              isnetworkimage: false,
              width: 32,
              height: 32,
              overlaycolor: darkmod ? Tcolors.white : Tcolors.black,
            ),
            TBrandTitleWithVerifiedIcon(
              title: 'Apple',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
