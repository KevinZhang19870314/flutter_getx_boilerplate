import 'package:flutter_getx_boilerplate/modules/issue_1481/issue_1481.dart';
import 'package:get/get.dart';

class TagUtils {
  static final TagUtils _singleton = new TagUtils._internal();

  factory TagUtils() {
    return _singleton;
  }

  TagUtils._internal();

  List<String> tags = [];

  Issue1481Controller? find() {
    Issue1481Controller? _controller;
    for (var i = 0; i < tags.length; i++) {
      try {
        _controller = Get.find<Issue1481Controller>(tag: tags[i]);
      } catch (e) {
        continue;
      }
    }

    return _controller;
  }
}
