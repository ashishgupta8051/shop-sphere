import 'package:ShopSphere/common/widgets/appbar/appbar.dart';
import 'package:ShopSphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ShopSphere/features/shop/screens/product_review/widgets/overall_product_rating.dart';
import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/product_cards/rating/ratingbar_indicator.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'widgets/user_review_card.dart';



class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkTheme = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const SAppBar(title: Text("Product & Ratings"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Rating and reviews are verified and are from people who use the same type of device that you use."),
              const SizedBox(height: SSizes.spaceBtwItems),

              ///  Product Rating
              const SOverallProductRating(),
              const SRatingBarIndicator(rating: 3.5),
              Text("12,113", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: SSizes.spaceBtwSections),

              /// USe Review List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}