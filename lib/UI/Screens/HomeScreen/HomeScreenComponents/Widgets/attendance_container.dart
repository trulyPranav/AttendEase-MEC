import 'package:attendease_mec/UI/Constants/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

class AttendanceContainer extends StatelessWidget {
  final String subjectCode;
  final String subFullname;
  final double? attendancePercent;
  const AttendanceContainer({
    required this.subjectCode,
    required this.subFullname,
    required this.attendancePercent,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width; 
    return Container(
      height: screenHeight * 0.12,
      width: screenWidth * 0.9,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
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
                Expanded(child: Text(subFullname, style: TextStyle(color: Color(0xff747474),fontFamily: 'Roboto', fontWeight: FontWeight.w300, fontSize: 16), softWrap: true, overflow: TextOverflow.clip,))
              ],
            ),
          ),
          CircularPercentIndicator(
            radius: 35.0,
            lineWidth: 5.0,
            percent: attendancePercent!/100,
            backgroundColor: Color(0xFF2A2A2A),
            progressColor: Colors.white,
            circularStrokeCap: CircularStrokeCap.round,
            animation: true,
            animationDuration: 2500,
            center: Text(attendancePercent.toString(), style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}

class GoogleFonts {
}