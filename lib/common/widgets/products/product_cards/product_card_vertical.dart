import 'package:ShopSphere/common/styles/shadows.dart';
import 'package:ShopSphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ShopSphere/common/widgets/icons/s_circular_icon.dart';
import 'package:ShopSphere/common/widgets/images/rounded_image.dart';
import 'package:ShopSphere/common/widgets/texts/product_price_text.dart';
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
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [SShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(SSizes.productImageRadius),
            color: dark ? SColors.darkGrey : SColors.white),
        child: Column(
          children: [
            /// Thumbnail , Wishlist Button, Discount btn
            Padding(
              padding: const EdgeInsets.all(SSizes.xs),
              child: SRoundedContainer(
                height: 180,
                padding: const EdgeInsets.all(SSizes.sm),
                backgroundColor: dark ? SColors.light : SColors.light,
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
            ),
            const SizedBox(height: SSizes.spaceBtwItems / 2),
      
            /// Details
            Padding(
              padding: const EdgeInsets.all(SSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SProductTitleText(
                    title: "Green Nike Air Shoes",
                    smallSize: true,
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        "Nike",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const Icon(
                        Iconsax.verify5,
                        color: SColors.primary,
                        size: SSizes.iconXs,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SProductPriceText(price: "35"),
                      Container(
                        decoration: const BoxDecoration(
                            color: SColors.dark,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(SSizes.cardRadiusMd),
                                bottomRight:
                                    Radius.circular(SSizes.productImageRadius))),
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
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
