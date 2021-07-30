import 'package:course/theme.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String iconUrl;
  final String noted;
  final String info;

  InfoWidget({
    this.iconUrl,
    this.noted,
    this.info,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Image.asset(
              iconUrl,
              width: 18,
              height: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              noted,
              style: boldTextStyle.copyWith(
                fontSize: 16,
                color: blackColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          info,
          style: regularTextStyle.copyWith(
            fontSize: 12,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
