import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_cart/common/widgets/custom_shapes/containers/Troundedcontainer.dart';
import 'package:tech_cart/common/widgets/text/section_heading.dart';
import 'package:tech_cart/features/shop/screens/product_detailes/widget/choice_clip.dart';
import 'package:tech_cart/features/shop/screens/product_detailes/widget/product_price_text.dart';
import 'package:tech_cart/features/shop/screens/product_detailes/widget/product_title_text.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

class TproductAttributs extends StatelessWidget {
  const TproductAttributs({super.key});

  @override
  Widget build(BuildContext context) {
    final darkmode = THelperFunctions.isdarkmod(context);
    return Column(
      children: [
        TcurvedCOntainer(
          padding: EdgeInsets.all(Tsize.md),
          backgroundColor: darkmode ? Tcolors.darkGrey : Tcolors.grey,
          child: Column(
            children: [
              //title and price, stock
              Row(
                children: [
                  Tsectionheading(
                    title: "Variation",
                    showactionbutton: false,
                  ),
                  SizedBox(
                    width: Tsize.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TproducttitleText(
                            Title: 'Price',
                            smallsize: true,
                          ),
                          SizedBox(
                            width: Tsize.spaceBtwItems,
                          ),
                          //actual praice
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: Tsize.spaceBtwItems,
                          ),
                          //sale price
                          Tproducttext(price: '20')
                        ],
                      ),
                      Row(
                        children: [
                          TproducttitleText(
                            Title: 'Price',
                            smallsize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              TproducttitleText(
                Title:
                    'this description of the product and it can go up to max 4 line',
                smallsize: true,
                maxline: 4,
              )
            ],
          ),
        ),
        SizedBox(
          height: Tsize.spaceBtwItems,
        ),
        Column(
          children: [
            Wrap(
              spacing: 8,
              children: [
                Tsectionheading(title: 'Colors'),
                TchoiceClip(
                  text: 'white',
                  selected: true,
                  onselected: (value) {},
                ),
                TchoiceClip(
                    text: 'black', selected: false, onselected: (value) {}),
                TchoiceClip(
                    text: 'rosegold', selected: false, onselected: (value) {}),
                TchoiceClip(
                    text: 'grey', selected: true, onselected: (value) {}),
              ],
            )
          ],
        ),
        SizedBox(
          height: Tsize.spaceBtwItems,
        ),
        Column(
          children: [
            Wrap(
              spacing: 8,
              children: [
                Tsectionheading(title: 'Storage'),
                TchoiceClip(
                  text: '128 GB',
                  selected: true,
                  onselected: (value) {},
                ),
                TchoiceClip(
                    text: '256 GB', selected: false, onselected: (value) {}),
                TchoiceClip(
                    text: '512 GB', selected: false, onselected: (value) {}),
              ],
            )
          ],
        )
      ],
    );
  }
}
