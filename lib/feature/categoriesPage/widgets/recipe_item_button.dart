import 'package:day_29_vazifa/core/utils/icons.dart';
import 'package:day_29_vazifa/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RecipeItemButton extends StatelessWidget {
  const RecipeItemButton({
    super.key,
    required this.rating,
    required this.time,
    required this.title,
    required this.description,
  });

  final num rating, time;
  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.miniText1,
            maxLines: 1,
            textAlign: TextAlign.start,
          ),
          Text(
            description,
            style: AppStyles.miniText2,
            maxLines: 2,
            textAlign: TextAlign.start,
          ),
          Row(
            spacing: 5,
            children: [
              Text('$rating', style: AppStyles.subtextPink),
              SvgPicture.asset(AppIcons.star),
              Spacer(),
              SvgPicture.asset(AppIcons.clock),
              Text(
                '${time}min',
                style: AppStyles.subtextPink,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
