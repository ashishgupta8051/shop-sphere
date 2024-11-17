import 'package:ShopSphere/common/widgets/icons/s_circular_icon.dart';
import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SBottomAddToCartWidget extends StatelessWidget {
  const SBottomAddToCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = SHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: SSizes.defaultSpace, vertical: SSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: darkMode ? SColors.darkerGrey : SColors.light,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(SSizes.cardRadiusLg),
              topRight: Radius.circular(SSizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SCircularIcon(
                iconData: Iconsax.minus,
                backgroundColor: SColors.darkGrey,
                width: 40,
                height: 40,
                color: SColors.white,
              ),
              const SizedBox(
                width: SSizes.spaceBtwItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: SSizes.spaceBtwItems,
              ),
              const SCircularIcon(
                iconData: Iconsax.add,
                backgroundColor: SColors.black,
                width: 40,
                height: 40,
                color: SColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(SSizes.md),
                backgroundColor: SColors.black,
                side: const BorderSide(color: SColors.black)),
            child: const Text("Add to Cart"),
          )
        ],
      ),
    );
  }
}
