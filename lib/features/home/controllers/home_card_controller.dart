import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeCardController extends GetxController {
  // Grid items reactive list
  final RxList<Map<String, dynamic>> gridItems = <Map<String, dynamic>>[
    {"icon": Icons.calendar_month, "text": "Attendance", "color": Colors.cyan},
    {"icon": Icons.menu_book_outlined, "text": "Exam", "color": Colors.green},
    {"icon": Icons.sticky_note_2_outlined, "text": "Leave", "color": Colors.orange},
    {"icon": Icons.school, "text": "Fees", "color": Colors.blueGrey},
    {"icon": Icons.calendar_month, "text": "Attendance", "color": Colors.yellowAccent},
    {"icon": Icons.menu_book_outlined, "text": "Exam", "color": Colors.brown},
    {"icon": Icons.sticky_note_2_outlined, "text": "Leave", "color": Colors.purpleAccent},
    {"icon": Icons.school, "text": "Fees", "color": Colors.red},
  ].obs;

  // selected index track
  var selectedIndex = (-1).obs;

  void selectItem(int index) {
    selectedIndex.value = index;
  }
}
