import 'package:ShopSphere/common/widgets/appbar/appbar.dart';
import 'package:ShopSphere/common/widgets/icons/s_circular_icon.dart';
import 'package:ShopSphere/common/widgets/layouts/grid_layout.dart';
import 'package:ShopSphere/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ShopSphere/features/shop/screens/home/home.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SHelperFunctions.isDarkMode(context)
          ? SColors.black
          : SColors.white,
      appBar: SAppBar(
        title: Text("Wishlist", style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          SCircularIcon(iconData: Iconsax.add, onPressed: ()=> Get.off(const HomeScreen()))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(SSizes.spaceBtwItems),
        child: Column(
          children: [
            SGridLayout(itemCount: 6, itemBuilder: (_, index) => const SProductCardVertical())
          ],
        ),
      ),
    );
  }
}
