import 'package:attendease_mec/UI/Constants/constants.dart';
import 'package:attendease_mec/UI/Controllers/onboarding_controller.dart';
import 'package:attendease_mec/UI/Screens/LandingScrren/OnBoardingComponents/landing_navigation.dart';
import 'package:attendease_mec/UI/Screens/LandingScrren/OnBoardingComponents/landing_widget.dart';
import 'package:attendease_mec/UI/Screens/LandingScrren/OnBoardingComponents/next_navigation.dart';
import 'package:attendease_mec/UI/Screens/LandingScrren/OnBoardingComponents/skip_landing.dart';
import 'package:attendease_mec/UI/Screens/LandingScrren/OnBoardingComponents/swipe_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller  = Get.put(OnBoardingController());
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePage,
            children: [
              LandingWidget(
                image: 'assets/landingscreen/Hey.json',
                title: 'Hehe',
              ),
              LandingWidget(
                image: 'assets/landingscreen/Security.json',
                title: 'Secure',
              ),
              LandingWidget(
                image: 'assets/landingscreen/Partnership.json',
                title: 'LETSSGOO',
                startButton: LoginSwipeButton()
              )
            ],
          ),
          SkipLanding(),
          LandingNavigation(),
          NextNavigation()
        ],
      ),
    );
  }
}