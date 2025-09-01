import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:student_managment/core/utils/constants/icon_path.dart';
import '../../../../core/common/custom_elevated_button.dart';
import '../../../../core/common/custom_textformfield.dart';
import '../../controllers/image_picker_controller.dart';
import '../../controllers/profile_edit_controller.dart';
class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController fathernameController = TextEditingController();
    TextEditingController roolController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();

    final ImagePickerController controller = Get.find<ImagePickerController>();
    final profileEditController = Get.find<ProfileEditController>();



    return Scaffold(
      body: Padding(
            padding: EdgeInsets.only(left: 16.w,right: 16.w,bottom: 10.h,top: 60.h),
            child: SingleChildScrollView(
              child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                          Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(16),
                            child: Wrap(
                              children: [
                                ListTile(
                                  leading: const Icon(Icons.camera),
                                  title: const Text("Camera"),
                                  onTap: () {
                                    controller.pickFromCamera();
                                    Get.back();
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(Icons.photo_library),
                                  title: const Text("Gallery"),
                                  onTap: () {
                                    controller.pickFromGallery();
                                    Get.back();
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: Obx(() {
                        return Container(
                          height: 133.h,
                          width: 133.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xFF2E2B2A),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              // Picked image or default icon
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: controller.pickedImage.value != null
                                    ? Image.file(
                                  controller.pickedImage.value!,
                                  height: 133.h,
                                  width: 133.w,
                                  fit: BoxFit.cover,
                                )
                                    : Image.asset(
                                 IconPath.camIcon,
                                  height: 26.h,
                                  width: 26.h,
                                ),
                              ),
                              // Bottom Change overlay
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  height: 55.h,
                                  width: 130.w,
                                  decoration: const BoxDecoration(
                                    color: Color(0xB54A4A4A),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(100),
                                      bottomRight: Radius.circular(100),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Change",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.grey,
                                        decorationThickness: 1.5,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),SizedBox(height: 20.h,),
                    CustomTextFormField(hintText: "Enter your name",
                      controller:nameController,
                      onChanged: (value) {
                        profileEditController.updateProfile(newName: value);
                      },
                    ),
                    SizedBox(height: 20,),
                    CustomTextFormField(
                      hintText: "Enter Your Father name",
                      controller: fathernameController,
                      onChanged: (value) {
                        profileEditController.updateProfile(newFatherName: value);
                      },
                    ),
                    SizedBox(height: 20.h,),
                    CustomTextFormField(hintText: "Enter Your Phone number",controller:phoneController,),
                    SizedBox(height: 20.h,),
                    CustomTextFormField(hintText: "Enter Your Rool",controller:roolController,),
                    SizedBox(height: 20.h,),
                    CustomTextFormField(hintText: "Enter Your Address",controller:addressController,),
                    SizedBox(height: 20.h,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.grey.withValues(alpha: 0.5)
                        )
                      ),child: Padding(
                        padding:EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("date of birth",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp
                          ),),
                          Row(
                            children: [
                              Text("12/12/12",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp
                              )),SizedBox(width: 20.w,),
                              Icon(Icons.arrow_drop_down_sharp,size: 30,)
              
                            ],
                          )
                        ],
                        ),
                      ),
                    ),SizedBox(height: 20.h,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: Colors.grey.withValues(alpha: 0.5)
                          )
                      ),child: Padding(
                      padding:EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Gender",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp
                          ),),
                          Row(
                            children: [
                              Text("Male",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp
                              )),SizedBox(width: 20.w,),
                              Icon(Icons.arrow_drop_down_sharp,size: 30,)
                            ],
                          )
                        ],
                      ),
                    ),
                    ),SizedBox(height: 100.h,),
                    CustomElevatedButton(
                      text: "Save",
                      onPressed: () {
                        profileEditController.updateProfile(
                          newName: nameController.text,
                          newFatherName: fathernameController.text,
                          newRoll: roolController.text,
                          newPhone: phoneController.text,
                          newAddress: addressController.text,
                        );
                        Get.back();
                      },
                    ),
                  ]
              ),
            ),

        ),

    );
  }
}
