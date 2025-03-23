// ignore_for_file: use_build_context_synchronously

import 'package:attendease_mec/Providers/attendance_provider.dart';
import 'package:attendease_mec/Services/SharedPreferences/login_prefs.dart';
import 'package:attendease_mec/UI/Screens/HomeScreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:attendease_mec/Services/API/login.dart';
import 'package:provider/provider.dart';

class Authentication {
  Future<void> usernameLogin(BuildContext context, String username, String password) async {
    try {
      final loginResponse = await Login.usernameLogin(username, password);
      if(loginResponse == null){
        showAlertDialog(context);
      } else {
        final token = loginResponse.accessToken;
        Provider.of<AttendanceProvider>(context, listen: false).setToken(token);
        await saveLoginCredentials(username, password, token);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    }
    catch (e) {
      showAlertDialog(context);
      print(e);
    }
  }
  void showAlertDialog(BuildContext context) {
    Widget retryButton = ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text("Retry", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
    );

    AlertDialog alert = AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      actionsAlignment: MainAxisAlignment.center,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Invalid credentials", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      actions: [
        retryButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}