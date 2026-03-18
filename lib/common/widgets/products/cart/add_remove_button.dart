import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:ShopSphere/common/widgets/icons/s_circular_icon.dart';
import 'package:ShopSphere/common/widgets/space/space.dart';
import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';

class SProductQuantityWithAddAndRemove extends StatelessWidget {
  const SProductQuantityWithAddAndRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SCircularIcon(iconData: Iconsax.minus,
              width: 32,
              height: 32,
              size: SSizes.md,
              color: SHelperFunctions.isDarkMode(context) ? SColors.white : SColors.black,
              backgroundColor: SHelperFunctions.isDarkMode(context) ? SColors.darkerGrey : SColors.light,
            ),
            const SpaceBetweenItems(height: false),
            Text("2", style: Theme.of(context).textTheme.titleSmall),
            const SpaceBetweenItems(height: false),
            SCircularIcon(iconData: Iconsax.add,
              width: 32,
              height: 32,
              size: SSizes.md,
              color: SHelperFunctions.isDarkMode(context) ? SColors.white : SColors.white,
              backgroundColor: SHelperFunctions.isDarkMode(context) ? SColors.buttonPrimary : SColors.buttonPrimary,
            ),
          ],
        )
      ],
    );
  }
}