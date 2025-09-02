import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student_managment/core/utils/constants/app_colors.dart';
import 'package:student_managment/core/utils/constants/image_path.dart';
import '../../../../core/common/custom_text.dart';
import '../../../../core/common/custom_textformfield.dart';
import '../../../../core/common/prymari_text.dart';
import '../../../../routes/app_routes.dart';
import '../../../profile/controllers/image_picker_controller.dart';
import '../../../profile/controllers/profile_edit_controller.dart';
import '../../controllers/Carousel_Controller.dart';
import '../../controllers/event_controller.dart';
import '../../controllers/home_card_controller.dart';
import '../widgets/custom_event_Card.dart';
import '../widgets/custom_home_card.dart';
import 'attendence/attendence_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagePickerController imagecontroller = Get.find<ImagePickerController>();
    final TextEditingController searchController = TextEditingController();
    final CarouselControllerX controller = Get.find<CarouselControllerX>();
    final HomeCardController homeCardController = Get.put(HomeCardController());
    final EventController eventController = Get.find<EventController>();
    final profileEditController = Get.find<ProfileEditController>();

    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 60.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrymariText(text: 'ID:S12334'),
                    Obx(()=>customText(text: 'hello,${profileEditController.name.value}', fontSize: 18)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.notifications_none),
                    SizedBox(width: 10.w),
                    Obx(() {
                      return CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey.shade300,
                        backgroundImage: imagecontroller.pickedImage.value != null
                            ? FileImage(imagecontroller.pickedImage.value!)
                            : null,
                        child: imagecontroller.pickedImage.value == null
                            ? const Icon(Icons.person, size: 50, color: Colors.white)
                            : null,
                      );
                    }),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
            CustomTextFormField(
              controller: searchController,
              hintText: 'Search anithing',
              prefixIcon: Icon(Icons.search),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CarouselSlider(
                      items: controller.imgList.map((item) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        );
                      }).toList(),
                      options: CarouselOptions(
                        viewportFraction: 1.0,
                        height: 150.h,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          controller.changeIndex(index);
                        },
                      ),
                    ),
                    Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 1,
                          childAspectRatio: 0.9,
                        ),
                        itemCount: homeCardController.gridItems.length,
                        itemBuilder: (context, index) {
                          final item = homeCardController.gridItems[index];
                          return GestureDetector(
                            onTap: () {
                              switch (index) {
                                case 0:
                                  Get.to(() => AttendenceScreen());
                                case 1:
                                  Get.to(() =>());
                                case 2:
                                  Get.to(() => ());
                                case 3:
                                  Get.to(() => ());

                                case 4:
                                  Get.to(() => ());
                                  break;
                                case 5:
                                  Get.to(() => ());

                                case 6:
                                  Get.to(() => ());
                                  break;
                                case 7:
                                  Get.to(() => ());
                                default:
                                  break;
                              }
                            },
                            child: CustomHomeCard(
                              text: item['text'],
                              bgColor:
                                  homeCardController.selectedIndex.value ==
                                      index
                                  ? Colors.black12
                                  : item['color'],
                              child: Icon(
                                item['icon'],
                                size: 30,
                                color: item['color'],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText(text: 'Up coming Events', fontSize: 18.sp),
                        GestureDetector(
                          onTap: (){
                            Get.toNamed(AppRoute.viewAllUpComingScreen);
                          },
                          child: customText(
                            text: 'view all',
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.symmetric(vertical: 15.h),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: eventController.events.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              childAspectRatio: 0.9,
                            ),
                        itemBuilder: (context, index) {
                          final event = eventController.events[index];
                          return CustomEventCard(
                            image: event['image'],
                            title: event['title'],
                            date: event['date'],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
