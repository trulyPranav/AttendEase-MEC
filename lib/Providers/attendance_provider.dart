import 'package:flutter/material.dart';

class AttendanceProvider extends ChangeNotifier {
  bool ready = false;
  void readyForLists(){
    ready = true;
    notifyListeners();
  }
  String token = '';
  void setToken(String token){
    token = token;
    notifyListeners();
  }
}