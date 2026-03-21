import 'package:ShopSphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ShopSphere/common/widgets/images/rounded_image.dart';
import 'package:ShopSphere/common/widgets/space/space.dart';
import 'package:ShopSphere/common/widgets/texts/product_price_text.dart';
import 'package:ShopSphere/common/widgets/texts/product_title_text.dart';
import 'package:ShopSphere/common/widgets/texts/s_brand_title_text_with_verified_icon.dart';
import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/s_circular_icon.dart';

class SProductCardHorizontal extends StatelessWidget {
  const SProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    var dark = SHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SSizes.productImageRadius),
          color: dark ? SColors.darkerGrey : SColors.softGrey),
      child: Row(
        children: [
          /// Thumbnail
          SRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(SSizes.sm),
            backgroundColor: dark ? SColors.dark : SColors.light,
            child: Stack(
              children: [
                /// Thumbnail Image
                const SRoundedImage(
                    height: 120,
                    width: 120,
                    imageUrl: SImages.productImage1,
                    applyImageRadius: true),

                /// Sale Tag
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
                      width: 40,
                      height: 40,
                      iconData: Iconsax.heart5,
                      color: Colors.red,
                    ))
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: SSizes.sm, left: SSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SProductTitleText(
                        title: "Green Nike Half Sleevs Shirt",
                        smallSize: true,
                      ),
                      SpaceBetweenItemsDivByTwo(height: true),
                      SBrandTitleTextWithVerifiedIcon(title: "Nike")
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Pricing
                      const Flexible(child: SProductPriceText(price: "256.8")),

                      /// Add to Cart
                      Container(
                        decoration: const BoxDecoration(
                            color: SColors.dark,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(SSizes.cardRadiusMd),
                                bottomRight: Radius.circular(
                                    SSizes.productImageRadius))),
                        child: const SizedBox(
                            width: SSizes.iconLg * 1.2,
                            height: SSizes.iconLg * 1.2,
                            child: Center(
                              child: Icon(
                                Iconsax.add,
                                color: SColors.white,
                              ),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
