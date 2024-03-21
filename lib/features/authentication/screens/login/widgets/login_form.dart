

import 'package:ShopSphere/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ShopSphere/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../signup/signup_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: SSizes.spaceBtwSections),
          child: Column(
            children: [
              ///Email
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: STexts.email),
              ),
              const SizedBox(
                height: SSizes.sm,
              ),

              ///Password
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    labelText: STexts.password,
                    suffixIcon: Icon(Iconsax.eye_slash)),
              ),
              const SizedBox(height: SSizes.spaceBtwInputFields / 2),

              ///Remember me & Forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text(STexts.rememberMe)
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => const ForgetPassword());
                      },
                      child: const Text(STexts.forgetPassword))
                ],
              ),
              const SizedBox(
                height: SSizes.spaceBtwSections,
              ),

              /// Sign in Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.offAll(() => const NavigationMenu());
                      },
                      child: const Text(STexts.signIn))),
              const SizedBox(
                height: SSizes.spaceBtwItems,
              ),
              /// Create account button
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {
                        Get.to(() => const SignupScreen());
                      },
                      child: const Text(STexts.createAccount))),
            ],
          ),
        ));
  }
}
