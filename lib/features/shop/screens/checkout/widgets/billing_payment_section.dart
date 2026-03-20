
import 'package:ShopSphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ShopSphere/common/widgets/space/space.dart';
import 'package:ShopSphere/common/widgets/texts/section_heading.dart';
import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SBillingPaymentSection extends StatelessWidget {
  const SBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        SSectionHeading(title: "Payment Method", buttonText: "Change", onPressed: (){}),
        const SpaceBetweenItemsDivByTwo(height: true),
        Row(
          children: [
            SRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? SColors.dark : SColors.light,
              child: const Image(image: AssetImage(SImages.paypal), fit: BoxFit.contain,),
            ),
            const SpaceBetweenItemsDivByTwo(height: false),
            Text("Paypal", style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}
