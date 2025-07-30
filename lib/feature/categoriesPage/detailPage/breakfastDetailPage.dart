import 'package:day_29_vazifa/feature/categoriesPage/detailPage/image_for_detail_page.dart';
import 'package:day_29_vazifa/feature/categoriesPage/detailPage/richtext_for_detail_page.dart';
import 'package:day_29_vazifa/feature/common/button_navigation_bar.dart';
import 'package:day_29_vazifa/feature/common/recipe_app_bar.dart';
import 'package:day_29_vazifa/utils/Colors.dart';
import 'package:day_29_vazifa/utils/Icons.dart';
import 'package:day_29_vazifa/utils/Images.dart';
import 'package:day_29_vazifa/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BreakfastDetailPage extends StatelessWidget {
  const BreakfastDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.beige,
      appBar: RecipeAppBar(text: 'Breakfast'),
      body: Padding(
        padding: EdgeInsets.only(left: 36.w,right: 36.w,bottom: 50.h,top:10.h, ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageForDetailPage(),
              Row(
                spacing: 9,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(31.5),
                    child: Image.asset(
                      AppImage.account,
                      width: 61.w,
                      height: 63.h,
                    ),
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '@Josh-ryan',
                        style: AppStyles.subtextRedPink,
                      ),
                      Text(
                        'Josh Ryan-chef',
                        style: AppStyles.paragraph,
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 109.w,
          
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusGeometry.circular(21),
                      color: AppColors.iconBg,
                    ),
                    child: Text(
                      'Following',
                      style: AppStyles.subtitle,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints.loose(Size(4, 15)),
                    style: IconButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    icon: SvgPicture.asset(AppIcons.threeDots),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Divider(
                height: 1,
                color: AppColors.pinkSubC,
              ),
              Column(
                spacing: 5.h,
                children: [
                  Row(
                    spacing: 7.w,
                    children: [
                      Text(
                        'Detail',
                        style: AppStyles.titlle,
                      ),
                      SizedBox(width: 8.w),
                      SvgPicture.asset(
                        AppIcons.clock,
                        colorFilter: ColorFilter.mode(AppColors.oq, BlendMode.srcIn),
                      ),
                      Text(
                        '45 min',
                        style: AppStyles.subtextOq,
                      ),
                    ],
                  ),
                  Text(
                    """Fluffy pancakes served with silky whipped cream, a classic breakfast indulgence perfect for a leisurely morning treat.""",
                    style: AppStyles.description,
                    maxLines: 2,
                  ),
                ],
              ),
              SizedBox(height: 31.h),
              Text(
                'Ingredients',
                style: AppStyles.titlle,
              ),
              SizedBox(height: 24.h),
              RichTextForDetailPage(
                son: 1,
                ingredient: 'cup all-purpose flour',
              ),
              RichTextForDetailPage(
                son: 2,
                ingredient: 'tablespoons granulated sugar',
              ),
              RichTextForDetailPage(
                son: 1,
                ingredient: 'teaspoon baking powder',
              ),
              RichTextForDetailPage(
                son: 1 / 2,
                ingredient: 'teaspoon baking soda',
              ),
              RichTextForDetailPage(
                son: 1 / 4,
                ingredient: 'teaspoon salt',
              ),
              RichTextForDetailPage(
                son: 1,
                ingredient: 'cup buttermilk (or regular milk)',
              ),
              RichTextForDetailPage(
                son: 1,
                ingredient: 'large egg',
              ),
              RichTextForDetailPage(
                son: 2,
                ingredient: 'tablespoons unsalted butter, melted',
              ),
              RichTextForDetailPage(
                ingredient: 'Additional butter or oil for cooking',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ButtonNavigationBar(),
    );
  }
}
