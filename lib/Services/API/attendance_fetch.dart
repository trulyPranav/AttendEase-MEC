import 'package:attendease_mec/Models/subject.dart';
import 'package:attendease_mec/Services/API/base_api.dart';
import 'package:attendease_mec/Services/SharedPreferences/login_prefs.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class AttendanceFetch {
  static final apiBaseUrl = BaseApi.baseAPI;
  static late String className;
  static var subjectID = <String>[];
  static var subjectName = <String>[];
  static var subjectDetails = <Subject>[];

  static attendanceFetch() async {
  final prefs = await SharedPreferences.getInstance();
  var token = prefs.getString('token');
    final url = Uri.parse("$apiBaseUrl/institutionuser/courses/withusers");
    try {
      final apiResponse = await http.get(
        url,
        headers: {
          'Authorization' : 'Bearer $token',
          'Accept' : 'application/json, text/plain, */*'
        }
      );
      var response = json.decode(apiResponse.body);
      // Add the subjects' name and IDs to the lists one by one through iteration, hemmmeeee!!!
      for (int i = 0; i < response.length; i++) {
        if(response[i]["usersubgroup"]["name"] == className) {
          subjectID.add(response[i]["id"].toString());
          subjectName.add(response[i]["name"].toString().toUpperCase());
        }
      }
      for (int i=0; i < subjectID.length; i++){
        var subjectFetchedData = await fetchIndividualAttendance(subjectID[i].toString());
        List<String> subCodeAPIWastes = subjectFetchedData['course']['code'].split("-");
        String subCode = subCodeAPIWastes[0];
        Subject subject = Subject(
          subCode: subCode,
          name: subjectName[i],
          present: subjectFetchedData['present'].toString(),
          total: subjectFetchedData['totel'].toString(),
          percentage: subjectFetchedData['persantage'].toString()
        );
        subjectDetails.add(subject);
      }
      print(subjectDetails);
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }

  static fetchIndividualAttendance(String id) async {
  final prefs = await SharedPreferences.getInstance();
  var token = prefs.getString('token');
    final url = Uri.parse("$apiBaseUrl/attendancereports/institutionuser/courses/$id/summery");
    try {
      final response = await http.get(
        url,
        headers: {
          'Authorization' : 'Bearer $token',
          'Accept' : 'application/json, text/plain, */*'
        }
      );
      return json.decode(response.body);
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }

  // First Step
  static fetchClass() async {
  final prefs = await SharedPreferences.getInstance();
  var token =  prefs.getString('token');
    final url = Uri.parse("$apiBaseUrl/usersubgroups");
    try{
      final apiResponse = await http.get(
        url,
        headers: {
          'Authorization' : 'Bearer $token',
          'Accept' : 'application/json, text/plain, */*'
        }
      );
      var response = json.decode(apiResponse.body);
      print(response);
      className = response[0]["name"];
      print(className);
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }
}