import 'package:ShopSphere/common/widgets/appbar/appbar.dart';
import 'package:ShopSphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ShopSphere/common/widgets/space/space.dart';
import 'package:ShopSphere/common/widgets/success_screen/success_screen.dart';
import 'package:ShopSphere/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ShopSphere/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ShopSphere/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ShopSphere/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ShopSphere/navigation_menu.dart';
import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/constants/image_strings.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/products/cart/coupon_code.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: SAppBar(
            title: Text("Order Review",
                style: Theme.of(context).textTheme.headlineSmall),
            showBackArrow: true),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(SSizes.defaultSpace),
              child: Column(
                children: [
                  /// Item in Cart
                  const SCartItems(showAddRemoveButton: false),
                  const SpaceBetweenSections(height: true),

                  /// Coupon TextField
                  SCouponCode(dark: dark),
                  const SpaceBetweenSections(height: true),

                  ///Billing Section
                  SRoundedContainer(
                    showBorder: true,
                    backgroundColor: dark ? SColors.dark : SColors.white,
                    padding: const EdgeInsets.all(SSizes.md),
                    child: const Column(
                      children: [
                        /// Pricing
                        SBillingAmountSection(),
                        SpaceBetweenItems(height: true),

                        /// Divider
                        Divider(),
                        SpaceBetweenItems(height: true),

                        /// Payment method
                        SBillingPaymentSection(),
                        SpaceBetweenItems(height: true),

                        /// Address
                        SBillingAddressSection(),
                      ],
                    ),
                  )
                ],
              )),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: ElevatedButton(
              onPressed: () => Get.to(() => SuccessScreen(
                  image: SImages.successfulPaymentIcon,
                  title: "Payment Success!",
                  subTitle: "Your item will be shipped soon!",
                  onPressed: () => {Get.offAll(() => const NavigationMenu())})),
              child: const Text("Checkout \$256.0")),
        ));
  }
}
