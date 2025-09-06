import 'package:get/get.dart';
import '../model/individual_chat models.dart';

class UserController extends GetxController {
  var users = <UserModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  void fetchUsers() {
    users.value = [
      UserModel(
          name: "Tanya",
          imageUrl: "https://randomuser.me/api/portraits/women/1.jpg",
          message: "You had me at your smile.",

      ),
      UserModel(
          name: "Judith",
          imageUrl: "https://randomuser.me/api/portraits/women/2.jpg",
          message: "The audio call is ended.",
      ),
      UserModel(
          name: "Kristin",
          imageUrl: "https://randomuser.me/api/portraits/women/3.jpg",
          message: "You + me = worth exploring?",
      ),
      UserModel(
          name: "Brandie",
          imageUrl: "https://randomuser.me/api/portraits/women/4.jpg",
          message: "You + me = worth exploring?",
      ),
      UserModel(
          name: "Tanya",
          imageUrl: "https://randomuser.me/api/portraits/women/5.jpg",
          message: "You + me = worth exploring?",
      ),
      UserModel(
          name: "Judith",
          imageUrl: "https://randomuser.me/api/portraits/women/6.jpg",
          message: "You + me = worth exploring?",
      ),
      UserModel(
          name: "Kristin",
          imageUrl: "https://randomuser.me/api/portraits/women/7.jpg",
          message: "You + me = worth exploring?",
      ),
      UserModel(
          name: "Brandie",
          imageUrl: "https://randomuser.me/api/portraits/women/8.jpg",
          message: "You + me = worth exploring?",

      ),
    ];
  }

}