import 'package:get/get.dart';

class CarouselControllerX extends GetxController {
  final List<String> imgList = [
    'assets/images/slider1.png',
    'assets/images/slider2.png',
    'assets/images/slider3.png',
  ];
  //  for Current index track
  var currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
