import 'package:ShopSphere/common/widgets/brands/brand_card.dart';
import 'package:ShopSphere/common/widgets/products/sortable/sortable_products.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/space/space.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SAppBar(title: Text("Nike"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              SBrandCard(showBorder: true,),
              SpaceBetweenItems(height: true),

              SSortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
