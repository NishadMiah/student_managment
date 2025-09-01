import 'package:flutter/material.dart';
class AttendenceScreen extends StatelessWidget {
  const AttendenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // number of tabs
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          title: Text("TabBar Example"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Student",),
              Tab(text: "Teacher",),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Home Page")),
            Center(child: Text("Search Page")),
            Center(child: Text("Profile Page")),
          ],
        ),
      ),
    );
  }
}
