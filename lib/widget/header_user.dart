import 'package:course/theme.dart';
import 'package:flutter/material.dart';

class HeaderUser extends StatelessWidget {
  final bool isCourseDetail;

  HeaderUser({
    this.isCourseDetail,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 60,
          child: Stack(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: greyColor,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/bell.png',
                    width: 22,
                    height: 22,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 29),
                height: 16,
                width: 28,
                decoration: BoxDecoration(
                  color: redColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '9',
                      style: regularTextStyle.copyWith(
                        fontSize: 12,
                        color: whiteColor,
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: whiteColor,
                      size: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 40,
          width: isCourseDetail ? 97 : 40,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: greyColor,
            ),
          ),
          child: Center(
            child: isCourseDetail
                ? Row(
                    children: [
                      Image.asset(
                        'assets/star.png',
                        width: 18,
                        height: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Rate Us',
                        style: regularTextStyle.copyWith(
                          fontSize: 14,
                          color: blackColor,
                        ),
                      ),
                    ],
                  )
                : Image.asset(
                    'assets/setting.png',
                    width: 22,
                    height: 22,
                  ),
          ),
        )
      ],
    );
  }
}
