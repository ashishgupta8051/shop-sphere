import 'package:ShopSphere/common/widgets/texts/section_heading.dart';
import 'package:ShopSphere/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ShopSphere/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ShopSphere/features/shop/screens/product_details/widgets/product_image_details_slider.dart';
import 'package:ShopSphere/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ShopSphere/features/shop/screens/product_details/widgets/raring_and_share.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SBottomAddToCartWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product image slider
            const SProductImageSlider(),

            /// Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: SSizes.defaultSpace,
                  left: SSizes.defaultSpace,
                  bottom: SSizes.defaultSpace),
              child: Column(
                children: [
                  /// Rating & Share
                  const SRatingAndShare(),

                  /// Price, Title, Stock & Brand
                  const SProductMetaData(),

                  /// Attributes
                  const SProductAttributes(),
                  const SizedBox(height: SSizes.spaceBtwSections),

                  /// Checkout Button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text("Checkout"))),
                  const SizedBox(height: SSizes.spaceBtwSections),

                  /// Description
                  const SSectionHeading(title: "Description", showActionButton: false),
                  const SizedBox(height: SSizes.spaceBtwItems),
                  const ReadMoreText(
                    "Engineered for comfort, performance, and style, Nike shoes combine cutting-edge technology with iconic designs to keep you moving effortlessly. Perfect for sports, workouts, or everyday wear.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " Show more",
                    trimExpandedText: " Less",
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// Reviews
                  const Divider(),
                  const SizedBox(height: SSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SSectionHeading(title: "Reviews (199)", showActionButton: false),
                      IconButton(onPressed: (){

                      }, icon: const Icon(Iconsax.arrow_right_3))
                    ],
                  ),
                  const SizedBox(height: SSizes.spaceBtwSections),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

