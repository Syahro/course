import 'package:course/theme.dart';
import 'package:flutter/material.dart';

class CourseTitle extends StatelessWidget {
  final bool isPlay;
  final String title;

  CourseTitle({
    this.isPlay,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin + 2,
      ),
      child: Row(
        children: [
          Image.asset(
            isPlay ? 'assets/btn_play.png' : 'assets/btn_play_inactive.png',
            width: 16,
            height: 16,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: regularTextStyle.copyWith(
              fontSize: 12,
              color: isPlay ? blackColor : blackColor.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}
