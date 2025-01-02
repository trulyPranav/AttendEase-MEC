import 'package:flutter/material.dart';
import 'package:attendease_mec/UI/Constants/constants.dart';
import 'package:attendease_mec/UI/Screens/LoginScreen/LoginScreenComponents/underline_gradient.dart';

class GradientTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double maxWidth;

  const GradientTextFormField({
    required this.controller,
    required this.hintText,
    required this.maxWidth,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(50, 20, 70, 20),
          child: CustomPaint(
            painter: hintText == "Username/Email"
                ? GradientUnderlinePainterUsername(maxWidth)
                : GradientUnderlinePainterPassword(maxWidth),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                hintFadeDuration: Durations.medium2,
                hintStyle: TextStyle(
                  color: smallTextColor,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w100,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
              cursorColor: Colors.white54,
              style: TextStyle(
                color: smallTextColor,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w300,
              ),
              obscureText: hintText=='Username/Email' ? false : true,
              keyboardType: hintText=='Username/Email' ? TextInputType.text : TextInputType.visiblePassword,
            ),
          ),
        );
      },
    );
  }
}
