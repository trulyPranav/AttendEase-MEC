import 'package:flutter/material.dart';

class ThreeDots extends StatefulWidget {
  const ThreeDots({super.key});

  @override
  State<ThreeDots> createState() => _ThreeDotsState();
}

class _ThreeDotsState extends State<ThreeDots> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Image.asset(
        "assets/homescreen/threeDots.png",
        height: 60,
        width: 60,
        color: Colors.white,
      ),
    );
  }
}