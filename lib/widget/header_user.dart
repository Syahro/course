import 'package:course/theme.dart';
import 'package:flutter/material.dart';

class HeaderUser extends StatelessWidget {
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
        Image.asset(
          'assets/avatar.png',
          width: 40,
          height: 40,
        ),
      ],
    );
  }
}
