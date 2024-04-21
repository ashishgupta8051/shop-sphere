import 'package:ShopSphere/common/widgets/appbar/appbar.dart';
import 'package:ShopSphere/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Text(
          "Store",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          SCartCounterIcon(
            onPressed: () {},
            isHomePage: false,
          )
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxSelected) {
            return [];
          },
          body: Container()),
    );
  }
}
