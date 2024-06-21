import 'package:ShopSphere/common/widgets/layouts/grid_layout.dart';
import 'package:ShopSphere/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ShopSphere/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class SCategoryTab extends StatelessWidget {
  const SCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              /// Brands
              const SBrandShowcase(images: [SImages.productImage3, SImages.productImage2, SImages.productImage1],),
              const SizedBox(height: SSizes.spaceBtwItems),
              /// Products
              SSectionHeading(title: "You might like", onPressed: () {},),
              const SizedBox(height: SSizes.spaceBtwItems),

              SGridLayout(itemCount: 4, itemBuilder: (_, index) => const SProductCardVertical())
            ],
          ),
        ),
      ]
    );
  }
}
