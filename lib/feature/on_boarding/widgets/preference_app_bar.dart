import 'package:day_29_vazifa/core/utils/colors.dart';
import 'package:day_29_vazifa/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreferenceAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PreferenceAppBar({
    super.key,
  });

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 56.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(AppIcons.backArrow),
      ),
      title: Container(
        alignment: Alignment.center,
        width: 230.w,
        height: 12.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusGeometry.circular(100.r),
          color: Color(0xFFD9D9D9),
        ),
        child: Container(
          width: 65.w,
          height: 12.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusGeometry.circular(100.r),
            color: AppColors.redPinkMain,
          ),
        ),
      ),
    );
  }
}
