import 'package:ShopSphere/common/widgets/appbar/appbar.dart';
import 'package:ShopSphere/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../checkout/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(title: Text("Cart", style: Theme.of(context).textTheme.headlineSmall), showBackArrow: true,),
      body: const Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: SCartItems()),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text("Checkout \$256.0")),
      ),
    );
  }
}

