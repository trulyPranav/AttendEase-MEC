import 'package:attendease_mec/UI/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LandingWidget extends StatelessWidget {
  final String image;
  final String title;
  final Widget? startButton;
  const LandingWidget({
    required this.image,
    required this.title,
    this.startButton,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 80, 25, 80),
      decoration: BoxDecoration(
          gradient: onBoardingGradient,
          borderRadius: BorderRadius.circular(35)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset(
            image,
            height: 200,
            width: 200,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 70,
          ),
          Text(title),
          if (startButton != null) ...[
            SizedBox(height: 30),
            startButton!,
          ],
        ],
      ),
    );
  }
}