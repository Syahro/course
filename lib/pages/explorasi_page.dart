import 'package:course/theme.dart';
import 'package:course/widget/bottom_floating.dart';
import 'package:course/widget/header.dart';
import 'package:course/widget/popular_class_card.dart';
import 'package:flutter/material.dart';

class ExplorasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: BottomFloating(
        isHome: false,
        isExplore: true,
        isTalent: false,
        isAccount: false,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 56,
                  ),
                  Header(),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 48,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: lightGreyColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultMargin,
                        vertical: 15,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/search.png',
                            width: 16,
                            height: 16,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Temukan Kelasmu...',
                            style: regularTextStyle.copyWith(
                              fontSize: 14,
                              color: greyColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 32,
                        width: 103,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: greyColor,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Semua',
                              style: regularTextStyle.copyWith(
                                fontSize: 14,
                                color: blackColor,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: blackColor,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: greyColor,
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.tune,
                            color: blueColor,
                            size: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PopularClassCard(
                        imageUrl: 'assets/class1.png',
                        firstName: 'Full Stack',
                        secondName: 'UI Designer',
                        participant: '(1289)',
                        price: 'Rp 299.999',
                        isDiskon: false,
                        priceDiskon: '0',
                        imageUrlMentor: 'assets/mentor1.png',
                        mentorName: 'Angga Risky',
                      ),
                      PopularClassCard(
                        imageUrl: 'assets/class2.png',
                        firstName: 'Build Apps with',
                        secondName: 'Flutter',
                        participant: '(476)',
                        price: 'Rp 123.321',
                        isDiskon: true,
                        priceDiskon: '321.123',
                        imageUrlMentor: 'assets/mentor2.png',
                        mentorName: 'Rifqi Eka',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PopularClassCard(
                        imageUrl: 'assets/class4.png',
                        firstName: 'Full Stack',
                        secondName: 'Web Laravel',
                        participant: '(902)',
                        price: 'Rp 399.999',
                        isDiskon: false,
                        priceDiskon: '0',
                        imageUrlMentor: 'assets/mentor1.png',
                        mentorName: 'Angga Risky',
                      ),
                      PopularClassCard(
                        imageUrl: 'assets/class5.png',
                        firstName: 'Course Apps with',
                        secondName: 'React Native',
                        participant: '(898)',
                        price: 'Rp 399.999',
                        isDiskon: false,
                        priceDiskon: '0',
                        imageUrlMentor: 'assets/mentor3.png',
                        mentorName: 'Prawito Hudoro',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 68,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
