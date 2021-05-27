import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerplate/routes/routes.dart';
import 'package:get/get.dart';

class DiscoverTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          Get.toNamed(Routes.ISSUE_1481);
        },
        child: Text('discover'),
      ),
    );
  }
}
