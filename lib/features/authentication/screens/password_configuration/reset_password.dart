import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:ShopSphere/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Get.back();
          }, icon: const Icon(CupertinoIcons.clear))
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
              Text(STexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SSizes.spaceBtwItems),
              Text(STexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SSizes.spaceBtwSections),

              ///Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(STexts.done))),
              const SizedBox(height: SSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(STexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
