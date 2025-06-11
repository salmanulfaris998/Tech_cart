import 'package:flutter/material.dart';

class Tsectionheading extends StatelessWidget {
  const Tsectionheading({
    super.key,
    this.textcolor,
    this.showactionbutton = true,
    required this.title,
    this.buttontitle = 'View all',
    this.onPress,
  });
  final Color? textcolor;
  final bool showactionbutton;
  final String title, buttontitle;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textcolor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showactionbutton)
          TextButton(onPressed: onPress, child: Text(buttontitle))
      ],
    );
  }
}
