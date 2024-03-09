

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../screens/home/home.dart';

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomeScreen(), Container(color: Colors.purple, child: const Center(child: Text("Store"))), Container(color: Colors.orange, child: const Center(child: Text("Wishlist"))), Container(color: Colors.blue, child: const Center(child: Text("Profile")))];
}