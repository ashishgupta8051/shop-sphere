
import 'package:flutter/material.dart';

import 'brand_card.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';

class SBrandShowcase extends StatelessWidget {
  const SBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SRoundedContainer(
      showBorder: true,
      borderColor: SColors.darkerGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(SSizes.md),
      margin: const EdgeInsets.only(bottom: SSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with product count
          const SBrandCard(showBorder: false),
          const SizedBox(height: SSizes.spaceBtwItems),

          /// Brand top 3 images
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, BuildContext context) {
    return Expanded(
      child: SRoundedContainer(
        height: 100,
        backgroundColor: SHelperFunctions.isDarkMode(context)
            ? SColors.darkerGrey
            : SColors.light,
        margin: const EdgeInsets.only(right: SSizes.sm),
        padding: const EdgeInsets.all(SSizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
