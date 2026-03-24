
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../layouts/grid_layout.dart';
import '../../space/space.dart';
import '../product_cards/product_card_vertical.dart';

class SSortableProducts extends StatelessWidget {
  const SSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          onChanged: (value) {},
          decoration:
          const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            "Name",
            "Higher Price",
            "Lower Price",
            "Sale",
            "Newest",
            "Popularity"
          ]
              .map((options) => DropdownMenuItem(value: options, child: Text(options)))
              .toList(),
        ),
        const SpaceBetweenItems(height: true),

        ///Product
        SGridLayout(itemCount: 6, itemBuilder: (_, index) => const SProductCardVertical())

      ],
    );
  }
}

