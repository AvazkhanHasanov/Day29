import 'package:day_29_vazifa/feature/categoriesPage/detailPage/image_for_detail_page.dart';
import 'package:day_29_vazifa/feature/categoriesPage/detailPage/richtext_for_detail_page.dart';
import 'package:day_29_vazifa/feature/common/recipe_app_bar.dart';
import 'package:day_29_vazifa/utils/Colors.dart';
import 'package:day_29_vazifa/utils/Icons.dart';
import 'package:day_29_vazifa/utils/Images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BreakfastDetailPage extends StatelessWidget {
  const BreakfastDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RecipeAppBar(text: 'Breakfast'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.w),
        child: Column(
          children: [
            ImageForDetailPage(),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(31.5),
                  child: Image.asset(
                    AppImage.account,
                    width: 61.w,
                    height: 63.h,
                  ),
                ),
                Column(
                  children: [Text('@Josh-ryan'), Text('Josh Ryan-chef')],
                ),
                Container(
                  width: 109.w,
                  height: 21.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusGeometry.circular(21),
                    color: AppColors.iconBg,
                  ),
                  child: Text('Folllowing'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppIcons.threeDots),
                ),
              ],
            ),
            Divider(
              height: 1,
              color: AppColors.pinkSubC,
            ),
            Row(
              children: [
                Text('Detail'),
                SvgPicture.asset(AppIcons.clock),
                Text('45 min'),
              ],
            ),
            Text(
              """Fluffy pancakes served with silky whipped cream, a classic breakfast indulgence perfect for a leisurely morning treat.""",
              maxLines: 2,
            ),
            Text('Ingredients'),
            RichtextForDetailPage(),
          ],
        ),
      ),
    );
  }
}
