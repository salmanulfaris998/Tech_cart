import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/common/widgets/app%20bar/Tappbar.dart';
import 'package:tech_cart/common/widgets/cartwidgets/cart_menu_icons.dart';
import 'package:tech_cart/common/widgets/curved_edges/curvedWidgets.dart';
import 'package:tech_cart/common/widgets/curved_edges/curved_edges.dart';
import 'package:tech_cart/common/widgets/custom_shapes/containers/Tsearch_container.dart';
import 'package:tech_cart/common/widgets/custom_shapes/containers/container_circle.dart';
import 'package:tech_cart/common/widgets/custom_shapes/containers/primeryheadercontainer.dart';
import 'package:tech_cart/common/widgets/custom_shapes/small_circle.dart';
import 'package:tech_cart/common/widgets/image_widget/curvedimage.dart';
import 'package:tech_cart/common/widgets/image.text.widget/vertical_image_text.dart';
import 'package:tech_cart/common/widgets/layouts/grid_layouts.dart';
import 'package:tech_cart/common/widgets/product/product_card/product_card_vertical.dart';
import 'package:tech_cart/common/widgets/text/section_heading.dart';
import 'package:tech_cart/features/shop/screens/home/widget/home_categres.dart';
import 'package:tech_cart/features/shop/screens/home/widget/homeappbare.dart';
import 'package:tech_cart/features/shop/screens/home/widget/promoslider.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/image_strings.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/constants/text_strings.dart';
import 'package:tech_cart/utils/device/device_utility.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkmode = THelperFunctions.isdarkmod(context);
    List<String> popularcatagryWhight = [
      Timage.camera_white,
      Timage.lap_white,
      Timage.speeker_white,
      Timage.watch_white,
      Timage.game_white,
      Timage.phone_white,
    ];

    List<String> popularcatagryText = [
      ' Camera  ',
      '  Laptop',
      '  Sound',
      '  Watch',
      '  Games',
      '  Phone'
    ];
    return Scaffold(
        // appBar: Tappbar(),
        body: SingleChildScrollView(
      child: Column(
        children: [
          TprimeryHeaderwidget(
              child: Column(
            children: [
              const Thomeappbar(),
              SizedBox(
                height: Tsize.spaceBtSections,
              ),
              Tsearch_container(
                darkmode: darkmode,
                text: 'Search in Store',
                icon: Iconsax.search_normal,
                showbackround: true,
                showborder: true,
              ),
              SizedBox(
                height: Tsize.spaceBtSections,
              ),
              Padding(
                padding: EdgeInsets.only(left: Tsize.defaultSpace),
                child: Column(
                  children: [
                    Tsectionheading(
                      textcolor: darkmode ? Tcolors.dark : Tcolors.white,
                      title: 'Popular Categres',
                      showactionbutton: false,
                    ),
                    SizedBox(
                      height: Tsize.spaceBtwItems,
                    ),
                    ThomeCatagres(
                        darkmode: darkmode,
                        popularcatagryWhight: popularcatagryWhight,
                        popularcatagryText: popularcatagryText),
                  ],
                ),
              )
            ],
          )),
          Padding(
              padding: const EdgeInsets.all(Tsize.defaultSpace),
              child: Column(
                children: [
                  Tpromoslider(
                    banners: [
                      Timage.bestdevices,
                      Timage.watch,
                      Timage.headphone
                    ],
                  ),
                  SizedBox(
                    height: Tsize.spaceBtwItems,
                  ),
                  Tsectionheading(
                    title: 'Popular products',
                    onPress: () {},
                  ),
                  const SizedBox(
                    height: Tsize.spaceBtwItems,
                  ),
                  Tgridlayaout(
                    itemBuilder: (_, ndex) => const TproductCardVertical(),
                    itemCount: 2,
                  )
                ],
              ))
        ],
      ),
    ));
  }
}
