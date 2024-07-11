import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SSettingMenuTile extends StatelessWidget {
  const SSettingMenuTile(
      {super.key,
      required this.iconData,
      required this.title,
      required this.subtitle,
      this.trailing, this.onTap});

  final IconData iconData;
  final String title, subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData, size: 28, color: SColors.primary),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
