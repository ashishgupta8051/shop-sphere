import 'package:ShopSphere/common/widgets/success_screen/success_screen.dart';
import 'package:ShopSphere/features/authentication/screens/login/login_screen.dart';
import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:ShopSphere/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                  width: SHelperFunctions.screenWidth() * 0.6,
                  image: const AssetImage(
                    SImages.deliveredEmailIllustration,
                  )),
              const SizedBox(height: SSizes.spaceBtwItems),
              ///Title $ Subtitle
              Text(STexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: SSizes.spaceBtwItems),
              Text("ashishgupta8051@gmail.com", style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: SSizes.spaceBtwItems),
              Text(STexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: SSizes.spaceBtwSections),
              ///Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){
                Get.to(() => SuccessScreen(
                  image: SImages.staticSuccessIllustration,
                  title: STexts.yourAccountCreatedTitle,
                  subTitle: STexts.yourAccountCreatedSubTitle,
                  onPressed: () => Get.to(() => const LoginScreen()),
                ));
              }, child: const Text(STexts.tContinue))),
              const SizedBox(height: SSizes.spaceBtwItems),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(STexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
