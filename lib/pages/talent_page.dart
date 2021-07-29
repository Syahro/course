import 'package:course/widget/bottom_floating.dart';
import 'package:course/widget/header.dart';
import 'package:course/widget/talent_card.dart';
import 'package:flutter/material.dart';
import 'package:course/theme.dart';

class TalentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: BottomFloating(
        isHome: false,
        isExplore: false,
        isTalent: true,
        isAccount: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
              vertical: 56,
            ),
            child: Column(
              children: [
                Header(),
                SizedBox(
                  height: 24,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                  ),
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: lightGreyColor,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Semua Kelas',
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
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TalentCard(
                      imageUrl: 'assets/class6.png',
                      like: '1481',
                      imageUrlTalent: 'assets/talent1.png',
                      talentName: 'Haykal Nur',
                    ),
                    TalentCard(
                      imageUrl: 'assets/class7.png',
                      like: '981',
                      imageUrlTalent: 'assets/talent2.png',
                      talentName: 'Dhimas Putra',
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TalentCard(
                      imageUrl: 'assets/class8.png',
                      like: '700',
                      imageUrlTalent: 'assets/talent3.png',
                      talentName: 'Aldyansyah',
                    ),
                    TalentCard(
                      imageUrl: 'assets/class9.png',
                      like: '481',
                      imageUrlTalent: 'assets/talent4.png',
                      talentName: 'Gulham Rasool',
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TalentCard(
                      imageUrl: 'assets/class10.png',
                      like: '359',
                      imageUrlTalent: 'assets/talent4.png',
                      talentName: 'Gulham Rasool',
                    ),
                    TalentCard(
                      imageUrl: 'assets/class11.png',
                      like: '209',
                      imageUrlTalent: 'assets/talent2.png',
                      talentName: 'Dhimas Putra',
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
