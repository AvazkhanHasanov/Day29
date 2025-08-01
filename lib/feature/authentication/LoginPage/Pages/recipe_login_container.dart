import 'package:day_29_vazifa/core/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeLoginContainer extends StatelessWidget {
  const RecipeLoginContainer({
    super.key, required this.text, required this.onPressed,
  });
final String text;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 207.w,
      height: 45.h,
      child: TextButton(
        onPressed:onPressed ,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: AppColors.pinkC9,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(30),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
            color: AppColors.pinkSubC,
          ),
        ),
      ),
    );
  }
}
