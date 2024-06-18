import 'package:ShopSphere/common/widgets/appbar/appbar.dart';
import 'package:ShopSphere/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ShopSphere/common/widgets/layouts/grid_layout.dart';
import 'package:ShopSphere/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ShopSphere/common/widgets/texts/section_heading.dart';
import 'package:ShopSphere/features/shop/screens/store/widgets/s_brand_card.dart';
import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Text(
          "Store",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          SCartCounterIcon(
            onPressed: () {},
            isHomePage: false,
          )
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxSelected) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 440, // Space between appbar and title bar
                backgroundColor: SHelperFunctions.isDarkMode(context)
                    ? SColors.black
                    : SColors.white,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(SSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// Search bar
                      const SizedBox(
                        height: SSizes.spaceBtwItems,
                      ),
                      const SSearchContainer(
                          text: "Search is store",
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero),
                      const SizedBox(
                        height: SSizes.spaceBtwSections,
                      ),

                      /// Featured Brand
                      SSectionHeading(title: "Feature Brand", onPressed: () {}),
                      const SizedBox(
                        height: SSizes.spaceBtwItems / 1.5,
                      ),
                      /// Brand Grid
                      SGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const SBrandCard(showBorder: true,);
                          })
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
