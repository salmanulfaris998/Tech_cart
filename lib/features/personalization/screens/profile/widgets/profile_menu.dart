import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Tprofilemenu extends StatelessWidget {
  const Tprofilemenu({
    super.key,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right_34,
    this.onTap,
    this.showIcon = true,
    this.iconSize = 18,
    this.titleFlex = 3,
    this.valueFlex = 5,
  });

  final String title;
  final String value;
  final IconData icon;
  final VoidCallback? onTap;
  final bool showIcon;
  final double iconSize;
  final int titleFlex;
  final int valueFlex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Expanded(
              flex: titleFlex,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: valueFlex,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (showIcon)
              Expanded(
                child: Icon(
                  icon,
                  size: iconSize,
                ),
              )
          ],
        ),
      ),
    );
  }
}
