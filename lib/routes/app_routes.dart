import 'package:get/get.dart';
import '../features/authentication/presentation/screens/login_screen.dart';
import '../features/authentication/presentation/screens/sign_up_screen.dart';
import '../features/home/presentations/screen/attendence/attendence_screen.dart';
import '../features/home/presentations/screen/view_all_up_coming_screen.dart';
import '../features/nav_bar/screen/nav_bar_screen.dart';
import '../features/profile/presentations/screens/profile_edit_screen.dart';


class AppRoute {
  static String init = "/";
  static String loginScreen = "/loginScreen";
  static String signUpScreen = "/signUpScreen";
  static String navBarScreen = "/navBarScreen";
  static String profileEditScreen = "/profileEditScreen";
  static String attendenceScreen = "/attendenceScreen";
  static String viewAllUpComingScreen = "/viewAllUpComingScreen";

  static List<GetPage> routes = [
    GetPage(name: init, page: () =>  LoginScreen()),
    GetPage(name: signUpScreen, page:() =>SignUpScreen()),
    GetPage(name: navBarScreen, page:() =>NavBarScreen()),
    GetPage(name: profileEditScreen, page:() =>ProfileEditScreen()),
    GetPage(name: attendenceScreen, page:() =>AttendenceScreen()),
    GetPage(name: viewAllUpComingScreen , page:() =>ViewAllUpComingScreen ())

  ];
}