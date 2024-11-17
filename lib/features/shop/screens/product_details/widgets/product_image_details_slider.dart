
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:ShopSphere/common/widgets/appbar/appbar.dart';
import 'package:ShopSphere/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ShopSphere/common/widgets/icons/s_circular_icon.dart';
import 'package:ShopSphere/common/widgets/images/rounded_image.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SProductImageSlider extends StatelessWidget {
  const SProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SCurvedEdgeWidget(
        child: Container(
          color: dark ? SColors.darkerGrey : SColors.light,
          child: Stack(
            children: [
              /// Main large image
              const SizedBox(
                height: 400,
                child: Padding(
                    padding: EdgeInsets.all(SSizes.productImageRadius * 2),
                    child: Center(
                        child: Image(
                            image: AssetImage(SImages.productImage5)))),
              ),

              /// Image Slider
              Positioned(
                right: 0,
                bottom: 30,
                left: SSizes.defaultSpace,
                child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                      itemCount: 5,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, __) => const SizedBox(
                        width: SSizes.spaceBtwItems,
                      ),
                      itemBuilder: (_, index) => SRoundedImage(
                          width: 80,
                          backgroundColor: dark ? SColors.dark : SColors.white,
                          border: Border.all(color: SColors.primary),
                          padding: const EdgeInsets.all(SSizes.sm),
                          imageUrl: SImages.productImage3)),
                ),
              ),

              /// Appbar Icons
              const SAppBar(
                showBackArrow: true,
                actions: [SCircularIcon(iconData: Iconsax.heart5, color: Colors.red,)],
              )
            ],
          ),
        ));
  }
}
