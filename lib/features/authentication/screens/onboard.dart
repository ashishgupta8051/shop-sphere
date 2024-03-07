import 'package:ShopSphere/features/authentication/controllers.onboarding/onboarding_controllers.dart';
import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:ShopSphere/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'onboarding_bot_navigation.dart';
import 'onboarding_next_button.dart';
import 'onboarding_page.dart';
import 'onboarding_skip.dart';

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
                  image: TImages.delivery,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: TImages.searching,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: TImages.shopping,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3),
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
