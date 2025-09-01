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
import '../../controllers/Carousel_Controller.dart';
import '../../controllers/event_controller.dart';
import '../../controllers/home_card_controller.dart';
import '../widgets/custom_event_Card.dart';
import '../widgets/custom_home_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    final CarouselControllerX controller = Get.find<CarouselControllerX>();
    final HomeCardController homeCardController = Get.put(HomeCardController());
    final EventController eventController = Get.put(EventController());


    return Scaffold(
      backgroundColor:AppColors.primaryBackground,
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
                    PrymariText(text: 'ID:S12334',),
                    customText(text: 'hello amrit',fontSize:18,)
                  ],
                ),Row(
                  children: [
                    Icon(Icons.notifications_none),
                    SizedBox(width: 10.w,),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:AssetImage(ImagePath.profileImage) ,
                    )
                  ],
                ),
              ],
            ),SizedBox(height: 20.h,),
            CustomTextFormField(
              controller:searchController,
              hintText: 'Search anithing',
              prefixIcon: Icon(Icons.search),),
            SizedBox(height: 20.h,),
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
                    Obx(() => GridView.builder(
                      shrinkWrap:true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 1,
                        childAspectRatio:0.9,
                      ),
                      itemCount: homeCardController.gridItems.length,
                      itemBuilder: (context, index) {
                        final item = homeCardController.gridItems[index];
                        return GestureDetector(
                          onTap: () => homeCardController.selectItem(index),
                          child: CustomHomeCard(
                            child: Icon(item['icon'], size: 30, color: item['color']),
                            text: item['text'],
                            bgColor: homeCardController.selectedIndex.value == index
                                ? Colors.black12
                                : item['color'],
                          ),
                        );
                      },
                    )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText(text: 'Up coming Events',fontSize:18.sp,),
                        customText(text: 'view all',fontSize:12.sp,color: Colors.grey,),
                      ],
                    ),
                      Obx(() => GridView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: eventController.events.length,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                childAspectRatio: 0.8,
                              ),
                              itemBuilder: (context, index) {
                               final event = eventController.events[index];
                               return CustomEventCard(
                               image: event['image'],
                                title: event['title'],
                                 date: event['date'],
                                           );
                                          },
                                         )
                                     ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
