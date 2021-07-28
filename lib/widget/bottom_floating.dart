import 'package:course/theme.dart';
import 'package:course/widget/icon_bottom_floating.dart';
import 'package:flutter/material.dart';

class BottomFloating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61,
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.2),
            blurRadius: 2,
            spreadRadius: 2,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconBottomFloating(
              imageUrl: 'assets/home.png',
              menuName: 'Home',
              isActive: true,
            ),
            IconBottomFloating(
              imageUrl: 'assets/explore.png',
              menuName: 'Explorasi',
              isActive: false,
            ),
            IconBottomFloating(
              imageUrl: 'assets/talent.png',
              menuName: 'Talenta',
              isActive: false,
            ),
            IconBottomFloating(
              imageUrl: 'assets/akun.png',
              menuName: 'Akun',
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}
