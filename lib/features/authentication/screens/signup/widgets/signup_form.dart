import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            /// First Name & Last Name
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: STexts.firstName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                const SizedBox(
                  width: SSizes.spaceBtwInputFields,
                ),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: STexts.lastName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: SSizes.spaceBtwInputFields,
            ),

            /// Username
            TextFormField(
              decoration: const InputDecoration(
                  labelText: STexts.username,
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),

            /// Email
            const SizedBox(
              height: SSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: STexts.email,
                  prefixIcon: Icon(Iconsax.direct)),
            ),

            /// Phone
            const SizedBox(
              height: SSizes.spaceBtwInputFields,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              // Use a numeric keyboard
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
                // Accept digits only
              ],
              decoration: const InputDecoration(
                  labelText: STexts.phoneNo,
                  prefixIcon: Icon(Iconsax.call)),
            ),

            ///Password
            const SizedBox(
              height: SSizes.spaceBtwInputFields,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: STexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash),
                  prefixIcon: Icon(Iconsax.password_check)),
            ),

          ],
        ));
  }
}
