import 'package:course/theme.dart';
import 'package:flutter/material.dart';

class GroupCourse extends StatelessWidget {
  final String title;

  GroupCourse({this.title,});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/group_theme.png',
          width: 18,
          height: 18,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          title,
          style: boldTextStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: blackColor,
          ),
        ),
        Spacer(),
        Icon(
          Icons.keyboard_arrow_down,
          color: blackColor.withOpacity(0.7),
          size: 27,
        ),
      ],
    );
  }
}
