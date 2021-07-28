import 'package:course/theme.dart';
import 'package:flutter/material.dart';

class IconBottomFloating extends StatelessWidget {
  final String imageUrl;
  final String menuName;
  final bool isActive;

  IconBottomFloating({
    this.imageUrl,
    this.menuName,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          width: 24,
          height: 24,
          color: isActive ? blueColor : greyColor,
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          menuName,
          style: boldTextStyle.copyWith(
            fontSize: 12,
            color: isActive ? blueColor : greyColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
