import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class SCartCounterIcon extends StatelessWidget {
  const SCartCounterIcon({
    super.key,
    required this.onPressed,
    this.imgColor = SColors.white,
    required this.isHomePage,
  });

  final VoidCallback onPressed;
  final Color? imgColor;
  final bool isHomePage;

  @override
  Widget build(BuildContext context) {
    var dark = SHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon:  Icon(
              Iconsax.shopping_bag,
              color: isHomePage ? imgColor : dark ? SColors.light : SColors.black,
            )),
        Positioned(
            right: 0,
            child: Container(
              height: 18,
              width: 18,
              decoration:  BoxDecoration(
                  color: isHomePage ? SColors.black : dark ? SColors.white : SColors.black, shape: BoxShape.circle),
              child: Center(
                child: Text(
                  "2",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.apply(
                      color: isHomePage ? SColors.white : dark ? SColors.black : SColors.white,
                      fontSizeFactor: 0.8),
                ),
              ),
            ))
      ],
    );
  }
}
