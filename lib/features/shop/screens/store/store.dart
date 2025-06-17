import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/common/widgets/app%20bar/Tabbar.dart';
import 'package:tech_cart/common/widgets/app%20bar/Tappbar.dart';
import 'package:tech_cart/common/widgets/cartwidgets/cart_menu_icons.dart';
import 'package:tech_cart/common/widgets/custom_shapes/containers/Tsearch_container.dart';
import 'package:tech_cart/common/widgets/layouts/grid_layouts.dart';
import 'package:tech_cart/common/widgets/product/product_card/bestproductcard.dart'
    show Bestproductcard, BrandGridItem;

import 'package:tech_cart/common/widgets/text/section_heading.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart' show Timage;

// Updated PopularStore with reusable widgets
class PopularStore extends StatelessWidget {
  const PopularStore({super.key});

  @override
  Widget build(BuildContext context) {
    final darkmode = THelperFunctions.isdarkmod(context);
    List<String> brandimages = [
      Timage.apple,
      Timage.samsung,
      Timage.asuse,
      Timage.canon
    ];
    List<String> brandnames = ['Apple', 'Samsung', 'ASUS', 'Canon'];

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: Tappbar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            Tcartcounter(
                iconColor: darkmode ? Colors.white : Tcolors.black,
                onpressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
            SliverAppBar(
                pinned: true,
                floating: true,
                snap: false,
                automaticallyImplyLeading: false,
                backgroundColor: darkmode ? Tcolors.black : Tcolors.white,
                expandedHeight: 440,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: [
                      const SizedBox(height: Tsize.spaceBtwItems),
                      // Search
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Tsearch_container(
                          darkmode: darkmode,
                          text: 'Search in Store',
                          icon: Iconsax.search_normal,
                          showbackround: true,
                          showborder: true,
                        ),
                      ),
                      const SizedBox(height: Tsize.spaceBtSections),
                      // Brands
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Tsize.spaceBtwItems),
                        child: Tsectionheading(title: 'Featured Brands'),
                      ),
                      const SizedBox(height: Tsize.spaceBtwItems / 2),
                      // Grid of brands
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: Tsize.spaceBtwItems),
                          child: Tgridlayaout(
                            itemCount: 4,
                            mainaxisexent: 80,
                            itemBuilder: (_, index) {
                              return BrandGridItem(
                                brandName: brandnames[index],
                                brandImage: brandimages[index],
                                productCount: 256,
                                onTap: () {
                                  print('Brand ${_getBrandName(index)} tapped');
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: const Tabbarr(tabs: [
                  Tab(child: Text('Smartphones')),
                  Tab(child: Text('Laptops')),
                  Tab(child: Text('Smartwatches')),
                  Tab(child: Text('Gaming')),
                  Tab(child: Text('Camera')),
                  Tab(child: Text('Headphones')),
                ])),
          ],
          body: TabBarView(
            children: [
              // Smartphones Tab - Apple first, Samsung second
              Bestproductcard(
                brandImage: Timage.apple,
                brandName: 'Apple',
                productCount: 12,
                productImages: const [Timage.i16pro, Timage.i13, Timage.iphone],
              ),

              // Laptops Tab - Apple first, Samsung second
              Bestproductcard(
                brandImage: Timage.apple,
                brandName: 'Apple',
                productCount: 12,
                productImages: const [Timage.i16pro, Timage.i13, Timage.iphone],
              ),

              // Smartwatches Tab - Apple first, Samsung second
              Bestproductcard(
                brandImage: Timage.apple,
                brandName: 'Apple',
                productCount: 12,
                productImages: const [Timage.i16pro, Timage.i13, Timage.iphone],
              ),

              // Gaming Tab - Apple first, Samsung second
              Bestproductcard(
                brandImage: Timage.apple,
                brandName: 'Apple',
                productCount: 12,
                productImages: const [Timage.i16pro, Timage.i13, Timage.iphone],
              ),

              // Camera Tab - Apple first, Samsung second
              Bestproductcard(
                brandImage: Timage.apple,
                brandName: 'Apple',
                productCount: 12,
                productImages: const [Timage.i16pro, Timage.i13, Timage.iphone],
              ),

              // Headphones Tab - Apple first, Samsung second
              Bestproductcard(
                brandImage: Timage.apple,
                brandName: 'Apple',
                productCount: 12,
                productImages: const [Timage.i16pro, Timage.i13, Timage.iphone],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getBrandName(int index) {
    const brands = ['Nikon', 'Canon', 'Samsung', 'Apple'];
    return brands[index % brands.length];
  }
}
