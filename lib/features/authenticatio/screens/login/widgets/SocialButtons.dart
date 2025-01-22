import 'package:flutter/material.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/image_strings.dart';
import 'package:tech_cart/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Tcolors.grey),
              borderRadius: BorderRadius.circular(20)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(Timage.google),
                width: Tsize.icond,
                height: Tsize.icond,
              )),
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Tcolors.grey),
              borderRadius: BorderRadius.circular(20)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(Timage.facebook),
                width: Tsize.icond,
                height: Tsize.icond,
              )),
        )
      ],
    );
  }
}
