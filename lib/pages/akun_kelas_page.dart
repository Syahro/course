import 'package:course/theme.dart';
import 'package:course/widget/bottom_floating.dart';
import 'package:course/widget/header_user.dart';
import 'package:course/widget/my_class.dart';
import 'package:course/widget/user_menu.dart';
import 'package:flutter/material.dart';

class AkunKelasPage extends StatelessWidget {
  final bool isClass;
  final bool isMadeBy;

  AkunKelasPage({
    this.isClass,
    this.isMadeBy,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: BottomFloating(
        isHome: false,
        isExplore: false,
        isTalent: false,
        isAccount: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 56,
                  ),
                  HeaderUser(),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 103,
                    width: 92,
                    child: Stack(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            border: Border.all(
                              color: lightGreyColor,
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/avatar.png',
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                top: 70,
                                left: 27,
                              ),
                              height: 20,
                              width: 24,
                              child: Stack(
                                children: [
                                  Icon(
                                    Icons.bookmark,
                                    color: blueColor,
                                    size: 35,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 8.5,
                                      top: 7,
                                    ),
                                    child: Icon(
                                      Icons.star,
                                      color: whiteColor,
                                      size: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Dhimas Putra',
                    style: boldTextStyle.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: blackColor,
                    ),
                  ),
                  Text(
                    'Premium',
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                      color: greyColor,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  UserMenu(
                    isClass: isClass,
                    isMadeBy: isMadeBy,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  MyClass(
                    imageUrl: 'assets/class3.png',
                    firstName: 'UI/UX Design With',
                    secondName: 'Figma',
                    imageUrlMentor: 'assets/mentor1.png',
                    nameMentor: 'Angga Risky',
                    isHalf: false,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  MyClass(
                    imageUrl: 'assets/class2.png',
                    firstName: 'Design to Code',
                    secondName: 'Android Studio',
                    imageUrlMentor: 'assets/mentor1.png',
                    nameMentor: 'Annga Risky',
                    isHalf: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
