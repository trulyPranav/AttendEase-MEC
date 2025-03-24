import 'package:attendease_mec/UI/Constants/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

class AttendanceContainer extends StatelessWidget {
  final String subjectCode;
  final String subFullname;
  final double? attendancePercent;
  final double? presentClasses;
  final double? totalClasses;
  const AttendanceContainer({
    required this.subjectCode,
    required this.subFullname,
    required this.attendancePercent,
    required this.presentClasses,
    required this.totalClasses,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width; 
    return Container(
      height: screenHeight * 0.13,
      width: screenWidth * 0.9,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        // color: Color(0xFF2A2A2A),
        gradient: attendanceContainerGradient,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(subjectCode, style: TextStyle(color: Colors.white, fontFamily: 'Roboto', fontWeight: FontWeight.w300, fontSize: 16), textAlign: TextAlign.left),
                Expanded(child: Text(subFullname, style: TextStyle(color: Color.fromARGB(255, 161, 161, 161),fontFamily: 'Roboto', fontWeight: FontWeight.w300, fontSize: 15), softWrap: true, overflow: TextOverflow.clip,)),
              ],
            ),
          ),
          CircularPercentIndicator(
            radius: 35.0,
            lineWidth: 5.0,
            percent: attendancePercent!/100,
            backgroundColor: Color(0xFF2A2A2A),
            progressColor: colorSelector(attendancePercent),
            circularStrokeCap: CircularStrokeCap.round,
            animation: true,
            animationDuration: 2500,
            center: Text(attendancePercent.toString(), style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
  Color colorSelector (double? attendancePercent){
    attendancePercent = attendancePercent!.toDouble();
    if(90 <= attendancePercent && attendancePercent <= 100){
      return Colors.white;
    } else if (85 <= attendancePercent && attendancePercent < 90){
      return const Color.fromARGB(225, 202, 182, 3);
    } else if (80 <= attendancePercent && attendancePercent < 85){
      return Colors.orange;
    } else if (75 < attendancePercent && attendancePercent < 80) {
      return const Color.fromARGB(255, 223, 63, 51);
    } else {
      return const Color.fromARGB(255, 173, 12, 0);
    }
  }
}