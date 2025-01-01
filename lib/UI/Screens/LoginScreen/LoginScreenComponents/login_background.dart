
import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Image.asset(
                "assets/loginscreen/leftBottom.png",
              ),
            ),
            Image.asset(
              "assets/loginscreen/leftTop.png",
            ),
          ],
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/loginscreen/rightBottom.png",
                  ),
                  Positioned(
                    right: 0,
                    child: Image.asset(
                      "assets/loginscreen/rightTop.png",
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Image.asset(
                      "assets/loginscreen/rightBottomSmall.png",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              Image.asset(
                "assets/loginscreen/bottomUp.png",
              ),
              Positioned(
                top: 40,
                child: Image.asset(
                  "assets/loginscreen/bottomDown.png",
                ),
              ),
              Positioned(
                right: 0,
                child: Image.asset(
                  "assets/loginscreen/bottomRight.png",
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}