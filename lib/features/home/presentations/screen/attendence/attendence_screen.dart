import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_managment/core/utils/constants/app_colors.dart';
import 'package:student_managment/features/home/presentations/screen/attendence/students_attendance_screen.dart';
import 'package:student_managment/features/home/presentations/screen/attendence/teacher_attendance_screen.dart';
class AttendenceScreen extends StatelessWidget {
  const AttendenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // number of tabs
      child: Scaffold(
        backgroundColor: AppColors.primaryBackground,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          title: Text("Attendance"),
          bottom: TabBar(
            labelStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            indicatorSize:TabBarIndicatorSize.tab ,
            tabs: [
              Tab(text: "Student",),
              Tab(text: "Teacher",),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: StudentsAttendanceScreen()),
            Center(child:TeacherAttendanceScreen()),
          ],
        ),
      ),
    );
  }
}
