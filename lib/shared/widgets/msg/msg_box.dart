import 'package:flutter/material.dart';

abstract class MsgBox extends StatelessWidget {
  final AnimationController animationController;

  const MsgBox({Key? key, required this.animationController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut,
      ),
      axisAlignment: 0.0,
      child: buildWidgets(context),
    );
  }

  Widget buildWidgets(BuildContext context);
}
