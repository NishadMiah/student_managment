import 'package:get/get.dart';

class CalendarController extends GetxController {
  var focusedDay = DateTime.now().obs;
  var selectedDay = DateTime.now().obs;

  void onDaySelected(DateTime day, DateTime focused) {
    selectedDay.value = day;
    focusedDay.value = focused;
  }
}
