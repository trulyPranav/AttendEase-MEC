import 'package:attendease_mec/UI/Constants/constants.dart';
import 'package:attendease_mec/UI/Controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';

class SkipLanding extends StatelessWidget {
  const SkipLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: getBottomBarHeight() - 50,
      left: 25,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text(
          "Skip",
          style: TextStyle(
            color: Colors.white70
          ),
          )
        ),
    );
  }
}
