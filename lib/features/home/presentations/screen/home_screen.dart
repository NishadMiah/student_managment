import 'package:flutter/material.dart';
import 'package:student_managment/core/utils/constants/app_colors.dart';

import '../../../../core/common/prymari_text.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical:50,horizontal: 16),
        child: Column(
          children: [
            PrymariText(text: 'ID:S12334',),
            PrymariText(text: 'hello,amrit',
              fontSize: 28,
            ),
          ],
        ),
      ),
    );
  }
}
