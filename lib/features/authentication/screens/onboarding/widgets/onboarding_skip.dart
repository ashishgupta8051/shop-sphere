import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';
import '../../../controllers/onboarding/onboarding_controllers.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: SDeviceUtils.getAppBarHeight(),
        right: SSizes.defaultSpace,
        child: TextButton(
            onPressed: () {
              OnBoardingControllers.instance.skipPage();
            },
            child: const Text("Skip")));
  }
}
