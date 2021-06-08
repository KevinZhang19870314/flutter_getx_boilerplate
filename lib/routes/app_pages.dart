import 'package:flutter_getx_boilerplate/modules/auth/auth.dart';
import 'package:flutter_getx_boilerplate/modules/home/home.dart';
import 'package:flutter_getx_boilerplate/modules/issue_1388/i1388_screen_1.dart';
import 'package:flutter_getx_boilerplate/modules/issue_1388/i1388_screen_2.dart';
import 'package:flutter_getx_boilerplate/modules/issue_1388/i1388_screen_3.dart';
import 'package:flutter_getx_boilerplate/modules/issue_1388/issue_1388_screen.dart';
import 'package:flutter_getx_boilerplate/modules/me/cards/cards_screen.dart';
import 'package:flutter_getx_boilerplate/modules/modules.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.AUTH,
      page: () => AuthScreen(),
      binding: AuthBinding(),
      children: [
        GetPage(name: Routes.REGISTER, page: () => RegisterScreen()),
        GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
      ],
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
      children: [
        GetPage(name: Routes.CARDS, page: () => CardsScreen()),
      ],
    ),
    GetPage(
      name: Routes.I1388,
      page: () => Issue1388Screen(),
    ),
    GetPage(
      name: Routes.I1388_1,
      page: () => I1388Screen1(),
    ),
    GetPage(
      name: Routes.I1388_2,
      page: () => I1388Screen2(),
    ),
    GetPage(
      name: Routes.I1388_3,
      page: () => I1388Screen3(),
    ),
  ];
}
