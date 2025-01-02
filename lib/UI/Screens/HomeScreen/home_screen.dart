import 'package:attendease_mec/UI/Constants/constants.dart';
import 'package:attendease_mec/UI/Screens/HomeScreen/HomeScreenComponents/home_background.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: SafeArea(
        child: Stack(
          children: [
            HomeBackground()
          ],
        )
      ),
    );
  }
}