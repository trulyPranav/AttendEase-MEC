import 'package:attendease_mec/UI/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LandingWidget extends StatelessWidget {
  final String image;
  final String title;
  const LandingWidget({
    required this.image,
    required this.title,
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
        spacing: 70,
        children: [
          LottieBuilder.asset(
            image,
            height: 200,
            width: 200,
            fit: BoxFit.contain,
          ),
          Text(title),
        ],
      ),
    );
  }
}
