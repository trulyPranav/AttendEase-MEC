import 'package:attendease_mec/UI/Constants/constants.dart';
import 'package:attendease_mec/UI/Screens/LoginScreen/LoginScreenComponents/login_background.dart';
import 'package:attendease_mec/UI/Screens/LoginScreen/LoginScreenComponents/login_header.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryBackground,
        body: Stack(
          children: [
            LoginBackground(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginHeader()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}