import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/common/widgets/app%20bar/Tappbar.dart';
import 'package:tech_cart/common/widgets/curved_edges/curvedWidgets.dart';
import 'package:tech_cart/common/widgets/icon/icon_widget.dart';
import 'package:tech_cart/common/widgets/image_widget/TRoundedImage.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/image_strings.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

class TprodectImageSlider extends StatelessWidget {
  const TprodectImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkmode = THelperFunctions.isdarkmod(context);
    return TcurvedWidget(
      child: Container(
        color: darkmode ? Tcolors.darkerGrey : Tcolors.light,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                //main large image

                const SizedBox(
                    height: 400,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: Tsize.productImageRadius * 2,
                          right: Tsize.productImageRadius * 2,
                          bottom: Tsize.productImageRadius * 2,
                          top: Tsize.productImageRadius * 2),
                      child: Center(
                          child: Image(image: AssetImage(Timage.i16pro))),
                    )),
                //sliderimage
                Positioned(
                  right: 0,
                  bottom: 30,
                  left: Tsize.defaultSpace,
                  child: SizedBox(
                    height: 80,
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: const AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (_, __) => const SizedBox(
                              width: Tsize.spaceBtwItems,
                            ),
                        itemCount: 4,
                        itemBuilder: (_, index) => TRoundedImage(
                              imageUrl: Timage.i16pro,
                              width: 80,
                              backgroundColor:
                                  darkmode ? Tcolors.dark : Tcolors.white,
                              padding: const EdgeInsets.all(Tsize.sm),
                              border: Border.all(color: Tcolors.primary),
                            )),
                  ),
                ),
                //appbaricons
                const Tappbar(
                  showbackarrow: true,
                  actions: [
                    Tcircular_icon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
