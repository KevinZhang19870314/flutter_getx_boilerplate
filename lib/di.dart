import 'package:flutter_getx_boilerplate/shared/shared.dart';
import 'package:get/get.dart';

class AppDenpendencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => StorageService().init());
  }
}
