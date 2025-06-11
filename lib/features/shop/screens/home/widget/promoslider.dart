import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tech_cart/common/widgets/custom_shapes/small_circle.dart';
import 'package:tech_cart/common/widgets/image_widget/curvedimage.dart';
import 'package:tech_cart/features/shop/controllers/home_controller.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/image_strings.dart';
import 'package:tech_cart/utils/constants/sizes.dart';

class Tpromoslider extends StatelessWidget {
  Tpromoslider({
    super.key,
    required this.banners,
  });
  final List<String> banners;
  final Controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, reason) =>
                  Controller.updateindicator(index),
            ),
            items: banners
                .map((url) => BannerImages(
                      images: url,
                      backround: Theme.of(context).scaffoldBackgroundColor,
                      imageradius: false,
                    ))
                .toList()),
        const SizedBox(
          height: Tsize.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  Small_circle(
                    color: Controller.caruscurentindex.value == i
                        ? Tcolors.primary
                        : Tcolors.grey,
                    width: 18,
                    height: 6,
                    margin: EdgeInsets.only(right: 10),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
