import 'package:get/get.dart';
import '../features/authentication/presentation/screens/login_screen.dart';
import '../features/authentication/presentation/screens/sign_up_screen.dart';
import '../features/nav_bar/screen/nav_bar_screen.dart';


class AppRoute {
  static String init = "/";
  static String loginScreen = "/loginScreen";
  static String signUpScreen = "/signUpScreen";
  static String navBarScreen = "/navBarScreen";



  static List<GetPage> routes = [
    GetPage(name: init, page: () =>  LoginScreen()),
    GetPage(name: signUpScreen, page:() =>SignUpScreen()),
    GetPage(name: navBarScreen, page:() =>NavBarScreen())

  ];
}