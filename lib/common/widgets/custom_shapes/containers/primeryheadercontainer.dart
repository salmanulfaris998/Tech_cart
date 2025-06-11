import 'package:flutter/cupertino.dart';
import 'package:tech_cart/common/widgets/curved_edges/curvedWidgets.dart';
import 'package:tech_cart/common/widgets/custom_shapes/containers/container_circle.dart';
import 'package:tech_cart/utils/constants/colorss.dart';

class TprimeryHeaderwidget extends StatelessWidget {
  const TprimeryHeaderwidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TcurvedWidget(
      child: Container(
        color: Tcolors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              const Positioned(
                top: -150,
                right: -250,
                child: Tcircle(
                  width: 400,
                  height: 400,
                  redius: 400,
                  paading: 0,
                  backgroundcolor: Tcolors.white,
                ),
              ),
              const Positioned(
                top: 100,
                right: -300,
                child: Tcircle(
                  width: 400,
                  height: 400,
                  redius: 400,
                  paading: 0,
                  backgroundcolor: Tcolors.white,
                ),
              ),
              // ✅ Add your child here
              Positioned.fill(child: child),
            ],
          ),
        ),
      ),
    );
  }
}
