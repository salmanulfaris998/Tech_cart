import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/common/widgets/image_widget/circularimage.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/constants/image_strings.dart';

class TuserProfileTile extends StatelessWidget {
  const TuserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Tcircularimage(
        image: Timage.user,
        isnetworkimage: false,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Salman',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: Tcolors.white),
      ),
      subtitle: Text(
        'Salmanghss@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: Tcolors.white),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.edit,
            color: Theme.of(context).scaffoldBackgroundColor,
          )),
    );
  }
}
