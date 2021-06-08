import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerplate/routes/routes.dart';
import 'package:get/get.dart';

class I1388Screen3 extends StatelessWidget {
  const I1388Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('I1388 screen 3'),
            ElevatedButton(
              onPressed: () {
                // Pop all screens until /home, after that push /i1388 to screen stack
                // So for this scenario, it will pop 4 screens:
                // i1388 screen 3, i1388 screen 2, i1388 screen 1, i1388 main screen
                Get.offNamedUntil(
                  Routes.I1388,
                  ModalRoute.withName(Routes.HOME),
                );
              },
              child: Text('Back to i1388 main screen'),
            ),
          ],
        ),
      ),
    );
  }
}
