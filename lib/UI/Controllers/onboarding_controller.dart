import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingCOntroller extends GetxController {

  static OnBoardingCOntroller get instance => Get.find();

  final pageController = PageController();

  Rx<int> currentPageIndex = 0.obs;

  void updatePage(index) => currentPageIndex.value = index;

  void dotNavigation(index){
    currentPageIndex.value = index;
    pageController.animateToPage(
      index,
      duration:
          const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      //Login Screen
    } else {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(
        page,
        duration:
            const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void skipPage(){
    currentPageIndex.value = 2;
    pageController.animateToPage(
      2,
      duration:
          const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}