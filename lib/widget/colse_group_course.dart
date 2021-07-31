import 'package:course/theme.dart';
import 'package:course/widget/group_course.dart';
import 'package:flutter/material.dart';

class CloseGroupCourse extends StatelessWidget {
  final String title;

  CloseGroupCourse({
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      height: 47,
      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: greyColor.withOpacity(0.6))),
      child: GroupCourse(
        title: title,
      ),
    );
  }
}
