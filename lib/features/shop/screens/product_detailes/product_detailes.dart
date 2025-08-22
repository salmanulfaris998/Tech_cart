import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:tech_cart/common/widgets/app%20bar/Tappbar.dart';
import 'package:tech_cart/common/widgets/curved_edges/curvedWidgets.dart';
import 'package:tech_cart/common/widgets/icon/icon_widget.dart';
import 'package:tech_cart/common/widgets/image_widget/TRoundedImage.dart';
import 'package:tech_cart/common/widgets/image_widget/circularimage.dart';
import 'package:tech_cart/common/widgets/image_widget/curvedimage.dart';
import 'package:tech_cart/common/widgets/text/section_heading.dart';
import 'package:tech_cart/features/shop/screens/product_detailes/widget/Bottom_addto_cart.dart';
import 'package:tech_cart/features/shop/screens/product_detailes/widget/prodect_detaile_image_slider.dart';
import 'package:tech_cart/features/shop/screens/product_detailes/widget/product_atrributes.dart';
import 'package:tech_cart/features/shop/screens/product_detailes/widget/product_metadata.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/image_strings.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';
import 'widget/rating_share_widget.dart';

class ProductDetailesScreen extends StatelessWidget {
  ProductDetailesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkmode = THelperFunctions.isdarkmod(context);
    return Scaffold(
      bottomNavigationBar: Tbottomaddtocart(),
      body: SingleChildScrollView(
        child: Column(
          // product image slide section
          children: [
            TprodectImageSlider(),
            //product detailes section
            Padding(
              padding: const EdgeInsets.only(
                right: Tsize.defaultSpace,
                left: Tsize.defaultSpace,
                bottom: Tsize.defaultSpace,
              ),
              child: Column(
                children: [
                  /// - Rating & Share
                  const TrateingandShare(),

                  /// - Price, Title, Stock, & Brand
                  Tproductmetadata(),

                  /// -- Attributes
                  TproductAttributs(),

                  /// -- Checkout Button
                  SizedBox(
                    height: Tsize.spaceBtSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Tcolors.primary,
                        ),
                        child: Text(
                          'Checkout',
                        )),
                  ),
                  SizedBox(
                    height: Tsize.spaceBtSections,
                  ),
                  Tsectionheading(
                    title: 'Description',
                    showactionbutton: false,
                  ),
                  SizedBox(
                    height: Tsize.spaceBtwItems,
                  ),

                  /// - Description
                  ReadMoreText(
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'less',
                      moreStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      'Introducing the all-new iPhone 16 Pro with an advanced A18 Bionic chip, a stunning 6.7-inch ProMotion OLED display, and an upgraded triple-lens camera system for unmatched photography and videography. The iPhone 16 Pro features a titanium frame, improved battery life, and supports up to 2TB of storage, making it the most powerful iPhone ever built. With iOS 19 and revolutionary AI integration, experience a smarter, faster, and more intuitive device in your hands.Available in four premium finishes including Graphite Black and Deep Blue.')

                  /// - Reviews
                  ,
                  SizedBox(
                    height: Tsize.spaceBtSections,
                  ),
                  Divider(),
                  SizedBox(
                    height: Tsize.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Tsectionheading(
                        title: 'Reviews(199)',
                        showactionbutton: true,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Iconsax.arrow_right,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: Tsize.spaceBtSections,
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
