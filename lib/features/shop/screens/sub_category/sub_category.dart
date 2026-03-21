import 'package:ShopSphere/common/widgets/appbar/appbar.dart';
import 'package:ShopSphere/common/widgets/images/rounded_image.dart';
import 'package:ShopSphere/common/widgets/space/space.dart';
import 'package:ShopSphere/common/widgets/texts/section_heading.dart';
import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/product_cards/product_card_horizontal.dart';

class SSubCategoryScreen extends StatelessWidget {
  const SSubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SAppBar(title: Text("Sports"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
            children: [
              /// Banner
              const SRoundedImage(width: double.infinity, imageUrl: SImages.promoBanner2, applyImageRadius: true),
              const SpaceBetweenSections(height: true),

              /// Sub-Category
              Column(
                children: [
                  SSectionHeading(title: "Sports Shirt", onPressed: (){}),
                  const SpaceBetweenItemsDivByTwo(height: true),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SpaceBetweenItems(height: false),
                      itemBuilder: (context, index) => const SProductCardHorizontal()),
                  )
                ],
              )
          ],
        ),
        ),
      ),
    );
  }
}
