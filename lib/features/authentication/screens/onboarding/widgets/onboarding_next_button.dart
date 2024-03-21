import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../controllers/onboarding/onboarding_controllers.dart';


class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Positioned(
        right: SSizes.defaultSpace,
        bottom: SDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () {
              OnBoardingControllers.instance.nextPage();
            },
            style: ElevatedButton.styleFrom(shape: const CircleBorder(),
                backgroundColor: dark? SColors.primary : SColors.black),
            child: const Icon(Iconsax.arrow_right_3)));
  }
}
