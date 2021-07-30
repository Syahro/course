import 'package:course/theme.dart';
import 'package:flutter/material.dart';

class ContentModalBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 4,
              width: 40,
              decoration: BoxDecoration(
                color: greyColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 184,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/class2.png',
                        width: double.infinity,
                        height: 184,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                color: whiteColor.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(28),
                                boxShadow: [
                                  BoxShadow(
                                    color: blackColor.withOpacity(0.1),
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    offset: Offset(1, 1),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.play_arrow,
                              color: blueColor,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: defaultMargin,
              ),
              Text(
                'Build Apps with Flutter',
                style: boldTextStyle.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: blackColor,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    'Rp 123.321',
                    style: boldTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    width: defaultMargin,
                  ),
                  Text(
                    '321.123',
                    style: regularTextStyle.copyWith(
                      fontSize: 18,
                      color: greyColor,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/mentor2.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Rifqi Eka',
                    style: boldTextStyle.copyWith(
                      fontSize: 14,
                      color: blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
