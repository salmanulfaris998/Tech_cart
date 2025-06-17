import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_cart/common/widgets/custom_shapes/containers/Troundedcontainer.dart';
import 'package:tech_cart/common/widgets/image_widget/circularimage.dart';
import 'package:tech_cart/common/widgets/product/product_card/product_card_vertical.dart'
    show TBrandTitleWithVerifiedIcon;
import 'package:tech_cart/utils/constants/enums.dart';
import 'package:tech_cart/utils/constants/sizes.dart';

class BrandShowcaseWidget extends StatelessWidget {
  const BrandShowcaseWidget({
    super.key,
    required this.brandName,
    required this.brandImage,
    required this.productImages,
    this.productCount,
    this.onBrandTap,
    this.onProductTap,
    this.isNetworkImage = false,
    this.brandTextSize = TextSizes.large,
  });

  final String brandName;
  final String brandImage;
  final List<String> productImages;
  final int? productCount;
  final VoidCallback? onBrandTap;
  final Function(int)? onProductTap;
  final bool isNetworkImage;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: Tsize.spaceBtwItems),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).dividerColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          // Brand Header
          GestureDetector(
            onTap: onBrandTap,
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(Tsize.sm),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Brand Image
                  Tcircularimage(
                    isnetworkimage: isNetworkImage,
                    image: brandImage,
                    width: 56,
                    height: 56,
                  ),
                  const SizedBox(width: Tsize.spaceBtwItems),

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
                        const SizedBox(height: 4),
                        Text(
                          '${productCount ?? productImages.length} products',
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Product Images Row
          if (productImages.isNotEmpty)
            Padding(
              padding:
                  const EdgeInsets.fromLTRB(Tsize.sm, 0, Tsize.sm, Tsize.sm),
              child: Row(
                children: productImages.asMap().entries.map((entry) {
                  int index = entry.key;
                  String image = entry.value;

                  return Expanded(
                    child: Container(
                      height: 120, // Increased height for better visibility
                      margin: EdgeInsets.only(
                        right: index < productImages.length - 1 ? Tsize.sm : 0,
                      ),
                      child: GestureDetector(
                        onTap: () => onProductTap?.call(index),
                        child: TcurvedCOntainer(
                          backgroundColor:
                              Theme.of(context).colorScheme.surface,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: isNetworkImage
                                ? Image.network(
                                    image,
                                    fit: BoxFit
                                        .contain, // Changed from cover to contain
                                    width: double.infinity,
                                    height: double.infinity,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            const Icon(Icons.error),
                                  )
                                : Image.asset(
                                    image,
                                    fit: BoxFit
                                        .contain, // Changed from cover to contain
                                    width: double.infinity,
                                    height: double.infinity,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            const Icon(Icons.error),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
