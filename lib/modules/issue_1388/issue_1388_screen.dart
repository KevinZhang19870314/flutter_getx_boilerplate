import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerplate/routes/app_pages.dart';
import 'package:get/get.dart';

class Issue1388Screen extends StatelessWidget {
  const Issue1388Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('issue 1388 screen'),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.I1388_1);
                Get.toNamed(Routes.I1388_2);
              },
              child: Text('Go i1388 screen 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.I1388_1);
                Get.toNamed(Routes.I1388_2);
                Get.toNamed(Routes.I1388_3);
              },
              child: Text('Go i1388 screen 3'),
            ),
          ],
        ),
      ),
    );
  }
}
