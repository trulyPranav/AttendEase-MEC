import 'package:attendease_mec/Services/APIHandling/authentication.dart';
import 'package:attendease_mec/UI/Constants/constants.dart';
import 'package:attendease_mec/UI/Screens/LoginScreen/LoginScreenComponents/gradient_text_form_field.dart';
import 'package:attendease_mec/UI/Screens/LoginScreen/LoginScreenComponents/login_background.dart';
import 'package:attendease_mec/UI/Screens/LoginScreen/LoginScreenComponents/login_header.dart';
import 'package:simple_animated_button/simple_animated_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameTextField = TextEditingController();
  final passwordTextField = TextEditingController();
  late final Authentication authentication;
  @override
  void initState() {
  super.initState();
  usernameTextField.clear();
  passwordTextField.clear();
  authentication = Authentication();
  }
  Future<void> usernameLogin() async {
    await authentication.usernameLogin(context, usernameTextField.text, passwordTextField.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryBackground,
      body: Stack(
        children: [
          LoginBackground(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginHeader(),
                SizedBox(
                  height: 10,
                ),
                GradientTextFormField(
                  controller: usernameTextField,
                  hintText: "Username/Email",
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                GradientTextFormField(
                  controller: passwordTextField,
                  hintText: "Password",
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedLayerButton(
                  buttonHeight: 60,
                  buttonWidth: 120,
                  animationDuration: const Duration(milliseconds: 200),
                  animationCurve: Curves.easeIn,
                  topLayerChild: Text(  
                    "Login",
                    style: TextStyle(
                      color: smallTextColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300
                    ), 
                  ),
                  topDecoration: BoxDecoration(
                    gradient: buttonGradient, 
                    borderRadius: BorderRadius.circular(50)
                  ),
                  baseDecoration: BoxDecoration(  
                    gradient: secondaryButtonGradient,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  onClick: (){
                    usernameLogin();
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}