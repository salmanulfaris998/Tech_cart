import 'package:flutter/material.dart';
import 'package:tech_cart/common/widgets/custom_shapes/containers/Troundedcontainer.dart';
import 'package:tech_cart/common/widgets/image_widget/circularimage.dart';
import 'package:tech_cart/common/widgets/product/product_card/product_card_vertical.dart';
import 'package:tech_cart/utils/constants/enums.dart' show TextSizes;
import 'package:tech_cart/utils/constants/sizes.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    required this.brandName,
    required this.brandImage,
    required this.productCount,
    this.onTap,
    this.isNetworkImage = false,
    this.height = 100,
    this.showBorder = true,
    this.backgroundColor = Colors.transparent,
    this.brandTextSize = TextSizes.large,
  });

  final String brandName;
  final String brandImage;
  final int productCount;
  final VoidCallback? onTap;
  final bool isNetworkImage;
  final double height;
  final bool showBorder;
  final Color backgroundColor;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TcurvedCOntainer(
        height: height,
        padding: const EdgeInsets.all(Tsize.sm),
        showBorder: showBorder,
        backgroundColor: backgroundColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Brand Image
            Tcircularimage(
              isnetworkimage: isNetworkImage,
              image: brandImage,
            ),
            SizedBox(width: Tsize.spaceBtwItems / 2),

            // Brand Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TBrandTitleWithVerifiedIcon(
                    title: brandName,
                    brandTextSize: brandTextSize,
                  ),
                  Text(
                    '$productCount products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
