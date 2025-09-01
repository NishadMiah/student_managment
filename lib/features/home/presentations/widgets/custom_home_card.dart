import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeCard extends StatelessWidget {
  final Widget child;
  final String text;
  final Color bgColor;
  final double borderRadius;

  const CustomHomeCard({
    super.key,
    required this.child,
    required this.text,
    this.bgColor = Colors.cyan,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.transparent,// Transparent container
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// container (child)
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bgColor.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: child,
          ),
          SizedBox(height: 5.h),
          /// text
          Text(
            text,
            style:  TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
