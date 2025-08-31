import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/common/custom_text.dart';
import '../../../../core/common/custom_textformfield.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/logo_path.dart';
import '../../../../routes/app_routes.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController emailController = TextEditingController();
    final TextEditingController fastnameController = TextEditingController();
    final TextEditingController lastnameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
        padding:EdgeInsets.symmetric(vertical:50.h,horizontal: 20.w
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image(image: AssetImage(LogoPath.appLogo),height: 120.h,width: 120.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(text: 'Log in',
                        fontSize: 24.sp,
                      ),
                      Text("hello,Welcome back to your account",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                ],
              ),SizedBox(height: 20.h,),
              CustomTextFormField(hintText: "Fast name",controller: emailController,),
              SizedBox(height: 20,),
              CustomTextFormField(hintText: "Last name",controller: fastnameController,),
              SizedBox(height: 20.h,),
              CustomTextFormField(hintText: "Phone",controller: lastnameController,),
             SizedBox(height: 20.h,),
              CustomTextFormField(hintText: "Email",controller:phoneController,),
              SizedBox(height: 60.h,),
              ElevatedButton(onPressed: (){
                Get.toNamed(AppRoute.navBarScreen);
              }, child:Center(
                child: Text("Sign up"),
              )),SizedBox(height: 290.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.loginScreen);
                    },
                    child: Text("Log in",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blue
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
