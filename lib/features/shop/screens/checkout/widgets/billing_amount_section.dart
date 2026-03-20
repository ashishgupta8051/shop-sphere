
import 'package:flutter/material.dart';

import '../../../../../common/widgets/space/space.dart';

class SBillingAmountSection extends StatelessWidget {
  const SBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        /// Subtitle
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Subtitle", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$250.7", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SpaceBetweenItemsDivByTwo(height: true),
        /// Shipping
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$25.7", style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SpaceBetweenItemsDivByTwo(height: true),
        /// Tax
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$7", style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SpaceBetweenItemsDivByTwo(height: true),
        /// Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$250.7", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
