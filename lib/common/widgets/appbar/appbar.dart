import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:ShopSphere/utils/devices/device_utility.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: SSizes.md),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: showBackArrow
              ? IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Iconsax.arrow_left,
                      color: dark ? SColors.white : SColors.black),
                )
              : leadingIcon != null
                  ? IconButton(
                      onPressed: () => leadingOnPressed,
                      icon: Icon(leadingIcon))
                  : null,
          title: title,
          actions: actions,
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(SDeviceUtils.getAppBarHeight());
}
