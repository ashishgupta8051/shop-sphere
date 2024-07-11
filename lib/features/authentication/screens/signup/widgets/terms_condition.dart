import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TermsCondition extends StatelessWidget {
  const TermsCondition({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 24,
            width: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: SSizes.spaceBtwItems),
        Expanded(child: Text.rich(TextSpan(children: [
          TextSpan(
              text: '${STexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: STexts.privacyPolicy,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.apply(
                color: dark ? SColors.white : SColors.primary,
                decoration: TextDecoration.underline,
                decorationColor:
                dark ? SColors.white : SColors.primary,
              )),
          TextSpan(
              text: ' ${STexts.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: STexts.termsOfUse,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.apply(
                color: dark ? SColors.white : SColors.primary,
                decoration: TextDecoration.underline,
                decorationColor:
                dark ? SColors.white : SColors.primary,
              )),
        ])))
      ],
    );
  }
}
