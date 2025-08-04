import 'package:day_29_vazifa/core/utils/colors.dart';
import 'package:day_29_vazifa/core/utils/icons.dart';
import 'package:day_29_vazifa/core/utils/styles.dart';
import 'package:day_29_vazifa/features/common/button/recipe_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppBarWithBottomMain extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWithBottomMain({
    super.key,
    required this.title,
    required this.toolBarHeight,
    this.bottom,
  });

  final String title;
  final double toolBarHeight;
  final PreferredSizeWidget? bottom;

  @override
  Size get preferredSize => Size(
    double.infinity,
    bottom != null
        ? bottom!.preferredSize.height + toolBarHeight
        : toolBarHeight,
  );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.Bg,
      leading: Align(
        alignment: Alignment.centerRight,
        child: RecipeIconButton(
          icon: "assets/icons/back-arrow.svg",
          backgroundColor: Colors.transparent,
          foregroundColor: AppColors.redPinkMain,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      centerTitle: true,
      title: Text(title, style: AppStyles.appBarText),
      actions: [
        RecipeIconButton(icon: AppIcons.notification, onPressed: () {}),
        SizedBox(width: 5.w),
        RecipeIconButton(icon: AppIcons.search, onPressed: () {}),
        Padding(padding: EdgeInsets.only(right: 20.w)),
      ],
      bottom: bottom,
    );
  }
}
