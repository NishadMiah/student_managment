import 'package:get/get.dart';

import '../../features/nav_bar/controllers/nav_bar_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {

    // NavBarController
    Get.lazyPut<NavBarController>(() => NavBarController(),fenix: true,);

  }
}