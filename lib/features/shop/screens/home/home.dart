import 'package:ShopSphere/common/widgets/layouts/grid_layout.dart';
import 'package:ShopSphere/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ShopSphere/common/widgets/texts/section_heading.dart';
import 'package:ShopSphere/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ShopSphere/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ShopSphere/features/shop/screens/home/widgets/shome_app_bar.dart';
import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intelligence_sign3/flutter_intelligence_sign3.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> getIntelligence() async {
    try {
      var sign3IntelligenceResponse = await Sign3Intelligence.getIntelligence();
      print("RESPONSE: ${sign3IntelligenceResponse.toJson()}");
    } catch (e) {
      // Handle the error message
    }
  }

  @override
  Widget build(BuildContext context) {
    getIntelligence();
    return Scaffold(
        backgroundColor: SHelperFunctions.isDarkMode(context)
            ? SColors.black
            : SColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header with customised background
            SPrimaryHeaderContainer(
                child: Column(
              children: [
                /// App Bar
                const SHomeAppBar(),
                const SizedBox(
                  height: SSizes.spaceBtwSections,
                ),

                /// SearchBar
                SSearchContainer(
                  text: "Search in store",
                  onTap: () {},
                ),
                const SizedBox(
                  height: SSizes.spaceBtwSections,
                ),

                /// Categories, Header
                const Padding(
                  padding: EdgeInsets.only(left: SSizes.defaultSpace),
                  child: Column(
                    children: [
                      SSectionHeading(
                        title: "Popular Category",
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: SSizes.spaceBtwItems,
                      ),
                      SHomeCategories(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: SSizes.spaceBtwSections,
                ),
              ],
            )),

            /// Body part - Slider Banner & Body Product
            Padding(
                padding: const EdgeInsets.all(SSizes.spaceBtwItems),
                child: Column(
                  children: [
                    /// Slider
                    const SPromoSlider(
                      banners: [
                        SImages.promoBanner1,
                        SImages.promoBanner2,
                        SImages.promoBanner3,
                      ],
                    ),
                    const SizedBox(
                      height: SSizes.spaceBtwSections,
                    ),
                    /// Heading
                     SSectionHeading(title: "Popular Products", onPressed: (){},),
                    const SizedBox(
                      height: SSizes.spaceBtwItems,
                    ),
                    /// Products
                    SGridLayout(itemCount: 4, itemBuilder: (_, index) =>
                              const SProductCardVertical())
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
