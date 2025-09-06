import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';
import 'group_chat_screen.dart';
import 'individual_chat_screen.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // number of tabs
      child: Scaffold(
        backgroundColor: AppColors.primaryBackground,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          surfaceTintColor: Colors.transparent,
          title: Text("Massage"),
          bottom: TabBar(
            labelStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            indicatorSize:TabBarIndicatorSize.tab ,
            tabs: [
              Tab(text: "Individual",),
              Tab(text: "Groups",),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: IndividualChatScreen()),
            Center(child:GroupChatScreen()),
          ],
        ),
      ),
    );
  }
}
