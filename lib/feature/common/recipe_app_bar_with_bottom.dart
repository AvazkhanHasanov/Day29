import 'package:day_29_vazifa/feature/common/bottom.dart';
import 'package:day_29_vazifa/utils/Colors.dart';
import 'package:day_29_vazifa/utils/Icons.dart';
import 'package:day_29_vazifa/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWithBottom extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWithBottom({super.key, required this.title});
final String title;
  @override
  Size get preferredSize => Size(double.infinity, 133.h);

  @override
  State<AppBarWithBottom> createState() => _AppBarWithBottomState();
}

int selectedIndex = 0;
List<String> tanlov = [
  'Breakfast',
  'Lunch',
  'Dinner',
  'Vegin',
  'Dessert',
  'Drinks',
  'Sea Food',
];

class _AppBarWithBottomState extends State<AppBarWithBottom> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.Bg,
      leading: IconButton(
        onPressed: () {},
        constraints: BoxConstraints.loose(Size(30, 14)),
        style: IconButton.styleFrom(
          fixedSize: Size(30, 14),
          padding: EdgeInsets.zero,
        ),
        icon: SvgPicture.asset(
          AppIcons.backArrow,
          width: 30.w,
          height: 14.h,
        ),
      ),
      centerTitle: true,
      title: Text(widget.title, style: AppStyles.appBarText),
      actions: [
        IconButton(
          onPressed: () {},
          constraints: BoxConstraints.loose(Size(28.w, 28.h)),
          style: IconButton.styleFrom(
            backgroundColor: AppColors.iconBg,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            fixedSize: Size(28.w, 28.h),
            padding: EdgeInsets.zero,
          ),
          icon: SvgPicture.asset(AppIcons.notification),
        ),
        SizedBox(width: 5.w),
        IconButton(
          onPressed: () {},
          constraints: BoxConstraints.loose(Size(28.w, 28.h)),
          style: IconButton.styleFrom(
            backgroundColor: AppColors.iconBg,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: EdgeInsets.zero,
            fixedSize: Size(28.w, 28.h),
          ),
          icon: SvgPicture.asset(AppIcons.search),
        ),
        Padding(padding: EdgeInsets.only(right: 20.w)),
      ],
      bottom: PreferredSize(
        preferredSize: Size(405.w, 39.h),
        child: Padding(
          padding: EdgeInsetsGeometry.only(bottom: 7),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 19,
              children: [
                ...List.generate(
                  tanlov.length,
                  (index) {
                    return AppBarRow(
                      text: tanlov[index],
                      activeInt: selectedIndex == index,
                      onTap: () {
                        selectedIndex = index;
                        setState(() {});
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
