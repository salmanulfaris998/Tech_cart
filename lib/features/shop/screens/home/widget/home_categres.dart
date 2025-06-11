import 'package:flutter/material.dart';
import 'package:tech_cart/common/widgets/image.text.widget/vertical_image_text.dart';

class ThomeCatagres extends StatelessWidget {
  const ThomeCatagres({
    super.key,
    required this.darkmode,
    required this.popularcatagryWhight,
    required this.popularcatagryText,
  });

  final bool darkmode;
  final List<String> popularcatagryWhight;
  final List<String> popularcatagryText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TverticalimageText(
              darkmode: darkmode,
              popularcatagryWhight: popularcatagryWhight,
              popularcatagryText: popularcatagryText,
              index: index,
            );
          }),
    );
  }
}
