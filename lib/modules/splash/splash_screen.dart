import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerplate/shared/shared.dart';

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
        ],
      ),
    );
  }
}
