import 'package:ShopSphere/common/styles/spacing_style.dart';
import 'package:ShopSphere/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback  onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
              padding: SSpacingStyle.paddingWithAppBarHeight * 2,
              child: Column(
                children: [
                  ///Image
                  Image(
                      width: SHelperFunctions.screenWidth() * 0.6,
                      image: AssetImage(
                        image,
                      )),
                  const SizedBox(height: SSizes.spaceBtwItems),

                  ///Title $ Subtitle
                  Text(title,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center),
                  const SizedBox(height: SSizes.spaceBtwItems),
                  Text(subTitle,
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.center),
                  const SizedBox(height: SSizes.spaceBtwSections),

                  ///Buttons
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.offAll(() => const LoginScreen());
                          },
                          child: const Text(STexts.tContinue))),
                ],
              ))),
    );
  }
}
