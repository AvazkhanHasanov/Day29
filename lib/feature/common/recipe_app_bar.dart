import 'package:day_29_vazifa/core/utils/Colors.dart';
import 'package:day_29_vazifa/core/utils/Icons.dart';
import 'package:day_29_vazifa/core/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RecipeAppBar({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Size get preferredSize => Size(double.infinity, 56);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.Bg,
      leading: 
      IconButton(
        onPressed: () {},
        padding: EdgeInsets.zero,
        constraints: BoxConstraints.tight(Size(30, 14)),
        style: IconButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          fixedSize: Size(30, 14),
          padding: EdgeInsets.zero,
        ),
        icon: SvgPicture.asset(
          AppIcons.backArrow,
        ),
      ),
      centerTitle: true,
      title: Text(text, style: AppStyles.appBarText),
      actions: [
        IconButton(
          onPressed: () {},
          constraints: BoxConstraints.loose(Size(28, 28)),
          style: IconButton.styleFrom(
            backgroundColor: AppColors.pinkC9,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            fixedSize: Size(28, 28),
            padding: EdgeInsets.zero,
          ),
          icon: SvgPicture.asset(AppIcons.notification),
        ),
        SizedBox(width: 5.w,),
        IconButton(
          onPressed: () {},
          constraints: BoxConstraints.loose(Size(28, 28)),
          style: IconButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: AppColors.pinkC9,
            padding: EdgeInsets.zero,
            fixedSize: Size(28, 28),
          ),
          icon: SvgPicture.asset(AppIcons.search),
        ),
        Padding(padding: EdgeInsets.only(right: 20)),
      ],
    );
  }
}
