import 'dart:math';

import 'package:flutter_getx_boilerplate/modules/issue_1481/tag_utils.dart';
import 'package:get/get.dart';

class Issue1481Controller extends GetxController {
  final String tag;

  Issue1481Controller() : tag = Random().nextInt(100).toString();

  RxInt randomNumer = 1.obs;

  @override
  void onInit() async {
    super.onInit();

    randomNumer.value = Random().nextInt(100);
  }

  @override
  void onClose() {
    super.onClose();
    TagUtils().tags.removeAt(0);
  }
}
