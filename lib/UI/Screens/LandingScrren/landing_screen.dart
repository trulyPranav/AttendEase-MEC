import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  void initState(){
    super.initState();
  Future.delayed(const Duration(milliseconds: 3000), () async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('firstTime', false);
    if (mounted) {
      Navigator.pop(context);
    }
  });
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Center(
        child: Text("LANDING SCREEN"),
      ),
    );
  }
}