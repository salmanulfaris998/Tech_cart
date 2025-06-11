import 'package:flutter/cupertino.dart';
import 'package:tech_cart/common/widgets/curved_edges/curved_edges.dart';

class TcurvedWidget extends StatelessWidget {
  const TcurvedWidget({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCustomCurvedEdges(), child: child);
  }
}
