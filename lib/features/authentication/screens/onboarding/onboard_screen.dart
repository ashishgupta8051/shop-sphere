import 'package:ShopSphere/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ShopSphere/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:ShopSphere/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/onboarding/onboarding_controllers.dart';
import 'widgets/onboarding_bot_navigation.dart';
import 'widgets/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingControllers());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable page
          PageView(
            controller:  controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: SImages.delivery,
                  title: STexts.onBoardingTitle1,
                  subTitle: STexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: SImages.searching,
                  title: STexts.onBoardingTitle2,
                  subTitle: STexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: SImages.shopping,
                  title: STexts.onBoardingTitle3,
                  subTitle: STexts.onBoardingSubTitle3),
            ],
          ),
          //Skip Button
          const OnBoardingSkip(),
          //Smooth Page Indicator
          const OnBoardingDotNavigation(),
          //Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
