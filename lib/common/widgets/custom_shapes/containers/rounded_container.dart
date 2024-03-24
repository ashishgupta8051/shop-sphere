import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SRoundedContainer extends StatelessWidget {

  const SRoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.showBorder = false,
    this.radius = SSizes.cardRadiusLg,
    this.backgroundColor = SColors.white,
    this.borderColor = SColors.borderPrimary,
  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ), // BoxDecoration
      child: child,
    ); // Container
  }
}
