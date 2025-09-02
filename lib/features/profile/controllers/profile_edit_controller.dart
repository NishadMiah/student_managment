import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProfileEditController extends GetxController {
  // Rx variables (reactive)
  var name = ''.obs;
  var fatherName = ''.obs;
  var phone = ''.obs;
  var roll = ''.obs;
  var address = ''.obs;

  // Date reactive variable
  var selectedDate = DateTime.now().obs;

  var gender = ''.obs; // Male / Female

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

  // Date picker method
  void pickDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate.value,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      selectedDate.value = picked;
    }
  }
  void updateGender(String? value) {
    if (value != null) gender.value = value;
  }
}

