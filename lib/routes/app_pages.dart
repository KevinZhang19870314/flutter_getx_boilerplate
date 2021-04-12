import 'package:flutter_getx_boilerplate/modules/auth/auth.dart';
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
    // GetPage(
    //     name: Routes.HOME,
    //     page: () => HomeView(),
    //     binding: HomeBinding(),
    //     children: [
    //       GetPage(
    //         name: Routes.COUNTRY,
    //         page: () => CountryView(),
    //         children: [
    //           GetPage(
    //             name: Routes.DETAILS,
    //             page: () => DetailsView(),
    //           ),
    //         ],
    //       ),
    //     ]),
  ];
}
