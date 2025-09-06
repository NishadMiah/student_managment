import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utils/constants/image_path.dart';

class EventController extends GetxController {
  // Reactive list of events
  final RxList<Map<String, dynamic>> events = <Map<String, dynamic>>[
    {
      "image": ImagePath.sportsImage,
      "title": "Sports Day",
      "date": "10 Sep, 2025",
    },
    {
      "image": ImagePath.schoolImage,
      "title": "Science Fair",
      "date": "15 Sep, 2025",
    },
    {
      "image": ImagePath.sportsImage,
      "title": "Art Exhibition",
      "date": "20 Sep, 2025",
    },
    {
      "image": ImagePath.sportsImage,
      "title": "Music Concert",
      "date": "25 Sep, 2025",
    },
  ].obs;
}
