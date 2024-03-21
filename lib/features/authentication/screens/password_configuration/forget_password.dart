import 'package:ShopSphere/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            CupertinoIcons.back,
            color: dark ? SColors.white : SColors.black, // Change the color of the arrow icon
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Heading
            Text(STexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: SSizes.spaceBtwItems),
            Text(STexts.forgetPasswordTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: SSizes.spaceBtwSections * 2),

            /// Text Field
            TextFormField(
              decoration: const InputDecoration(
                labelText: STexts.email, prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwSections),

            /// Submit Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){
              Get.off(() => const ResetPassword());
            }, child: const Text(STexts.submit)))
          ],
        ),
      ),
    );
  }
}
