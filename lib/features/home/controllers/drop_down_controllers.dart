import 'package:get/get.dart';

class DropdownController extends GetxController {
  var isDropdownVisible = false.obs;

  void toggleDropdown() {
    isDropdownVisible.value = !isDropdownVisible.value;
  }
}
