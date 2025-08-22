import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/common/widgets/icon/icon_widget.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

class Tbottomaddtocart extends StatelessWidget {
  const Tbottomaddtocart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isdarkmod(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Tsize.defaultSpace, vertical: Tsize.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? Tcolors.darkGrey : Tcolors.grey,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Tsize.cardRadiuslg),
            topRight: Radius.circular(Tsize.cardRadiuslg)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Tcircular_icon(
                icon: Iconsax.minus,
                backroundcolor: Tcolors.darkGrey,
                width: 40,
                hight: 40,
                color: Tcolors.white,
              ),
              SizedBox(
                width: Tsize.spaceBtwItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                width: Tsize.spaceBtwItems,
              ),
              Tcircular_icon(
                icon: Iconsax.add,
                backroundcolor: Tcolors.darkGrey,
                width: 40,
                hight: 40,
                color: Tcolors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(Tsize.md),
                  backgroundColor: Tcolors.black,
                  side: BorderSide(color: Tcolors.black)),
              child: Text('Add to Cart'))
        ],
      ),
    );
  }
}
