import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerplate/modules/issue_1481/tag_utils.dart';
import 'package:flutter_getx_boilerplate/routes/app_pages.dart';
import 'package:get/get.dart';
import 'issue_1481_controller.dart';

class Issue1481Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Issue1481Controller? _controller = TagUtils().find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Issue 1481'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text('${_controller?.randomNumer.value}'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.ISSUE_1481, preventDuplicates: false);
              },
              child: Text('Navigate to issue_1481 again'),
            ),
          ],
        ),
      ),
    );
  }
}
