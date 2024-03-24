import 'package:ShopSphere/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ShopSphere/common/widgets/images/rounded_image.dart';
import 'package:ShopSphere/features/shop/controllers/home_controllers/home_controllers.dart';
import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SPromoSlider extends StatelessWidget {
  const SPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeControllers());
    return Column(
        children:[
          CarouselSlider(
            items: banners.map((url) =>  SRoundedImage(imageUrl: url)).toList(),
            options: CarouselOptions(
                viewportFraction: 1,
              onPageChanged: (index, _) => homeController.updatePageIndicator(index)
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwItems,),
          Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for(int i = 0 ; i < banners.length; i++)
                     SCircularContainer(
                      width: 20,
                      height: 4,
                      backgroundColor: homeController.currentIndex.value == i ? SColors.primary : SColors.grey,
                      margin: const EdgeInsets.only(right: 10),
                    )
                ]
            ),
          )
        ]
    );
  }
}
