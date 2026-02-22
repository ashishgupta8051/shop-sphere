import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class SpaceBetweenItems extends StatelessWidget {
  const SpaceBetweenItems({super.key,});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: SSizes.spaceBtwItems);
  }
}


class SpaceBetweenSections extends StatelessWidget {
  const SpaceBetweenSections({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: SSizes.spaceBtwSections);
  }
}