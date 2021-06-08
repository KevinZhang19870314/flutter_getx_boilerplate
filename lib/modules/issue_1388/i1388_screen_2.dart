import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerplate/routes/routes.dart';
import 'package:flutter_getx_boilerplate/shared/shared.dart';
import 'package:get/get.dart';

class I1388Screen2 extends StatelessWidget {
  const I1388Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('I1388 screen 2'),
            ElevatedButton(
              onPressed: () {
                // Solution 1:
                // Pop all screens until /home, after that push /i1388 to screen stack
                // So for this scenario, it will pop 3 screens:
                // i1388 screen 2, i1388 screen 1, i1388 main screen
                // Get.offNamedUntil(
                //   Routes.I1388,
                //   ModalRoute.withName(Routes.HOME),
                // );

                // Solution 2:
                // Also you can do pop up 2 screens, and remain i1388 main screen stay in stack
                NavigatorHelper.popLastScreens(popCount: 2);
              },
              child: Text('Back to i1388 main screen'),
            ),
          ],
        ),
      ),
    );
  }
}
