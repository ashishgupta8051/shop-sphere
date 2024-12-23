import 'package:ShopSphere/common/styles/shadows.dart';
import 'package:ShopSphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ShopSphere/common/widgets/icons/s_circular_icon.dart';
import 'package:ShopSphere/common/widgets/images/rounded_image.dart';
import 'package:ShopSphere/common/widgets/texts/product_price_text.dart';
import 'package:ShopSphere/common/widgets/texts/product_title_text.dart';
import 'package:ShopSphere/features/shop/screens/product_details/product_details.dart';
import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../texts/s_brand_title_text_with_verified_icon.dart';

class SProductCardVertical extends StatelessWidget {
  const SProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    var dark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [SShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(SSizes.productImageRadius),
            color: dark ? SColors.darkerGrey : SColors.white),
        child: Column(
          children: [
            /// Thumbnail , Wishlist Button, Discount btn
            SRoundedContainer(
              width: 200,
              height: 180,
              padding: const EdgeInsets.all(SSizes.sm),
              backgroundColor: dark ? SColors.dark : SColors.light,
              child: Stack(
                children: [
                  const SRoundedImage(imageUrl: SImages.productImage1, applyImageRadius: true),
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
            const SizedBox(height: SSizes.spaceBtwItems / 2),

            /// Details
            const Padding(
              padding: EdgeInsets.all(SSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SProductTitleText(
                    title: "Green Nike Air Shoes",
                    smallSize: true,
                  ),
                  SizedBox(height: SSizes.spaceBtwItems / 2),
                  SBrandTitleTextWithVerifiedIcon(title: "Nike"),
                ],
              ),
            ),

            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: SSizes.sm),
                  child: SProductPriceText(price: "35"),
                ),
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
      ),
    );
  }
}