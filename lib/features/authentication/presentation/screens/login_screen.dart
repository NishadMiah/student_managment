import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student_managment/core/utils/constants/app_colors.dart';
import 'package:student_managment/core/utils/constants/logo_path.dart';
import 'package:student_managment/features/authentication/presentation/widgets/CustomTextFormField.dart';
import 'package:student_managment/routes/app_routes.dart';
import '../../../../core/common/custom_text.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();


    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
        padding:EdgeInsets.symmetric(vertical:50.h,horizontal: 20.w
        ),
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
            CustomTextFormField(hintText: "Enter Your Email Address",controller: emailController,),
            SizedBox(height: 20,),
            CustomTextFormField(
              controller:passwordController,
              hintText: "Enter Password",
              obscureText: true,
              suffixIcon: IconButton(
                icon: const Icon(Icons.visibility_off, color: Colors.grey),
                onPressed: () {
                },
              ),
            ),SizedBox(height: 5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot password?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                )
              ],
            ),SizedBox(height: 60.h,),
            ElevatedButton(onPressed: (){}, child:Center(
              child: Text("Log in"),
            )),Spacer(),
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
                    Get.toNamed(AppRoute.signUpScreen);
                  },
                  child: Text("Sign up",
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
    );
  }
}
