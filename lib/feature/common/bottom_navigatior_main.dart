import 'package:day_29_vazifa/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class bottomNavigatiorMain extends StatelessWidget {
  const bottomNavigatiorMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 34.h),
      child: Container(
        height: 56.h,
        width: 281.w,
        decoration: BoxDecoration(
          color: AppColors.redPinkMain,
          borderRadius: BorderRadius.circular(33.r),
        ),

        child: NavigationBar(
          indicatorColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,

          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset('assets/icons/home.svg'),
              label: 'home',
            ),
            NavigationDestination(
              icon: SvgPicture.asset('assets/icons/community.svg'),
              label: 'home',
            ),
            NavigationDestination(
              icon: SvgPicture.asset('assets/icons/categories.svg'),
              label: 'home',
            ),
            NavigationDestination(
              icon: SvgPicture.asset('assets/icons/profile.svg'),
              label: 'home',
            ),
          ],
        ),
      ),
    );
  }
}
