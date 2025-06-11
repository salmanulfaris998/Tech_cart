import 'package:flutter/material.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/sizes.dart';

class TverticalimageText extends StatelessWidget {
  const TverticalimageText({
    super.key,
    required this.darkmode,
    required this.popularcatagryWhight,
    required this.popularcatagryText,
    required this.index,
  });
  final int index;
  final bool darkmode;
  final List<String> popularcatagryWhight;

  final List<String> popularcatagryText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: Tsize.spaceBtwItems),
      child: Column(
        children: [
          Container(
            child: Center(
              child: darkmode
                  ? GestureDetector(
                      onTap: () {
                        // Handle tap here
                        print("Category tapped: ${popularcatagryText[index]}");
                      },
                      child: SizedBox(
                        width: 35,
                        height: 35,
                        child: Image(
                          image: AssetImage(popularcatagryWhight[index]),
                          //  fit: BoxFit.cover,
                          color: Tcolors.white,
                        ),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        // Handle tap here
                        print(
                            "Category tapped: ${popularcatagryWhight[index]}");
                      },
                      child: SizedBox(
                        width: 35,
                        height: 35,
                        child: Image(
                          image: AssetImage(popularcatagryWhight[index]),
                          //  fit: BoxFit.cover,
                          color: Tcolors.dark,
                        ),
                      ),
                    ),
            ),
            width: 56,
            height: 56,
            padding: EdgeInsets.all(Tsize.sm),
            decoration: BoxDecoration(
                color: darkmode ? Tcolors.black : Tcolors.white,
                borderRadius: BorderRadius.circular(100)),
          ),
          SizedBox(
            height: Tsize.spaceBtwItems / 2,
          ),
          SizedBox(
            width: 55,
            child: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              popularcatagryText[index],
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: Tcolors.white),
            ),
          )
        ],
      ),
    );
  }
}
