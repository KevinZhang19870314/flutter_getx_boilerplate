import 'package:flutter_getx_boilerplate/api/api.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiProvider>(() => ApiProvider());
    Get.lazyPut<ApiRepository>(() => ApiRepository(apiProvider: Get.find()));
    Get.put<SplashController>(SplashController());
  }
}
