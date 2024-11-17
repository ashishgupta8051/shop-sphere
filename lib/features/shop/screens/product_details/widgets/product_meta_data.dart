import 'package:ShopSphere/common/widgets/images/s_circular_image.dart';
import 'package:ShopSphere/common/widgets/texts/product_price_text.dart';
import 'package:ShopSphere/common/widgets/texts/product_title_text.dart';
import 'package:ShopSphere/common/widgets/texts/s_brand_title_text_with_verified_icon.dart';
import 'package:ShopSphere/utils/constants/enums.dart';
import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class SProductMetaData extends StatelessWidget {
  const SProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = SHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            SRoundedContainer(
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
            const SizedBox(width: SSizes.spaceBtwItems),

            /// Price
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: SSizes.spaceBtwItems),
            const SProductPriceText(price: '175', isLarge: true,)

          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems / 1.5),

        /// Title
        const SProductTitleText(title: "Green Nike Sports Shirt"),
        const SizedBox(height: SSizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const SProductTitleText(title: "Status"),
            const SizedBox(width: SSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems / 1.5),

        /// Brand
        Row(
          children: [
            SCircularImage(imageUrl: SImages.shoeIcon, width: 32, height: 32, overlayColor: darkMode ? SColors.white : SColors.black),
            const SizedBox(width: SSizes.spaceBtwItems / 1.5),
            const SBrandTitleTextWithVerifiedIcon(title: "Nike", brandTextSizes: TextSizes.medium)
          ],
        ),
      ],
    );
  }
}
