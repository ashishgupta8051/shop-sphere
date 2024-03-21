

import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SVerticalImageTxt extends StatelessWidget {
  const SVerticalImageTxt({
    super.key, required this.image, required this.title, this.textColor = SColors.white,
    this.backgroundColor = SColors.white, this.iconColor = SColors.dark, this.onTap
  });

  final String image, title;
  final Color textColor;
  final Color? iconColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: SSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(SSizes.sm),
              decoration: BoxDecoration(
                  color: backgroundColor ?? ((SHelperFunctions.isDarkMode(context)) ? SColors.black : SColors.white),
                  borderRadius:
                  BorderRadius.circular(100)),
              child:  Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: iconColor ?? ((SHelperFunctions.isDarkMode(context)) ? SColors.light : SColors.dark),
              ),
            ),
            const SizedBox(
              height: SSizes.spaceBtwItems / 2,
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}
