import 'package:course/theme.dart';
import 'package:flutter/material.dart';

class MyClass extends StatelessWidget {
  final String imageUrl;
  final String firstName;
  final String secondName;
  final String imageUrlMentor;
  final String nameMentor;
  final bool isHalf;

  MyClass({
    this.imageUrl,
    this.firstName,
    this.secondName,
    this.imageUrlMentor,
    this.nameMentor,
    this.isHalf,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageUrl,
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
                '$firstName\n$secondName',
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
                      imageUrlMentor,
                      width: 16,
                      height: 16,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    nameMentor,
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
            isHalf ? 'assets/graph2.png' : 'assets/graph1.png',
            width: 51,
            height: 51,
          ),
        ],
      ),
    );
  }
}
