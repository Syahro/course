import 'package:course/theme.dart';
import 'package:course/widget/bottom_floating.dart';
import 'package:course/widget/colse_group_course.dart';
import 'package:course/widget/course_title.dart';
import 'package:course/widget/group_course.dart';
import 'package:course/widget/header.dart';
import 'package:course/widget/header_user.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
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
                    height: 54,
                  ),
                  HeaderUser(
                    isCourseDetail: true,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    height: 184,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/class2.png',
                            width: MediaQuery.of(context).size.width -
                                (2 * defaultMargin),
                            height: 184,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Stack(
                          children: [
                            Center(
                              child: Container(
                                height: 56,
                                width: 56,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(28),
                                  boxShadow: [
                                    BoxShadow(
                                      color: blackColor.withOpacity(0.2),
                                      blurRadius: 1,
                                      spreadRadius: 1,
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
                                size: 35,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: defaultMargin,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Build Apps with Flutter',
                            style: boldTextStyle.copyWith(
                              fontSize: 22,
                              color: blackColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 6),
                            height: 24,
                            width: 19,
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
                                    top: 6,
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: defaultMargin,
                  ),
                  Container(
                    width:
                        MediaQuery.of(context).size.width - (2 * defaultMargin),
                    height: 190,
                    decoration: BoxDecoration(
                      color: lightGreyColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: greyColor.withOpacity(0.6),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 46,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            border: Border.all(
                              color: greyColor.withOpacity(0.6),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: defaultMargin,
                            ),
                            child: GroupCourse(
                              title: 'Flutter UI',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        CourseTitle(
                          isPlay: true,
                          title: 'Sign Up Page',
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        CourseTitle(
                          isPlay: true,
                          title: 'Home Page',
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        CourseTitle(
                          isPlay: false,
                          title: 'Bottom Navigation Bar',
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        CourseTitle(
                          isPlay: false,
                          title: 'Animated Bottom Navigation Bar',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CloseGroupCourse(
                    title: 'Flutter API',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CloseGroupCourse(
                    title: 'Connect to Firebase',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CloseGroupCourse(
                    title: 'Upload to Google Play',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CloseGroupCourse(
                    title: 'Bonus Section',
                  ),
                  SizedBox(
                    height: 16,
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
