import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/images/s_circular_image.dart';
import '../../../../../common/widgets/texts/s_brand_title_text_with_verified_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SBrandCard extends StatelessWidget {
  const SBrandCard({
    super.key,
    required this.showBorder,
  });

  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SRoundedContainer(
        padding: const EdgeInsets.all(SSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// Icon
            Flexible(
              child: SCircularImage(
                isNetworkImage: false,
                imageUrl: SImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor:
                SHelperFunctions.isDarkMode(context)
                    ? SColors.white
                    : SColors.black,
              ),
            ),
            const SizedBox(
              height: SSizes.spaceBtwItems / 2,
            ),

            /// Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const SBrandTitleTextWithVerifiedIcon(
                      title: "Nike",
                      brandTextSizes: TextSizes.large),
                  Text(
                    "256 products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}