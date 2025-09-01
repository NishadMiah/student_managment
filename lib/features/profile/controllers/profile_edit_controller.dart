import 'package:get/get.dart';

class ProfileEditController extends GetxController {
  // Rx variables (reactive)
  var name = ''.obs;
  var fatherName = ''.obs;
  var phone = ''.obs;
  var roll = ''.obs;
  var address = ''.obs;

  // Text update method
  void updateProfile({
    String? newName,
    String? newFatherName,
    String? newPhone,
    String? newRoll,
    String? newAddress,
  }) {
    if (newName != null) name.value = newName;
    if (newFatherName != null) fatherName.value = newFatherName;
    if (newPhone != null) phone.value = newPhone;
    if (newRoll != null) roll.value = newRoll;
    if (newAddress != null) address.value = newAddress;
  }
}
