import 'package:flutter/material.dart'; // <-- এটা যোগ করতে হবে
import 'package:get/get.dart';
import '../../calender/presentations/screens/calender_screen.dart';
import '../../home/presentations/screen/home_screen.dart';
import '../../profile/presentations/screens/profile_screen.dart';
class NavBarController extends GetxController {
  var currentIndex = 0.obs;

  // Pages list
  final pages = [
    const Center(child: HomeScreen()),
    const Center(child: CalenderScreen()),
    const Center(child: Text("👤 Profile Screen")),
    const Center(child: ProfileScreen()),
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }
}

