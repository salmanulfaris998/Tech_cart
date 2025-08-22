import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tech_cart/common/widgets/app%20bar/Tappbar.dart';
import 'package:tech_cart/common/widgets/image_widget/circularimage.dart';
import 'package:tech_cart/common/widgets/text/section_heading.dart';
import 'package:tech_cart/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:tech_cart/utils/constants/image_strings.dart';
import 'package:tech_cart/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tappbar(
        title: Text('Profile'),
        showbackarrow: true,
      ),
      //body

      body: SingleChildScrollView(
        padding: EdgeInsets.all(Tsize.defaultSpace),
        child: Column(
          children: [
            //profile pic
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Tcircularimage(
                    image: Timage.user,
                    isnetworkimage: false,
                    width: 80,
                    height: 80,
                    padding: 0,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text('change profile picture'))
                ],
              ),
            ),
            //detailes
            SizedBox(
              height: Tsize.spaceBtwItems / 2,
            ),
            const Divider(),
            SizedBox(
              height: Tsize.spaceBtwItems,
            ),
            Tsectionheading(
              title: 'Profile Information',
              showactionbutton: false,
            ),
            SizedBox(
              height: Tsize.spaceBtwItems,
            ),
            Tprofilemenu(
              title: 'Name',
              value: 'salman',
              onTap: () {},
            ),
            Tprofilemenu(
              title: 'Username',
              value: 'salman_dev',
              onTap: () {},
            ),
            SizedBox(
              height: Tsize.spaceBtwItems,
            ),
            Divider(),
            SizedBox(
              height: Tsize.spaceBtwItems,
            ),
            Tsectionheading(
              title: 'Personal Information',
              showactionbutton: false,
            ),
            SizedBox(
              height: Tsize.spaceBtwItems,
            ),

            Tprofilemenu(
              title: 'User ID',
              value: '45689',
              onTap: () {},
              icon: Iconsax.copy,
            ),

            Tprofilemenu(
              title: 'E-mail',
              value: 'salmanghss@gmail.com',
              onTap: () {},
            ),

            Tprofilemenu(
              title: 'Phone Number',
              value: '+92-317-8059555',
              onTap: () {},
            ),

            Tprofilemenu(
              title: 'Gender',
              value: 'Male',
              onTap: () {},
            ),

            Tprofilemenu(
              title: 'Date of Birth',
              value: '23 Oct, 1994',
              onTap: () {},
            ),
            SizedBox(
              height: Tsize.spaceBtwItems,
            ),
            Divider(),
            TextButton(
                onPressed: () {},
                child: Text(
                  'close Account',
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ))
          ],
        ),
      ),
    );
  }
}
