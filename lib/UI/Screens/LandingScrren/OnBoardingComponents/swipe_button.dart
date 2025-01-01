import 'package:attendease_mec/UI/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginSwipeButton extends StatefulWidget {
  const LoginSwipeButton({super.key});

  @override
  State<LoginSwipeButton> createState() => _LoginSwipeButtonState();
}

class _LoginSwipeButtonState extends State<LoginSwipeButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35.0, right: 35.0),
      child: SwipeButton.expand(
        elevationThumb: 5,
        thumb: Icon(
          Icons.double_arrow_rounded,
          color: Colors.white,
        ),
        activeThumbColor: primaryBackground,
        inactiveThumbColor: Colors.grey[500],
        inactiveTrackColor: primaryBackground,
        activeTrackColor: Colors.grey[500],
        enabled: true,
        // thumbPadding: EdgeInsets.all(5.0),
        onSwipe: () async {
          Navigator.pop(context);
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setBool('firstTime', false);
        },
        child: Text(
          "Continue to Login",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
