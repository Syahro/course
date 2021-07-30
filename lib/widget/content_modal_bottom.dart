import 'package:course/pages/course_page.dart';
import 'package:course/theme.dart';
import 'package:course/widget/info_widget.dart';
import 'package:flutter/material.dart';

class ContentModalBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
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
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 12,
                        width: 2,
                        color: greyColor,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Mobile Developer',
                        style: regularTextStyle.copyWith(
                          fontSize: 14,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Container(
                    height: 61,
                    width: MediaQuery.of(context).size.width - (2 * 20),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: lightGreyColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InfoWidget(
                          iconUrl: 'assets/star.png',
                          noted: '4.8',
                          info: 'Rating',
                        ),
                        Container(
                          height: 32,
                          width: 2,
                          color: greyColor,
                        ),
                        InfoWidget(
                          iconUrl: 'assets/people.png',
                          noted: '1812',
                          info: 'Bergabung',
                        ),
                        Container(
                          height: 32,
                          width: 2,
                          color: greyColor,
                        ),
                        InfoWidget(
                          iconUrl: 'assets/verify.png',
                          noted: 'Semua',
                          info: 'Level',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Tentang Kelas',
                    style: boldTextStyle.copyWith(
                      fontSize: 18,
                      color: blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Full-Stack Laravel Flutter adalah kelas pertama kami yang terdapat berbagai macam materi seperti mobile development atau juga web development. Pada kelas ini kalian akan belajar bagaimana caranya membangun aplikasi iOS dan Android untuk pemesanan makanan secara online (seperti GrabFood atau GoFood). Mulai dari tahap slicing design-to-code sampai kepada pembuatan API khusus menggunakan Laravel versi 8.',
                    style: regularTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - (2 * 20),
                    height: 48,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return CoursePage();
                          }),
                        );
                      },
                      color: blueColor,
                      child: Center(
                        child: Text(
                          'Checkout Kelas',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width - (2 * 20),
              height: 20,
              color: whiteColor,
              child: Center(
                child: Container(
                  width: 45,
                  height: 4,
                  decoration: BoxDecoration(
                    color: greyColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
