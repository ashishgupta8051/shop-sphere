

import 'package:get/get.dart';

class HomeControllers extends GetxController{
  static HomeControllers get instance => Get.find();

  Rx<int> currentIndex = 0.obs;

  //Update current index page
  void updatePageIndicator(index) => currentIndex.value = index;

}