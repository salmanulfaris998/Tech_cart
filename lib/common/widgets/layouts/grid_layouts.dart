import 'package:flutter/material.dart';
import 'package:tech_cart/common/widgets/product/product_card/product_card_vertical.dart';
import 'package:tech_cart/utils/constants/sizes.dart';

class Tgridlayaout extends StatelessWidget {
  const Tgridlayaout({
    super.key,
    required this.itemCount,
    this.mainaxisexent = 296,
    required this.itemBuilder,
  });
  final int itemCount;
  final double? mainaxisexent;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        itemCount: itemCount,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: Tsize.gridViewSpacing,
            crossAxisSpacing: Tsize.gridViewSpacing,
            mainAxisExtent: mainaxisexent),
        itemBuilder: itemBuilder);
  }
}
