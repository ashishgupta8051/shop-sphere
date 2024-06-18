import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class SCircularImage extends StatelessWidget {
  const SCircularImage({
    super.key,
    this.height = 56,
    this.width = 56,
    this.padding = SSizes.sm,
    this.boxFit = BoxFit.cover,
    required this.imageUrl,
    this.isNetworkImage = false,
    this.backgroundColor,
    this.overlayColor,
  });

  final double height, width, padding;
  final BoxFit? boxFit;
  final String imageUrl;
  final bool isNetworkImage;
  final Color? backgroundColor;
  final Color? overlayColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (SHelperFunctions.isDarkMode(context)
            ? SColors.black
            : SColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: boxFit,
        image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}