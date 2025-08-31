import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants/app_colors.dart';

class CustomSubmitButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Widget? prefixIcon;
  final Widget? nextIcon;
  final Widget? child; // Added child parameter
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final Color? color; // Added color parameter (button color)
  final Color? textColor; // Added textColor parameter (text color)

  const CustomSubmitButton({
    super.key,
    required this.text,
    required this.onTap,
    this.prefixIcon,
    this.nextIcon,
    this.child, // Child widget is passed as an optional parameter
    this.padding,
    this.borderRadius,
    this.color, // Optional color parameter
    this.textColor, // Optional text color parameter
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? AppColors.primary, // Use the provided color or the default color
      borderRadius: borderRadius ?? BorderRadius.circular(4),
      child: InkWell(
        splashColor: Colors.white.withOpacity(0.5),
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: padding ?? EdgeInsets.symmetric(),
          decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (prefixIcon != null) ...[
                const SizedBox(),
                SizedBox(

                  child: prefixIcon!,
                ),
              ],
              SizedBox(),
              // Display text if no child is passed
              if (child == null) ...[
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    color: textColor ?? AppColors.textWhite, // Use the provided text color or the default color
                  ),
                ),
              ],
              // Display child if passed
              if (child != null) ...[
                child!,
              ],
              if (nextIcon != null) ...[
                SizedBox(
                  child: nextIcon!,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}