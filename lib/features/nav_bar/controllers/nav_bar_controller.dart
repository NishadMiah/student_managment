import 'package:flutter/material.dart'; // <-- এটা যোগ করতে হবে
import 'package:get/get.dart';

import '../../home/presentations/screen/home_screen.dart';

class NavBarController extends GetxController {
  var currentIndex = 0.obs;

  // Pages list
  final pages = [
    const Center(child: HomeScreen()),
    const Center(child: Text("🔍 Search Screen")),
    const Center(child: Text("👤 Profile Screen")),
    const Center(child: Text("👤 Profile Screen")),
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }
}

