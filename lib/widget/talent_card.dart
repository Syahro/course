import 'package:course/theme.dart';
import 'package:flutter/material.dart';

class TalentCard extends StatelessWidget {
  final String imageUrl;
  final String like;
  final String imageUrlTalent;
  final String talentName;

  TalentCard({
    this.imageUrl,
    this.like,
    this.imageUrlTalent,
    this.talentName,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width:
          ((MediaQuery.of(context).size.width - (2 * defaultMargin)) / 2) - 8.5,
      child: Container(
        height: 113,
        width: 154,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    imageUrl,
                    width: 154,
                    height: 113,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 87,
                    right: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: redColor,
                                size: 13,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                like,
                                style: regularTextStyle.copyWith(
                                  fontSize: 12,
                                  color: redColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imageUrlTalent,
                    width: 17,
                    height: 17,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  talentName,
                  style: regularTextStyle.copyWith(
                    fontSize: 12,
                    color: blackColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
