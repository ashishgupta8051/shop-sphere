import 'package:ShopSphere/common/widgets/appbar/appbar.dart';
import 'package:ShopSphere/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(title: Text("Order Review", style: Theme.of(context).textTheme.headlineSmall), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(SSizes.defaultSpace),
            child: Column(
              children: [

              ],
            )
        ),
      ),
    );
  }
}

