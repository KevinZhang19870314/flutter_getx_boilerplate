import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerplate/shared/constants/constants.dart';
import 'package:flutter_svg/svg.dart';

class IconTitleItem extends StatelessWidget {
  const IconTitleItem({
    Key? key,
    required this.onTap,
    required this.title,
    required this.icon,
    this.backgroundColor = Colors.transparent,
    this.paddingTop = 8,
    this.padingBottom = 8,
    this.paddingLeft = 16,
    this.paddingRight = 32,
    this.marginTop = 0,
    this.marginBottom = 0,
    this.marginLeft = 0,
    this.marginRight = 0,
    this.drawablePadding = 10,
  }) : super(key: key);

  final Function() onTap;
  final String icon;
  final String title;
  final Color backgroundColor;

  final double paddingLeft, paddingTop, paddingRight, padingBottom;
  final double marginLeft, marginTop, marginRight, marginBottom;
  final double drawablePadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.fromLTRB(marginLeft, marginTop, marginRight, marginBottom),
      child: Material(
        borderRadius: BorderRadius.circular(11),
        color: backgroundColor,
        child: InkWell(
          onTap: onTap,
          customBorder:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                paddingLeft, paddingTop, paddingRight, padingBottom),
            child: Row(
              children: [
                SvgPicture.asset(
                  icon,
                  width: 25,
                  height: 25,
                  color: ColorConstants.secondaryAppColor,
                ),
                SizedBox(
                  width: drawablePadding,
                ),
                Expanded(
                    child: Text(
                  title,
                  style:
                      TextStyle(color: ColorConstants.darkGray, fontSize: 16),
                )),
                Icon(
                  Icons.chevron_right,
                  color: ColorConstants.darkGray,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
