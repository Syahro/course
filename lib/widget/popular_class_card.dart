import 'package:course/theme.dart';
import 'package:course/widget/content_modal_bottom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class PopularClassCard extends StatelessWidget {
  final String imageUrl;
  final String firstName;
  final String secondName;
  final String participant;
  final String price;
  final bool isDiskon;
  final String priceDiskon;
  final String imageUrlMentor;
  final String mentorName;

  PopularClassCard({
    this.imageUrl,
    this.firstName,
    this.secondName,
    this.participant,
    this.price,
    this.isDiskon,
    this.priceDiskon,
    this.imageUrlMentor,
    this.mentorName,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showMaterialModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) => SingleChildScrollView(
          controller: ModalScrollController.of(context),
          child: Container(
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              color: whiteColor,
            ),
            child: ContentModalBottom(),
          ),
        ),
      ),
      child: Container(
        width:
            ((MediaQuery.of(context).size.width - (2 * defaultMargin)) / 2) - 8,
        height: 227,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: greyColor,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      imageUrl,
                      width: 136,
                      height: 100,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      text: firstName,
                      style: boldTextStyle.copyWith(
                        fontSize: 14,
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(
                          text: '\n$secondName ',
                          style: boldTextStyle.copyWith(
                            fontSize: 14,
                            color: blackColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                            text: participant,
                            style: regularTextStyle.copyWith(
                              fontSize: 14,
                              color: greyColor,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: boldTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: blackColor,
                        ),
                      ),
                      isDiskon
                          ? Text(
                              priceDiskon,
                              style: regularTextStyle.copyWith(
                                fontSize: 12,
                                color: greyColor,
                                decoration: TextDecoration.lineThrough,
                              ),
                            )
                          : Text(''),
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        imageUrlMentor,
                        width: 18,
                        height: 18,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        mentorName,
                        style: regularTextStyle.copyWith(
                          fontSize: 12,
                          color: greyColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 4,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.bookmark,
                    color: blueColor,
                    size: 35,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 12,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                    color: whiteColor,
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
