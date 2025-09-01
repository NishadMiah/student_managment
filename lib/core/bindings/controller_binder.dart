import 'package:get/get.dart';

import '../../features/home/controllers/Carousel_Controller.dart';
import '../../features/nav_bar/controllers/nav_bar_controller.dart';
import '../../features/profile/controllers/image_picker_controller.dart';
import '../../features/profile/controllers/profile_edit_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {

    // NavBarController
    Get.lazyPut<NavBarController>(() => NavBarController(),fenix: true,);
    // CarouselControllerX
    Get.lazyPut<CarouselControllerX>(() => CarouselControllerX(), fenix: true);
    Get.lazyPut<ImagePickerController>(() => ImagePickerController(), fenix: true);
    Get.lazyPut<ProfileEditController>(() => ProfileEditController(), fenix: true);

  }
}