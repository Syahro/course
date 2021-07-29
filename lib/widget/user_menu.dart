import 'package:course/pages/akun_karya_page.dart';
import 'package:course/pages/akun_kelas_page.dart';
import 'package:course/theme.dart';
import 'package:flutter/material.dart';

class UserMenu extends StatelessWidget {
  final bool isClass;
  final bool isMadeBy;

  UserMenu({
    this.isClass,
    this.isMadeBy,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 34,
      padding: EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        color: lightGreyColor,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AkunKelasPage(
                    isClass: true,
                    isMadeBy: false,
                  );
                }));
              },
              child: Container(
                height: 28,
                decoration: BoxDecoration(
                  color: isClass ? whiteColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'Kelas Saya',
                    style: boldTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: isClass ? blueColor : greyColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AkunKaryaPage(
                        isClass: false,
                        isMadeBy: true,
                      );
                    },
                  ),
                );
              },
              child: Container(
                height: 28,
                decoration: BoxDecoration(
                  color: isMadeBy ? whiteColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'Karya Saya',
                    style: regularTextStyle.copyWith(
                      fontSize: 14,
                      color: isMadeBy ? blueColor : greyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
