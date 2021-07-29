import 'package:course/theme.dart';
import 'package:course/widget/bottom_floating.dart';
import 'package:course/widget/header.dart';
import 'package:course/widget/my_class.dart';
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
      backgroundColor: whiteColor,
      floatingActionButton: BottomFloating(
        isHome: true,
        isExplore: false,
        isTalent: false,
        isAccount: false,
      ),
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
                  Header(),
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
                    child: MyClass(
                      imageUrl: 'assets/class3.png',
                      firstName: 'UI/UX Design With',
                      secondName: 'Figma',
                      imageUrlMentor: 'assets/mentor1.png',
                      nameMentor: 'Angga Risky',
                      isHalf: false,
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
