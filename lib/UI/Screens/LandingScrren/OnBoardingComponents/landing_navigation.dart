import 'package:attendease_mec/UI/Constants/constants.dart';
import 'package:attendease_mec/UI/Controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingNavigation extends StatelessWidget {
  const LandingNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      bottom: getBottomBarHeight() - 30,
      left: 0,
      right: 0,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigation,
          count: 3,
          effect: const ExpandingDotsEffect(
              activeDotColor: Colors.white,
              dotHeight: 6
            ),
        ),
      ),
    );
  }
}
