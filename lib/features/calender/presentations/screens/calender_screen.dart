import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student_managment/core/utils/constants/app_colors.dart';
import '../../../home/controllers/teacher_attendance_controller.dart';
import 'advance_calender_screen.dart';
class CalenderScreen extends StatelessWidget {
  CalenderScreen({super.key});
  final CalendarController controller = Get.find<CalendarController>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // number of tabs
      child: Scaffold(
        backgroundColor: AppColors.primaryBackground,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          surfaceTintColor: Colors.transparent,
          title: Text("Calender"),
          bottom: TabBar(
            labelStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            indicatorSize:TabBarIndicatorSize.tab ,
            tabs: [
              Tab(text: "Attendance",),
              Tab(text: "Time Table",),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: AdvanceCalenderScreen ()),
            Center(child:AdvanceCalenderScreen ()),
          ],
        ),
      ),
    );
  }
}
