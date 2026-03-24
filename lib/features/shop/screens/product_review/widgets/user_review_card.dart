import 'package:ShopSphere/common/widgets/space/space.dart';
import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/products/rating/ratingbar_indicator.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final darkTheme = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            children: [
              const CircleAvatar(backgroundImage: AssetImage(SImages.userProfileImage1)),
              const SizedBox(width: SSizes.spaceBtwItems),
              Text("John", style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
          IconButton(onPressed:() {}, icon: const Icon(Icons.more_vert))
        ],),
        const SpaceBetweenItems(height: true),

        /// Review
        Row(
          children: [
            const SRatingBarIndicator(rating: 4),
            const SpaceBetweenItems(height: true),
            Text("01 Nov, 2025", style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),

        const SpaceBetweenItems(height: true),
        const ReadMoreText("Returns the triggered rule details along with the recommended action (e.g., allow, warn, block), enabling the app to take immediate action based on the specific rule that was fired.",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: "show less",
          trimCollapsedText: "show more",
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
        ),

        /// Company review
        SRoundedContainer(
          backgroundColor: darkTheme ? SColors.darkerGrey : SColors.grey,
          child: Padding(padding: const EdgeInsets.all(SSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("S's Score", style: Theme.of(context).textTheme.bodyLarge,),
                    Text("02 Nov, 2025", style: Theme.of(context).textTheme.bodyMedium,),

                  ],
                ),

                const SpaceBetweenItems(height: true),
                const ReadMoreText("Returns the triggered rule details along with the recommended action (e.g., allow, warn, block), enabling the app to take immediate action based on the specific rule that was fired.",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: "show less",
                  trimCollapsedText: "show more",
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SpaceBetweenItems(height: true),
      ],
    );
  }
}

