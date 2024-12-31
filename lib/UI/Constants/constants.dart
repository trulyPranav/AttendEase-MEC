import 'package:flutter/material.dart';
import 'package:get/get.dart';

const Color primaryBackground = Color(0xFF101010);
const Color homeContainerColor = Color(0xFF2A2A2A);
const Color dropDownColor = Color(0xFF242424);

const Gradient headingGradient = LinearGradient(
    colors: [Color(0xFFFFFFFF), Color(0xFFAAAAAA), Color(0xFF1B1B1B)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight);

Gradient onBoardingGradient = LinearGradient(
  colors: [
    Colors.white,
    Colors.grey,
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  stops: [0.2, 1.0],
);

Size screenSize() {
  if (Get.context != null) {
    return MediaQuery.of(Get.context!).size;
  } else {
    return Size(0, 0);
  }
}

double screenHeight() {
  if (Get.context != null) {
    return MediaQuery.of(Get.context!).size.height;
  } else {
    return 0.0;
  }
}

double screenWidth() {
  if (Get.context != null) {
    return MediaQuery.of(Get.context!).size.width;
  } else {
    return 0.0;
  }
}

double getAppBarHeight () {
  return kToolbarHeight;
}

double getBottomBarHeight () {
  return kBottomNavigationBarHeight;
}