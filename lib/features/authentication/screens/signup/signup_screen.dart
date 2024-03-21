
import 'package:ShopSphere/features/authentication/screens/signup/verify_email.dart';
import 'package:ShopSphere/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ShopSphere/features/authentication/screens/signup/widgets/terms_condition.dart';
import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/form_footer.dart';
import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(STexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: SSizes.spaceBtwSections),
              /// Form
              const SignupForm(),
              /// Term Condition check
              const SizedBox(
                height: SSizes.spaceBtwInputFields,
              ),
              TermsCondition(dark: dark),
              /// Signup Button
              const SizedBox(
                height: SSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const VerifyEmailScreen());
                  },
                  child: const Text(STexts.createAccount),
                ),
              ),
              /// Divider
              const SizedBox(
                height: SSizes.spaceBtwSections,
              ),
              FormDivider(dark: dark, dividerText: STexts.orSignUpWith.capitalize!),
              /// Footer
              const SizedBox(
                height: SSizes.spaceBtwSections,
              ),
              const FormFooter()
            ],
          ),
        ),
      ),
    );
  }
}


