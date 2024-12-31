import 'package:attendease_mec/UI/Controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';

class NextNavigation extends StatelessWidget {
  const NextNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 5,
        right: 25,
        child: IconButton(
            onPressed: () => OnBoardingCOntroller.instance.nextPage(),
            icon: Icon(
              Icons.navigate_next_rounded,
              size: 35,
              color: Colors.white70,
            )));
  }
}
