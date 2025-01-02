import 'package:attendease_mec/UI/Screens/HomeScreen/HomeScreenComponents/Widgets/dashboard_container.dart';
import 'package:attendease_mec/UI/Screens/HomeScreen/HomeScreenComponents/Widgets/three_dots.dart';
import 'package:flutter/material.dart';

class HomeForeground extends StatelessWidget {
  const HomeForeground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ThreeDots()
            ],
          ),
          DashboardContainer()
        ],
      ),
    );
  }
}