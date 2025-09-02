import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:student_managment/core/common/secondary_custom_text.dart';
import 'package:student_managment/core/utils/constants/app_colors.dart';
import '../../../../core/common/custom_textformfield.dart';
import '../../controllers/individual_chat_controller.dart';
class IndividualChatScreen extends StatelessWidget {
   IndividualChatScreen({super.key});
  final TextEditingController searchController = TextEditingController();
   final UserController controller = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.primaryBackground,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:10),
            child: Column(
              children: [
                SizedBox(height: 20.h,),
                CustomTextFormField(
                  controller: searchController,
                  hintText: 'Search anithing',
                  prefixIcon: Icon(Icons.search),
                ),SizedBox(height: 20,),
                Expanded(
                  child: Obx(
                        () {
                      if (controller.users.isEmpty) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      return ListView.builder(
                        itemCount: controller.users.length,
                        itemBuilder: (context, index) {
                          final user = controller.users[index];
                          return ListTile(trailing: Icon(Icons.phone),
                            leading:
                                CircleAvatar(
                                  backgroundImage: NetworkImage(user.imageUrl),
                                  radius: 30,
                                ),
                            title:
                                SecondaryCustomText(text:user.name),
                            subtitle: SecondaryCustomText( text:user.message ?? "" ,),
                          );
                        },
                      );
                    },
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }
}
