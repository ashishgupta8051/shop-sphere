import 'package:ShopSphere/common/styles/shadows.dart';
import 'package:ShopSphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ShopSphere/common/widgets/icons/s_circular_icon.dart';
import 'package:ShopSphere/common/widgets/images/rounded_image.dart';
import 'package:ShopSphere/common/widgets/texts/product_title_text.dart';
import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SProductCardVertical extends StatelessWidget {
  const SProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    var dark = SHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          boxShadow: [SShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(SSizes.productImageRadius),
          color: dark ? SColors.darkGrey : SColors.white),
      child: Column(
        children: [
          /// Thumbnail , Wishlist Button, Discount btn
          SRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(SSizes.sm),
            backgroundColor: dark ? SColors.dark : SColors.light,
            child: Stack(
              children: [
                const SRoundedImage(
                    imageUrl: SImages.productImage1, applyImageRadius: true),
                Positioned(
                  top: 12,
                  child: SRoundedContainer(
                    radius: SSizes.sm,
                    padding: const EdgeInsets.symmetric(
                        horizontal: SSizes.sm, vertical: SSizes.xs),
                    backgroundColor: SColors.secondary.withOpacity(0.8),
                    child: Text(
                      "25%",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: SColors.black),
                    ),
                  ),
                ),
                const Positioned(
                    top: 0,
                    right: 0,
                    child: SCircularIcon(
                      iconData: Iconsax.heart5,
                      color: Colors.red,
                    ))
              ],
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwItems / 2),

          /// Details
          const Padding(
            padding: EdgeInsets.all(SSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SProductTitleText(title:  "Green Nike Air Shoes", smallSize: true,),
                SizedBox(height: SSizes.spaceBtwItems / 2),
              ],
            ),
          )
        ],
      ),
    );
  }
}

