import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import '../controllers/nav_bar_controller.dart';

class NavBarScreen extends StatelessWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NavBarController>();

    return Obx(
          () => Scaffold(
        body: controller.pages[controller.currentIndex.value],
        bottomNavigationBar: CrystalNavigationBar(
          currentIndex: controller.currentIndex.value,
          unselectedItemColor: Colors.black45,
          backgroundColor: Colors.blue.withValues(alpha: 0.3),
          outlineBorderColor: Colors.transparent,
          onTap: (index) => controller.changePage(index),
          items: [
            CrystalNavigationBarItem(
              icon: Icons.home,
              selectedColor: Colors.blue,
            ),
            CrystalNavigationBarItem(
              icon: Icons.calendar_month,
              selectedColor: Colors.blue,
            ),
            CrystalNavigationBarItem(
              icon: Icons.message,
              selectedColor: Colors.blue,
            ),
            CrystalNavigationBarItem(
              icon: Icons.person,
              selectedColor: Colors.blue,
            ),

          ],
        ),
      ),
    );
  }
}
