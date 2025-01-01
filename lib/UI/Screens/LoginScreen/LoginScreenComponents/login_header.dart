import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [
          Color(0xFFFFFFFF),
          Color(0xFF1B1B1B)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(bounds),
      child: Text(
        "user login",
        style: TextStyle(
            fontSize: 68,
            fontWeight: FontWeight.w300,
            color: Colors.white,
            fontFamily: 'Roboto'
          ),
      ),
    );
  }
}
