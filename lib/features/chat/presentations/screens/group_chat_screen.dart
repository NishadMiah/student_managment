import 'package:flutter/material.dart';
import '../../../../core/common/custom_textformfield.dart';
import '../../../../core/utils/constants/app_colors.dart';
class GroupChatScreen extends StatelessWidget {
  GroupChatScreen({super.key});
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 16),
        child: Column(
          children: [
            CustomTextFormField(
              controller: searchController,
              hintText: 'Search anithing',
              prefixIcon: Icon(Icons.search),
            ),
          ],
        ),
      ),
    );;
  }
}
