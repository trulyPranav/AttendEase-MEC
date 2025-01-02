import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Image.asset(
                "assets/homescreen/leftBottom.png"
              ),
            ),
            Image.asset(
              "assets/homescreen/leftTop.png"
            )
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/homescreen/rightLeft.png"
                  ),
                  Image.asset(
                    "assets/homescreen/rightTop.png"
                  ),
                  Positioned(
                    right: 0,
                    child: Image.asset(
                      "assets/homescreen/rightBottom.png"
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 45,
                child: Image.asset(
                  "assets/homescreen/bottomRight.png"
                ),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset(
                  "assets/homescreen/bottomDown.png"
                ),
              ),
              Positioned(
                bottom: 80,
                child: Image.asset(
                  "assets/homescreen/bottomTop.png"
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}