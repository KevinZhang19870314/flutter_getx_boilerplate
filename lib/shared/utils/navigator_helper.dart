import 'package:flutter/material.dart';

class NavigatorHelper {
  static void popLastScreens({
    required BuildContext context,
    required int popCount,
  }) {
    int count = 0;
    Navigator.popUntil(context, (route) {
      return count++ == popCount;
    });
  }
}
