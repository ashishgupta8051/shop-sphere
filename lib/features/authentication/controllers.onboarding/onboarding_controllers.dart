

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

class OnBoardingControllers extends GetxController{
  static OnBoardingControllers get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentIndex = 0.obs;

  //Update current index page
  void updatePageIndicator(index) => currentIndex.value = index;

  //Jump to the specific dot selected page
  void dotNavigationClick(index){
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Update current index and jump to the next page
  void nextPage(){
    if(currentIndex.value == 2){
      Get.to(const LoginScreen());
    }else{
      int page = currentIndex.value + 1;
      pageController.jumpToPage(page);
    }

  }

  //Update current index and jump to the last page
  void skipPage(){
    // currentIndex.value = 2;
    // pageController.jumpToPage(2);
    Get.to(const LoginScreen());

  }
}