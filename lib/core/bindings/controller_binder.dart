import 'package:get/get.dart';

import '../../features/chat/controllers/individual_chat_controller.dart';
import '../../features/home/controllers/Carousel_Controller.dart';
import '../../features/home/controllers/event_controller.dart';
import '../../features/home/controllers/student_attendance_Controller.dart';
import '../../features/home/controllers/teacher_attendance_controller.dart';
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
    // AttendanceController
    Get.lazyPut<AttendanceController>(() => AttendanceController(), fenix: true);
    // CalendarController ✅ এখানে bind করো
    Get.lazyPut<CalendarController>(() => CalendarController(), fenix: true);
    //students chat controllers
    Get.lazyPut<UserController>(() => UserController(), fenix: true);

    // EventController ✅ bind here
    Get.lazyPut<EventController>(() => EventController(), fenix: true);
  }
}