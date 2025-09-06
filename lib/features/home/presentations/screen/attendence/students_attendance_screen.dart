import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:student_managment/core/common/secondary_custom_text.dart';
import 'package:student_managment/core/utils/constants/app_colors.dart';
import '../../../../../core/common/custom_outline_container.dart';
import '../../../controllers/student_attendance_Controller.dart';
class StudentsAttendanceScreen extends StatelessWidget {
  StudentsAttendanceScreen({super.key});
  final AttendanceController controller = Get.find<AttendanceController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0.h,horizontal: 16.0.w),
        child: Column(
          children: [
            SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: CustomOutlineContainer(title: '7th',
                    icon: Icons.arrow_drop_down_sharp,),
                ),
                GestureDetector(
                  onTap: () => controller.pickDate(context),
                  child: Obx(
                        () => CustomOutlineContainer(title:'${controller.selectedDate.value.day}-${controller.selectedDate.value.month}-${controller.selectedDate.value.year}',
                      icon: Icons.calendar_month,),
                  ),
                ),
              ],
            ),SizedBox(height: 20.h,),
            Expanded(
              child: Obx(
                    () => ListView(
                  children: [
                    // Header Container
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.withValues(alpha: 0.2)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Expanded(
                            child: SecondaryCustomText(text: "Name")
                          ),
                          SecondaryCustomText(text: "Present"),
                          SizedBox(width: 25),
                          SecondaryCustomText(text: "Absent"),

                        ],
                      ),
                    ),
                    // Student list
                    ...List.generate(controller.students.length, (index) {
                      final student = controller.students[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(student.imageUrl),
                          ),
                          title: SecondaryCustomText(text:student.name,),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Present
                              GestureDetector(
                                onTap: () => controller.toggleAttendance(index, true),
                                child: Icon(
                                  student.isPresent
                                      ? Icons.check_circle_outline
                                      : Icons.radio_button_unchecked,
                                  color: student.isPresent ? Colors.deepPurple : Colors.grey,
                                ),
                              ),
                              SizedBox(width: 40.w),

                              // Absent
                              GestureDetector(
                                onTap: () => controller.toggleAttendance(index, false),
                                child: Icon(
                                  !student.isPresent
                                      ? Icons.check_circle_outline
                                      : Icons.radio_button_unchecked,
                                  color: !student.isPresent ? Colors.deepPurple : Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
