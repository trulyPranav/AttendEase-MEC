import 'package:attendease_mec/Models/subject.dart';
import 'package:attendease_mec/Providers/attendance_provider.dart';
import 'package:attendease_mec/Services/API/attendance_fetch.dart';
import 'package:attendease_mec/UI/Constants/primary_spinkit.dart';
import 'package:attendease_mec/UI/Screens/HomeScreen/HomeScreenComponents/Widgets/attendance_container.dart';
import 'package:attendease_mec/UI/Screens/HomeScreen/HomeScreenComponents/Widgets/dashboard_container.dart';
import 'package:attendease_mec/UI/Screens/HomeScreen/HomeScreenComponents/Widgets/three_dots.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeForeground extends StatefulWidget {
  const HomeForeground({super.key});

  @override
  State<HomeForeground> createState() => _HomeForegroundState();
}

class _HomeForegroundState extends State<HomeForeground> {
  late List<Subject> subjectDetails = [];
  bool isLoading = true; // Track loading state

  @override
  void initState() {
    super.initState();
    fetchData(); // Fetch the data when the screen initializes
  }

  // Fetch data and update state
  Future<void> fetchData() async {
    await AttendanceFetch.fetchClass(); // Fetch the class name first
    await AttendanceFetch.attendanceFetch(); // Then fetch attendance data

    // Now we can update the subjectDetails list
    setState(() {
      subjectDetails =
          AttendanceFetch.subjectDetails; // Update the subjectDetails list
      isLoading = false; // Set loading to false once data is fetched
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        spacing: 0,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ThreeDots(),
            ],
          ),
          DashboardContainer(),
          // Show loading spinner while data is being fetched
          isLoading
            ? Expanded(child: PrimarySpinkit(size: 60))
            : Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  itemCount: subjectDetails.length,
                  itemBuilder: (context, index) {
                    return AttendanceContainer(
                      subjectCode: subjectDetails[index].subCode,
                      subFullname: subjectDetails[index].name,
                      attendancePercent:
                          double.tryParse(subjectDetails[index].percentage),
                    );
                  },
                ),
              ),
        ],
      ),
    );
  }
}
