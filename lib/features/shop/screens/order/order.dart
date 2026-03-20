import 'package:ShopSphere/common/widgets/appbar/appbar.dart';
import 'package:ShopSphere/features/shop/screens/order/widget/order_list_items.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Text("My Orders", style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(SSizes.defaultSpace),
        child: SOrderListItems(),
      ),
    );
  }
}
