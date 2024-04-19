import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/widgets.dart';

class SGridLayout extends StatelessWidget {
  const SGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 295,
      });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: SSizes.gridViewSpacing,
            crossAxisSpacing: SSizes.gridViewSpacing,
            mainAxisExtent: mainAxisExtent),
        itemBuilder:  itemBuilder);
  }
}
