import 'package:ShopSphere/common/widgets/texts/section_heading.dart';
import 'package:ShopSphere/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ShopSphere/features/shop/screens/home/widgets/shome_app_bar.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                SSearchContainer(text: "Search in store", onTap: (){},),
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
                      SHomeCategories()
                    ],
                  ),
                )
              ],
            )),

            /// Body part - Slider Banner
            
          ],
        ),
      ),
    );
  }
}



