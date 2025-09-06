import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/attendance/student_attendance_model.dart';

class AttendanceController extends GetxController {
  var students = <Student>[
    Student(
      name: "Leslie Alexander",
      imageUrl: "https://randomuser.me/api/portraits/women/1.jpg",
      isPresent: true,
    ),
    Student(
      name: "Leslie Alexander",
      imageUrl: "https://randomuser.me/api/portraits/women/1.jpg",
      isPresent: true,
    ),
    Student(
      name: "Leslie Alexander",
      imageUrl: "https://randomuser.me/api/portraits/women/1.jpg",
      isPresent: true,
    ),
    Student(
      name: "Leslie Alexander",
      imageUrl: "https://randomuser.me/api/portraits/women/1.jpg",
      isPresent: true,
    ),
    Student(
      name: "Wade Warren",
      imageUrl: "https://randomuser.me/api/portraits/men/2.jpg",
      isPresent: false,
    ),
    Student(
      name: "Wade Warren",
      imageUrl: "https://randomuser.me/api/portraits/men/2.jpg",
      isPresent: false,
    ),
    Student(
      name: "Wade Warren",
      imageUrl: "https://randomuser.me/api/portraits/men/2.jpg",
      isPresent: false,
    ),Student(
      name: "Wade Warren",
      imageUrl: "https://randomuser.me/api/portraits/men/2.jpg",
      isPresent: false,
    ),
    Student(
      name: "Jenny Wilson",
      imageUrl: "https://randomuser.me/api/portraits/women/3.jpg",
      isPresent: true,
    ),
    Student(
      name: "Jenny Wilson",
      imageUrl: "https://randomuser.me/api/portraits/women/3.jpg",
      isPresent: true,
    ),
    Student(
      name: "Jenny Wilson",
      imageUrl: "https://randomuser.me/api/portraits/women/3.jpg",
      isPresent: true,
    ),
  ].obs;

  void toggleAttendance(int index, bool present) {
    students[index].isPresent = present;
    students.refresh(); // UI update হবে
  }
  var selectedDate = DateTime.now().obs; // reactive date variable

  void pickDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate.value,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      selectedDate.value = picked;
    }
  }
}


