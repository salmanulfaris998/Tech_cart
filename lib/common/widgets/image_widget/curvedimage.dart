import 'package:flutter/material.dart';

class BannerImages extends StatelessWidget {
  const BannerImages({
    super.key,
    required this.images,
    this.width,
    this.height,
    required this.imageradius,
    this.backround = Colors.black, // Match with your app background
    this.fit = BoxFit.cover, // Ensures image fills fully
    this.padding,
    this.onpress,
    this.isnetworkimagE = false,
    this.borderradius = 0,
  });

  final String images;
  final double? width, height;
  final bool imageradius;
  final Color backround;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onpress;
  final bool isnetworkimagE;
  final double borderradius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: backround,
          borderRadius: BorderRadius.circular(borderradius),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(imageradius ? borderradius : 18),
          child: Image(
            image: isnetworkimagE
                ? NetworkImage(images)
                : AssetImage(images) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
