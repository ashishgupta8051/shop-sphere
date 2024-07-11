import 'package:ShopSphere/common/widgets/appbar/appbar.dart';
import 'package:ShopSphere/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ShopSphere/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:ShopSphere/common/widgets/texts/section_heading.dart';
import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/list_tile/user_profile_tile.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: SHelperFunctions.isDarkMode(context)
            ? SColors.black
            : SColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            SPrimaryHeaderContainer(
                child: Column(
              children: [
                /// Appbar
                SAppBar(
                    title: Text("Account",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: SColors.white))),

                /// User Profile Card
                const SUserProfileTile(),

                const SizedBox(
                  height: SSizes.spaceBtwSections,
                ),
              ],
            )),

            /// Body
            Padding(
              padding: const EdgeInsets.all(SSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account Settings
                  const SSectionHeading(title: "Account Settings", showActionButton: false,),
                  const SizedBox(height: SSizes.spaceBtwItems,),

                  SSettingMenuTile(iconData: Iconsax.safe_home, title: "My Addresses", subtitle: "Set shopping delivery address", onTap: (){},),
                  SSettingMenuTile(iconData: Iconsax.shopping_cart, title: "My Cart", subtitle: "Add, remove products and move to checkout", onTap: (){},),
                  SSettingMenuTile(iconData: Iconsax.bag_tick, title: "My Order", subtitle: "In-progress and Completed Orders", onTap: (){},),
                  SSettingMenuTile(iconData: Iconsax.bank, title: "Bank Account", subtitle: "Withdraw balance to register bank account", onTap: (){},),
                  SSettingMenuTile(iconData: Iconsax.discount_shape, title: "My Coupons", subtitle: "List of all the discounted coupons", onTap: (){},),
                  SSettingMenuTile(iconData: Iconsax.notification, title: "Notifications", subtitle: "Set any kinds of notification message", onTap: (){},),
                  SSettingMenuTile(iconData: Iconsax.security_card, title: "Account Privacy", subtitle: "Manage data uses and connected account", onTap: (){},),

                  /// App Settings
                  const SizedBox(height: SSizes.spaceBtwSections,),
                  const SSectionHeading(title: "App Settings", showActionButton: false,),
                  const SizedBox(height: SSizes.spaceBtwItems,),
                  SSettingMenuTile(iconData: Iconsax.document_upload, title: "Load Data", subtitle: "Upload data to your cloud firebase", onTap: (){},),

                  SSettingMenuTile(
                    iconData: Iconsax.location,
                    title: "Geolocation",
                    subtitle: "set recommendation based on location",
                    trailing: Switch(value: true, onChanged: (value){})),
                  SSettingMenuTile(
                      iconData: Iconsax.security_user,
                      title: "Safe Mode",
                      subtitle: "Search result is safe for all ages",
                      trailing: Switch(value: false, onChanged: (value){})),
                  SSettingMenuTile(
                      iconData: Iconsax.image,
                      title: "HD Image Quality",
                      subtitle: "set image quality to be seen",
                      trailing: Switch(value: false, onChanged: (value){})),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
