import 'package:ShopSphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ShopSphere/common/widgets/space/space.dart';
import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SOrderListItems extends StatelessWidget {
  const SOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 8,
      separatorBuilder: (_, index) => const SpaceBetweenItems(height: true),
      itemBuilder: (_, index) => SRoundedContainer(
        padding: const EdgeInsets.all(SSizes.md),
        showBorder: true,
        backgroundColor: dark ? SColors.dark : SColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Row 1
            Row(
              children: [
                /// Icon
                const Icon(Iconsax.ship),
                const SpaceBetweenItemsDivByTwo(height: false),

                /// Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Processing", style: Theme.of(context).textTheme.bodyLarge!.apply(color: SColors.primary, fontWeightDelta: 1)),
                      Text("04 Dev, 2025", style: Theme.of(context).textTheme.headlineSmall)
                    ],
                  ),
                ),

                /// Icon
                IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_34, size: SSizes.iconSm))
              ],
            ),
            const SpaceBetweenItems(height: true),
            /// Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// Icon
                      const Icon(Iconsax.tag),
                      const SpaceBetweenItemsDivByTwo(height: false),

                      /// Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order", style: Theme.of(context).textTheme.labelMedium),
                            Text("[28h3678j38]", style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      /// Icon
                      const Icon(Iconsax.calendar),
                      const SpaceBetweenItemsDivByTwo(height: false),

                      /// Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shipping Date", style: Theme.of(context).textTheme.labelMedium),
                            Text("19 Dec, 2025", style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
