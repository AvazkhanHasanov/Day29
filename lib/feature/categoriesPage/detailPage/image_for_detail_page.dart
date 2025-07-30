import 'package:day_29_vazifa/utils/Colors.dart';
import 'package:day_29_vazifa/utils/Icons.dart';
import 'package:day_29_vazifa/utils/Images.dart';
import 'package:day_29_vazifa/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageForDetailPage extends StatelessWidget {
  const ImageForDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(10),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            width: 357.w,
            height: 337.h,
            decoration: BoxDecoration(color: AppColors.redPinkMain),
            child: Padding(
              padding: EdgeInsets.only(
                left: 10.w,
                right: 10.w,
                bottom: 16.h,
              ),
              child: Row(
                children: [
                  Text(
                    'Pancake & Cream',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: AppColors.brownF9,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    constraints: BoxConstraints.loose(Size(15.w, 15.h)),
                    padding: EdgeInsets.zero,
                    style: IconButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    icon: SvgPicture.asset(
                      AppIcons.star,
                      colorFilter: ColorFilter.mode(
                        AppColors.brownF9,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    '4',
                    style: AppStyles.subtextOq,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  IconButton(
                    onPressed: () {},
                    constraints: BoxConstraints.tightFor(
                      width: 25.w,
                      height: 25.h,
                    ),
                    style: IconButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.zero,
                      fixedSize: Size(10.w, 10.h),
                    ),
                    icon: SvgPicture.asset(AppIcons.reviews),
                  ),
                  Text(
                    '2.273',
                    style: AppStyles.subtextOq,
                  ),
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Image.asset(
              AppImage.oatmeal,
              width: 357.w,
              height: 281.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 105.h,
            left: 142.w,
            child: Container(
              width: 74.w,
              height: 71.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(35.r),
              ),
              child: IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                alignment: Alignment.center,
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.redPinkMain,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(35),
                  ),
                ),
                icon: SvgPicture.asset(AppIcons.play),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
