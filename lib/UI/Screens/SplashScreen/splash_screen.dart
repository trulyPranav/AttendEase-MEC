import 'package:attendease_mec/UI/Constants/constants.dart';
import 'package:attendease_mec/UI/Screens/LandingScrren/landing_screen.dart';
import 'package:attendease_mec/UI/Screens/LoginScreen/login_screen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  check(context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? firstTime = prefs.getBool('firstTime');
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen()
      )
    );
    if (firstTime == null || firstTime == true) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LandingScreen()
        ),
      );
    }
  }
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 5000), () {
      if(mounted) {
        check(context);
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Center(
        child: LoadingAnimationWidget.halfTriangleDot(
          color: Colors.white,
          size: 100
        ),
      ),
    );
  }
}