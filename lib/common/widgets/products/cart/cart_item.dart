import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/rounded_image.dart';
import '../../space/space.dart';
import '../../texts/product_title_text.dart';
import '../../texts/s_brand_title_text_with_verified_icon.dart';

class SCartItem extends StatelessWidget {
  const SCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Product Image
        Row(
          children: [
            SRoundedImage(
              imageUrl: SImages.productImage1,
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(SSizes.sm),
              backgroundColor: SHelperFunctions.isDarkMode(context)
                  ? SColors.darkerGrey
                  : SColors.light,
            )
          ],
        ),
        const SpaceBetweenItems(height: false),
        /// Product Title, Price & Size
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SBrandTitleTextWithVerifiedIcon(title: "Nike"),
              const SProductTitleText(title: "Black Sports shoes", maxLine: 1),
              /// Attribute
              Text.rich(TextSpan(children: [
                TextSpan(text: "Color ", style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: "Green ", style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(text: "Size ", style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: "UK 08 ", style: Theme.of(context).textTheme.bodyLarge)
              ]))
            ],
          ),
        ),
      ],
    );
  }
}
