import 'package:flutter_getx_boilerplate/modules/issue_1481/tag_utils.dart';
import 'package:get/get.dart';

import 'issue_1481_controller.dart';

class Issue1481Binding implements Bindings {
  @override
  void dependencies() {
    var _controller = Issue1481Controller();
    var tag = _controller.tag;
    TagUtils().tags.add(tag);
    print('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>bindings$tag');
    Get.lazyPut<Issue1481Controller>(
      () => Issue1481Controller(),
      tag: tag,
      // fenix: true,
    );
  }
}
