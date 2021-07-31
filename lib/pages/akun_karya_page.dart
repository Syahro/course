import 'package:course/theme.dart';
import 'package:course/widget/bottom_floating.dart';
import 'package:course/widget/header_user.dart';
import 'package:course/widget/talent_card.dart';
import 'package:course/widget/user_menu.dart';
import 'package:flutter/material.dart';

class AkunKaryaPage extends StatelessWidget {
  final bool isClass;
  final bool isMadeBy;

  AkunKaryaPage({
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
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                children: [
                  SizedBox(
                    height: 56,
                  ),
                  HeaderUser(
                    isCourseDetail: false,
                  ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TalentCard(
                        imageUrl: 'assets/class7.png',
                        like: '981',
                        imageUrlTalent: 'assets/avatar.png',
                        talentName: 'Dhimas Putra',
                      ),
                      TalentCard(
                        imageUrl: 'assets/class11.png',
                        like: '209',
                        imageUrlTalent: 'assets/avatar.png',
                        talentName: 'Dhimas Putra',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TalentCard(
                        imageUrl: 'assets/class12.png',
                        like: '981',
                        imageUrlTalent: 'assets/avatar.png',
                        talentName: 'Dhimas Putra',
                      ),
                      TalentCard(
                        imageUrl: 'assets/class2.png',
                        like: '1821',
                        imageUrlTalent: 'assets/avatar.png',
                        talentName: 'Dhimas Putra',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
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
