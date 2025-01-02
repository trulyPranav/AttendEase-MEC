import 'package:attendease_mec/UI/Constants/constants.dart';
import 'package:flutter/material.dart';

class DashboardContainer extends StatelessWidget {
  const DashboardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.9,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
        decoration: BoxDecoration(
          color: Color(0xFF2A2A2A),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Stack(
          children: [
            Image.asset("assets/homescreen/mainContainer.png"),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset("assets/homescreen/subContainer.png"),
            ),
            Positioned(
              left: 20,
              top: 25,
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [
                    Color.fromARGB(255, 214, 214, 214),            
                    Color.fromARGB(255, 56, 56, 56)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.5,1.0]
                ).createShader(bounds),
                child: Text(
                  "AttendEase",
                  style: TextStyle(
                    color: smallTextColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 32
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
