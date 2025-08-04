import 'package:day_29_vazifa/core/utils/colors.dart';
import 'package:day_29_vazifa/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CookingLevelContainer extends StatelessWidget {
  const CookingLevelContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.isSelected,
  });

  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusGeometry.circular(10.r),
          border: BoxBorder.all(
            width: 0.98.r,
            color: isSelected ? AppColors.redPinkMain : AppColors.pinkC9,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: AppColors.brownF9,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                subtitle,
                style: AppStyles.oBText2,
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
