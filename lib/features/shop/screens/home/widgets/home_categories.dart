import 'package:ShopSphere/common/widgets/image_text_widget/vertical_cat_image_txt.dart';
import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

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
              onTap: (){},
            );
          }),
    );
  }
}