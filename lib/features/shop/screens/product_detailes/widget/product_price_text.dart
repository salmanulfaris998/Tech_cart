import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tproducttext extends StatelessWidget {
  const Tproducttext(
      {super.key,
      this.currencysign = '\$',
      required this.price,
      this.maxline = 1,
      this.islarge = false,
      this.lineThroug = false});
  final String currencysign, price;
  final int maxline;
  final bool islarge;
  final bool lineThroug;
  @override
  Widget build(BuildContext context) {
    return Text(currencysign + price,
        maxLines: maxline,
        overflow: TextOverflow.ellipsis,
        style: islarge
            ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: lineThroug ? TextDecoration.lineThrough : null)
            : Theme.of(context).textTheme.titleLarge!.apply(
                decoration: lineThroug ? TextDecoration.lineThrough : null));
  }
}
