import 'package:course/pages/beranda_page.dart';
import 'package:course/pages/explorasi_page.dart';
import 'package:course/pages/talent_page.dart';
import 'package:course/theme.dart';
import 'package:course/widget/icon_bottom_floating.dart';
import 'package:flutter/material.dart';

class BottomFloating extends StatelessWidget {
  final bool isHome;
  final bool isExplore;
  final bool isTalent;
  final bool isAccount;

  BottomFloating({
    this.isHome,
    this.isExplore,
    this.isTalent,
    this.isAccount,
  });
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
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BerandaPage();
                }));
              },
              child: IconBottomFloating(
                imageUrl: 'assets/home.png',
                menuName: 'Home',
                isActive: isHome,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ExplorasiPage();
                }));
              },
              child: IconBottomFloating(
                imageUrl: 'assets/explore.png',
                menuName: 'Explorasi',
                isActive: isExplore,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TalentPage();
                }));
              },
              child: IconBottomFloating(
                imageUrl: 'assets/talent.png',
                menuName: 'Talenta',
                isActive: isTalent,
              ),
            ),
            IconBottomFloating(
              imageUrl: 'assets/akun.png',
              menuName: 'Akun',
              isActive: isAccount,
            ),
          ],
        ),
      ),
    );
  }
}
