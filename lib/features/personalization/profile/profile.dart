import 'package:ShopSphere/common/widgets/appbar/appbar.dart';
import 'package:ShopSphere/common/widgets/images/s_circular_image.dart';
import 'package:ShopSphere/common/widgets/texts/section_heading.dart';
import 'package:ShopSphere/features/personalization/profile/widgets/profile_menu.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/image_strings.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const SAppBar(
          showBackArrow: true,
          title: Text("Profile"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(SSizes.defaultSpace),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SCircularImage(
                          imageUrl: SImages.user, width: 100, height: 100),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Change Profile Picture"))
                    ],
                  ),
                ),
                const SizedBox(
                  height: SSizes.spaceBtwItems / 2,
                ),
                const Divider(),
                const SizedBox(height: SSizes.spaceBtwItems),
                const SSectionHeading(
                  title: "Profile Information",
                  showActionButton: false,
                ),
                const SizedBox(height: SSizes.spaceBtwItems),
                SProfileMenu(
                    title: "Name", value: "Ashish Gupta", onPressed: () {}),
                SProfileMenu(
                    title: "User Name",
                    value: "ashishgupta8051",
                    onPressed: () {}),
                const SizedBox(
                  height: SSizes.spaceBtwItems,
                ),
                const Divider(),
                const SizedBox(height: SSizes.spaceBtwItems),
                SProfileMenu(
                    title: "User ID",
                    value: "132234",
                    icon: Iconsax.copy,
                    onPressed: () {}),
                SProfileMenu(
                    title: "E-mail",
                    value: "ashishgupta8051@gmail.com",
                    onPressed: () {}),
                SProfileMenu(
                    title: "Phone", value: "6265257963", onPressed: () {}),
                SProfileMenu(title: "Gender", value: "Male", onPressed: () {}),
                SProfileMenu(
                    title: "Date of Birth",
                    value: "24 Jan, 2000",
                    onPressed: () {}),
                const Divider(),
                const SizedBox(height: SSizes.spaceBtwItems),
                Center(
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Close Account",
                        style: TextStyle(color: Colors.red),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
