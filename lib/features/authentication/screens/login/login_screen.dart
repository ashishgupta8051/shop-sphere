import 'package:ShopSphere/common/styles/spacing_style.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:ShopSphere/utils/constants/text_strings.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/form_footer.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Subtitle
              LoginHeader(dark: dark),
              /// Form
              const LoginForm(),
              /// Divider
              FormDivider(dark: dark, dividerText: STexts.orSignInWith.capitalize!),
              const SizedBox(height: SSizes.spaceBtwSections),
              /// Footer
              const FormFooter()
            ],
          ),
        ),
      ),
    );
  }
}




