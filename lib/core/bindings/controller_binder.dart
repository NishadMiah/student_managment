import 'package:get/get.dart';

import '../../features/home/controllers/Carousel_Controller.dart';
import '../../features/nav_bar/controllers/nav_bar_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {

    // NavBarController
    Get.lazyPut<NavBarController>(() => NavBarController(),fenix: true,);
    // CarouselControllerX
    Get.lazyPut<CarouselControllerX>(() => CarouselControllerX(), fenix: true);

  }
}