import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:ShopSphere/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:fraud_sdk_flutter/fraud_sdk_flutter.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'features/shop/controllers/nav_controller/nav_controller.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  _NavigationMenuState createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  final controller = Get.put(NavigationController());

  @override
  void initState() {
    super.initState();
    getIntelligence();
  }

  Future<void> getIntelligence() async {
    try {
      var response = await Sign3IntelligencePlugin.getIntelligence();
      print("TAG_GET_INTELLIGENCE: $response");
    } catch (e) {
      print("TAG_GET_INTELLIGENCE_ERROR: ${e.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: dark ? SColors.black : SColors.white,
          indicatorColor: dark ? SColors.white.withOpacity(0.1) : SColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}
