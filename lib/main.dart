import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'di.dart';
import 'lang/lang.dart';
import 'modules/modules.dart';
import 'routes/routes.dart';
import 'theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppDenpendencyInjection.init();

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: Routes.SPLASH,
      // defaultTransition: Transition.fade,
      getPages: AppPages.routes,
      initialBinding: SplashBinding(),
      // home: SplashScreen(),
      title: 'Flutter GetX Boilerplate',
      theme: ThemeConfig.lightTheme,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
    );
  }
}
