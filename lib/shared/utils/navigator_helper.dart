import 'package:get/get.dart';

class NavigatorHelper {
  static void popLastScreens({
    required int popCount,
  }) {
    int count = 0;
    while (count < popCount) {
      Get.back();
      count++;
    }
  }
}
