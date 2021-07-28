import 'package:course/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 56,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logo1.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Build With Angga',
                        style: regularTextStyle.copyWith(
                          fontSize: 14,
                          color: blackColor,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 78,
                  ),
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: yellowColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        20,
                        21,
                        16,
                        0,
                      ),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/illustration_student.png',
                                height: 139,
                                width: 120,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Belajar Lebih Tearah',
                                style: boldTextStyle.copyWith(
                                  fontSize: 22,
                                  color: whiteColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                ' Dapatkan jalan shortcut terbaik\n untuk memulai karir IT idamanmu',
                                style: regularTextStyle.copyWith(
                                  fontSize: 12,
                                  color: whiteColor,
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                height: 19,
                                width: 95,
                                decoration: BoxDecoration(
                                  color: blueColor,
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Center(
                                  child: Text(
                                    'Upgrade Premium',
                                    style: regularTextStyle.copyWith(
                                      fontSize: 10,
                                      color: whiteColor,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 56,
                  ),
                  Text(
                    'Build Your\nFuture Career',
                    style: boldTextStyle.copyWith(
                      fontSize: 28,
                      color: blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Pelajari keahlian baru, dan mulai akses\nkelasmu sekarang.',
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                      color: greyColor,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    height: 48,
                    width: 328,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: blueColor,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/google.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Login with Google',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                            color: blackColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 48,
                    width: 328,
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        'Login In to My Account',
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        text: 'Belum punya akun ? ',
                        style: regularTextStyle.copyWith(
                          fontSize: 14,
                          color: blackColor,
                        ),
                        children: [
                          TextSpan(
                            text: 'Daftar Sekarang',
                            style: regularTextStyle.copyWith(
                              fontSize: 14,
                              color: blueColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 139,
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
