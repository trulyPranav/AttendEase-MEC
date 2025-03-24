import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveLoginCredentials(String username, String password, String token) async {
  final prefs = await SharedPreferences.getInstance();
  
  await prefs.setString('username', username);
  await prefs.setString('password', password);
  await prefs.setString('token', token);
  print(token);
}