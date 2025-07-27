import 'package:day_29_vazifa/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static final appBarText = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    fontFamily: 'Poppins',
    color: Color(0xFFFD5D69),
  );
  static final gridText = TextStyle(
    fontSize: 14.61.sp,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins",
    color: AppColors.textColor,
  );
  static final subtext = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.pinkSubC,
    fontFamily: 'Poppins',
  );
  static final miniText2 = TextStyle(
    fontFamily: 'League',
    fontWeight: FontWeight.w300,
    fontSize: 13.sp,
    color: AppColors.color3E,
    height: 1,
  );
  static final miniText1 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
    color: AppColors.color3E,
  );
}
