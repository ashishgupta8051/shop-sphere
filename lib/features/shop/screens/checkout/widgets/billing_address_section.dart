import 'package:ShopSphere/common/widgets/space/space.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';

class SBillingAddressSection extends StatelessWidget {
  const SBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SSectionHeading(title: "Shipping Address", buttonText: "Change", onPressed: (){}),
        Text("Shop Sphere", style: Theme.of(context).textTheme.bodyLarge),
        const SpaceBetweenItemsDivByTwo(height: true),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SpaceBetweenItems(height: false),
            Text("+91 7846092178", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SpaceBetweenItemsDivByTwo(height: true),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SpaceBetweenItems(height: false),
            Expanded(child: Text("421/5, Green Tower, Sector 23, New Market, Gurgaon, Haryana, 746389", style: Theme.of(context).textTheme.bodyMedium)),
          ],
        ),
      ],
    );
  }
}
