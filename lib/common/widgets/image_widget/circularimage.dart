import 'package:flutter/material.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/image_strings.dart';
import 'package:tech_cart/utils/constants/sizes.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

class Tcircularimage extends StatelessWidget {
  const Tcircularimage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    required this.isnetworkimage,
    this.overlaycolor,
    this.background,
    this.width = 56,
    this.height = 56,
    this.padding = Tsize.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isnetworkimage;
  final Color? overlaycolor;
  final Color? background;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: THelperFunctions.isdarkmod(context)
              ? Tcolors.black
              : Tcolors.white,
          borderRadius: BorderRadius.circular(100)),
      child: Image(
        image: isnetworkimage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color:
            THelperFunctions.isdarkmod(context) ? Tcolors.white : Tcolors.black,
      ),
    );
  }
}
