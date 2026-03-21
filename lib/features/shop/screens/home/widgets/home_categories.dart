import 'package:ShopSphere/common/widgets/image_text_widget/vertical_cat_image_txt.dart';
import 'package:ShopSphere/features/shop/screens/sub_category/sub_category.dart';
import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SHomeCategories extends StatelessWidget {
  const SHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return SVerticalImageTxt(
              image: SImages.shoeIcon,
              title: "Shoes Category",
              onTap: (){
                Get.to(() => const SSubCategoryScreen());
              },
            );
          }),
    );
  }
}