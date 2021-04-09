import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerplate/routes/routes.dart';
import 'package:flutter_getx_boilerplate/shared/shared.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Splash...'),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.AUTH);
            },
            child: Text('test'),
          ),
        ],
      ),
    );
  }
}
