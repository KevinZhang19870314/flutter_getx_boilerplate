import 'package:flutter_getx_boilerplate/api/api.dart';
import 'package:get/get.dart';

import 'auth_controller.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<ApiProvider>(() => ApiProvider());
    // Get.lazyPut<ApiRepository>(() => ApiRepository(apiProvider: Get.find()));
    Get.lazyPut<AuthController>(() => AuthController(repository: Get.find()));
  }
}
