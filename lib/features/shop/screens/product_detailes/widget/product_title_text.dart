import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TproducttitleText extends StatelessWidget {
  const TproducttitleText(
      {super.key,
      required this.Title,
      this.smallsize = false,
      this.maxline = 2,
      this.textAlign = TextAlign.left});
  final String Title;
  final bool smallsize;
  final int maxline;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      Title,
      style: smallsize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxline,
      textAlign: textAlign,
    );
  }
}
