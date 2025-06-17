import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_cart/common/widgets/custom_shapes/containers/Troundedcontainer.dart';
import 'package:tech_cart/common/widgets/layouts/grid_layouts.dart';
import 'package:tech_cart/common/widgets/product/brandshowcase.dart';
import 'package:tech_cart/common/widgets/product/product_card/product_card_vertical.dart';
import 'package:tech_cart/common/widgets/text/section_heading.dart';
import 'package:tech_cart/utils/constants/enums.dart';
import 'package:tech_cart/utils/constants/image_strings.dart';
import 'package:tech_cart/utils/constants/sizes.dart';

import '../../image_widget/circularimage.dart' show Tcircularimage;

class Bestproductcard extends StatelessWidget {
  Bestproductcard({
    super.key,
    required this.brandName,
    required this.brandImage,
    required this.productImages,
    required this.productCount,
  });
  final String brandName;
  final String brandImage;
  final List<String> productImages;
  final int productCount;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(Tsize.defaultSpace),
      child: Column(
        children: [
          // First showcase - Apple
          BrandShowcaseWidget(
            brandName: brandName,
            brandImage: brandImage,
            productImages: productImages,
            productCount: productCount,
            onBrandTap: () {
              print('$brandName brand tapped');
            },
            onProductTap: (index) {
              print('$brandName product $index tapped');
            },
          ),
          SizedBox(
            height: Tsize.spaceBtwItems,
          ),
          // Second showcase - Samsung
          BrandShowcaseWidget(
            brandName: 'Samsung',
            brandImage: Timage.samsung,
            productImages: [
              Timage.i16pro,
              Timage.i13,
              Timage.iphone
            ], // You can replace with Samsung product images
            productCount: 25,
            onBrandTap: () {
              print('Samsung brand tapped');
            },
            onProductTap: (index) {
              print('Samsung product $index tapped');
            },
          ),
          Tsectionheading(
            title: 'You might like',
            onPress: () {},
          ),
          SizedBox(
            height: Tsize.spaceBtwItems,
          ),
          Tgridlayaout(
              itemCount: 4, itemBuilder: (_, index) => TproductCardVertical())
        ],
      ),
    );
  }
}

// Reusable Brand Grid Item for the header section
class BrandGridItem extends StatelessWidget {
  const BrandGridItem({
    super.key,
    required this.brandName,
    required this.brandImage,
    required this.productCount,
    this.onTap,
    this.isNetworkImage = false,
  });

  final String brandName;
  final String brandImage;
  final int productCount;
  final VoidCallback? onTap;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TcurvedCOntainer(
        padding: const EdgeInsets.all(Tsize.sm),
        showBorder: true,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // Image
            Tcircularimage(
              isnetworkimage: isNetworkImage,
              image: brandImage,
            ),
            SizedBox(width: Tsize.spaceBtwItems / 2),
            // Text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TBrandTitleWithVerifiedIcon(
                    title: brandName,
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '$productCount products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
