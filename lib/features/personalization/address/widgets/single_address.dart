import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';

class SSingleAddress extends StatelessWidget {
  const SSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SRoundedContainer(
      width: double.infinity,
      padding: EdgeInsets.all(SSizes.md),
      showBorder: true,
      backgroundColor: selectedAddress
          ? SColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? SColors.darkerGrey
              : SColors.grey,
      margin: const EdgeInsets.only(bottom: SSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
              right: 5,
              top: 0,
              child: Icon(
                selectedAddress ? Iconsax.tick_circle5 : null,
                color: selectedAddress
                    ? dark
                        ? SColors.light
                        : SColors.dark
                    : null,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Ashish Gupta",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: SSizes.sm / 2),
              const Text("8734563848", maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: SSizes.sm / 2),
              const Text("D-87A, Vedanta Tower, Palam Vihar, Gurugram, Haryana, 263473", softWrap: true,),

            ],
          )
        ],
      ),
    );
  }
}
