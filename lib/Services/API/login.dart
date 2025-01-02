import 'dart:convert';
import 'package:attendease_mec/Services/API/base_api.dart';
import 'package:http/http.dart' as http;
import 'package:attendease_mec/models/login_response.dart';

class Login {
  static final String apiBaseUrl = BaseApi.baseAPI;
  static Future<LoginResponse?> usernameLogin(String username, String password) async {
    final url = Uri.parse("$apiBaseUrl/login");
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode({
          "password": password,
          "username": username,
        }),
      );
      if (response.statusCode == 200) {
        final loginResponse = LoginResponse
        .fromJson(
          json.decode(response.body)
        );
        print(loginResponse);
        return loginResponse;
      } else {
        return null;
      }
    } 
    catch(e){
      print("Error: $e");
      return null;
    }
  }
}