import 'package:course/theme.dart';
import 'package:course/widget/bottom_floating.dart';
import 'package:course/widget/popular_class_card.dart';
import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class BerandaPage extends StatelessWidget {
  final List<String> listImages = [
    'assets/banner2.png',
    'assets/banner3.png',
    'assets/banner1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BottomFloating(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                defaultMargin,
                56,
                defaultMargin,
                40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dhimas Putra',
                            style: boldTextStyle.copyWith(
                              fontSize: 18,
                              color: blackColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Premium',
                            style: regularTextStyle.copyWith(
                              fontSize: 14,
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/avatar.png',
                        width: 40,
                        height: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CarouselImages(
                    listImages: listImages,
                    height: 144,
                    scaleFactor: 0.6,
                    borderRadius: 20,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Kelas Populer',
                        style: boldTextStyle.copyWith(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Image.asset(
                        'assets/bookmark.png',
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PopularClassCard(
                        imageUrl: 'assets/class1.png',
                        firstName: 'Full Stack',
                        secondName: 'UI Designer ',
                        participant: '(1289)',
                        price: 'Rp. 299.999',
                        isDiskon: false,
                        priceDiskon: '0',
                        imageUrlMentor: 'assets/mentor1.png',
                        mentorName: 'Angga Risky',
                      ),
                      PopularClassCard(
                        imageUrl: 'assets/class2.png',
                        firstName: 'Build Apps with',
                        secondName: 'Flutter ',
                        participant: '(476)',
                        price: 'Rp. 123.321',
                        isDiskon: true,
                        priceDiskon: '321.123',
                        imageUrlMentor: 'assets/mentor2.png',
                        mentorName: 'Rifqi Eka',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Kelas Saya',
                    style: boldTextStyle.copyWith(
                      fontSize: 22,
                      color: blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 83,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: greyColor,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/class3.png',
                              width: 80,
                              height: 66,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'UI/UX Design With\nFigma',
                                style: boldItalicTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: blackColor,
                                ),
                              ),
                              SizedBox(
                                height: 17,
                              ),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/mentor1.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Angga Risky',
                                    style: regularTextStyle.copyWith(
                                      fontSize: 12,
                                      color: greyColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Image.asset(
                            'assets/graph1.png',
                            width: 51,
                            height: 51,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
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
