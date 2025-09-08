

import 'dart:math';

import 'package:ShopSphere/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ShopSphere/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intelligence_sign3/flutter_intelligence_sign3.dart';
import 'package:flutter_intelligence_sign3/model/options.dart';
import 'package:flutter_intelligence_sign3/model/update_options.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/logging/log.dart';
import '../../signup/signup_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Controllers to hold values
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: SSizes.spaceBtwSections),
          child: Column(
            children: [
              ///Email
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: STexts.email),
              ),
              const SizedBox(
                height: SSizes.sm,
              ),

              ///Password
              TextFormField(
                controller: _passwordController,
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
                        updateOptions(getUpdatedOptions(_emailController.text.trim(), Random().nextInt(10)));
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

  Future<void> updateOptions(UpdateOptions options) async {
    await Sign3Intelligence.updateOptions(options);
  }

  UpdateOptions getUpdatedOptions(String phone, int id) {
    print("TAG_PHONE: $phone");
    Map<String, String> additionalAttributes = {
      "TRANSACTION_ID": "76381256165476154713",
      "DEPOSIT": "5000",
      "WITHDRAWAL": "2000",
      "METHOD": "UPI",
      "STATUS": "SUCCESS",
      "CURRENCY": "INR",
      "TIMESTAMP": DateTime.now().millisecondsSinceEpoch.toString(),
    };

    UpdateOptions updateOptions = UpdateOptionsBuilder()
        .setPhoneNumber(phone)
        .setUserId(id.toString())
        .setPhoneInputType(PhoneInputType.GOOGLE_HINT)
        .setOtpInputType(OtpInputType.AUTO_FILLED)
        .setUserEventType(UserEventType.TRANSACTION)
        .setMerchantId("1234567890")
        .setAdditionalAttributes(additionalAttributes)
        .build();
    return updateOptions;
  }



}
