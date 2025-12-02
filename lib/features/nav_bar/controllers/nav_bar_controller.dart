import 'package:flutter/material.dart'; // <-- এটা যোগ করতে হবে
import 'package:get/get.dart';
import '../../calender/presentations/screens/calender_screen.dart';
import '../../chat/presentations/screens/chat_screen.dart';
import '../../home/presentations/screen/home_screen.dart';
import '../../profile/presentations/screens/profile_screen.dart';
class NavBarController extends GetxController {
  var currentIndex = 0.obs;

  final pages = [

     Center(child: HomeScreen()),
     Center(child: CalenderScreen()),
     Center(child: ChatScreen()),
     Center(child: ProfileScreen()),
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }
}

