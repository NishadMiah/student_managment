import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common/custom_text.dart';


class CustomEventCard extends StatelessWidget {
  final String image;
  final String title;
  final String date;

  const CustomEventCard({
    super.key,
    required this.image,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
           SizedBox(height: 10.h),
            customText(text: title, fontSize: 12.sp, color: Colors.black),
            Row(
              children: [
                 Icon(Icons.calendar_month, color: Colors.grey, size: 14.sp),
                SizedBox(width: 4.h),
                customText(text: date, fontSize: 12.h, color: Colors.grey),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
