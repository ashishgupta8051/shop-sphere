import 'package:ShopSphere/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class STabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add background color in Tabar so you can use Material widgets.
  /// To do that we need [PreferredSizes] Widgets and that's why create custom class [PreferredSizeWidget].
  const STabBar({
    super.key,
    required this.tabsList,
  });

  final List<Widget> tabsList;

  @override
  Widget build(BuildContext context) {
    final isDark = SHelperFunctions.isDarkMode(context);
    return Material(
      color: isDark ? SColors.black : SColors.white,
      child: TabBar(
          isScrollable: true,
          indicatorColor: SColors.primary,
          unselectedLabelColor: SColors.textSecondary,
          labelColor: isDark
              ? SColors.white
              : SColors.primary,
          tabs: tabsList),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SDeviceUtils.getAppBarHeight());
}
