import 'package:attendease_mec/Services/SharedPreferences/login_prefs.dart';
import 'package:flutter/material.dart';
import 'package:attendease_mec/Services/API/login.dart';

class Authentication {
  Future<void> usernameLogin(BuildContext context, String username, String password) async {
    try {
      final loginResponse = await Login.usernameLogin(username, password);
      if(loginResponse == null){
        showAlertDialog(context);
      } else {
        final token = loginResponse.accessToken;
        await saveLoginCredentials(username, password, token);
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Home(name: username, token: token)),
        // );
      }
    }
    catch (e) {
      showAlertDialog(context);
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