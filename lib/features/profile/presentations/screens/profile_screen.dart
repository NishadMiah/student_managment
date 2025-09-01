import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student_managment/core/utils/constants/app_colors.dart';
import '../../../../core/common/custom_text.dart';
import '../../../../core/common/prymari_text.dart';
import '../../../../routes/app_routes.dart';
import '../../controllers/image_picker_controller.dart';
import '../../controllers/profile_edit_controller.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final ImagePickerController imagecontroller = Get.find<ImagePickerController>();
    final profileEditController = Get.find<ProfileEditController>();

    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
        title: Text("Profile"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Get.toNamed(AppRoute.profileEditScreen);
              },
                child: Icon(Icons.edit)),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Obx(() {
                return CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey.shade300,
                  backgroundImage: imagecontroller.pickedImage.value != null
                      ? FileImage(imagecontroller.pickedImage.value!)
                      : null,
                  child: imagecontroller.pickedImage.value == null
                      ? const Icon(Icons.person, size: 50, color: Colors.white)
                      : null,
                );
              }),
              SizedBox(height: 10,),
              Obx(() =>customText(text: '${profileEditController.name.value}', fontSize: 18)),
              PrymariText(text: '7th Grade ID:S12334'),
              SizedBox(height: 40,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue.withValues(alpha: 0.1)
                ),
                child:Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrymariText(text: 'Date of birth'),
                          PrymariText(text: '30-nov-2011'),
                        ],
                      ),SizedBox(height: 15.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrymariText(text: 'Father Name'),
                          Obx(() =>PrymariText(text: '${profileEditController.fatherName.value}')),
                        ],
                      ),SizedBox(height: 15.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrymariText(text: 'Gender'),
                          PrymariText(text: 'male'),
                        ],
                      ),SizedBox(height: 15.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrymariText(text: 'Class'),
                          PrymariText(text: '7th'),
                        ],
                      ),SizedBox(height: 15.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrymariText(text: 'Rool number'),
                          PrymariText(text: '04'),
                        ],
                      ),SizedBox(height: 15.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrymariText(text: 'phone number'),
                          PrymariText(text: '+7453475374'),
                        ],
                      ),SizedBox(height: 15.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrymariText(text: 'address'),
                          PrymariText(text: 'gfgnfgnxfgf'),
                        ],
                      ),SizedBox(height: 15.h,),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white10, // Button background color
                  ),
                  onPressed: (){},
                  child:Center(
                    child: Text("Log out",
                      style: TextStyle(
                        color: Colors.red
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
