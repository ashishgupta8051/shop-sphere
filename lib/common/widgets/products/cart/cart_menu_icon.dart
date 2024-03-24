import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class SCartCounterIcon extends StatelessWidget {
  const SCartCounterIcon({
    super.key, required this.onPressed, required this.color,
  });

  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon:  Icon(
              Iconsax.shopping_bag,
              color: color,
            )),
        Positioned(
            right: 0,
            child: Container(
              height: 18,
              width: 18,
              decoration: const BoxDecoration(
                  color: SColors.black, shape: BoxShape.circle),
              child: Center(
                child: Text(
                  "2",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.apply(
                      color: SColors.white,
                      fontSizeFactor: 0.8),
                ),
              ),
            ))
      ],
    );
  }
}
