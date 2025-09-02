import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/event_controller.dart';
import '../widgets/custom_event_Card.dart';
class ViewAllUpComingScreen extends StatelessWidget {
   ViewAllUpComingScreen({super.key});
  final EventController eventController = Get.find<EventController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text("Up Coming Event"),
      ),
      body: Column(
        children: [
          GridView.builder(
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
        ],
      )
    );
  }
}
