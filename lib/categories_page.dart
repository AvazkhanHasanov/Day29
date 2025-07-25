import 'package:day_29_vazifa/utils/Colors.dart';
import 'package:day_29_vazifa/utils/Icons.dart';
import 'package:day_29_vazifa/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({
    super.key,
  });

  List<Map> forGrid = [
    {
      'rasm': 'assets/images/Categories/lunch.png',
      'text': 'Lunch',
    },
    {
      'rasm': 'assets/images/Categories/breakfast.png',
      'text': 'Breakfast',
    },
    {
      'rasm': 'assets/images/Categories/dinner.png',
      'text': 'Dinner',
    },
    {
      'rasm': 'assets/images/Categories/vegan.png',
      'text': 'Vegan',
    },
    {
      'rasm': 'assets/images/Categories/dessert.png',
      'text': 'Dessart',
    },
    {
      'rasm': 'assets/images/Categories/drinks.png',
      'text': 'Drinks',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Bg,
      appBar: AppBar(
        backgroundColor: AppColors.Bg,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppIcons.backArrow,
            width: 30.w,
            height: 14.h,
          ),
        ),
        centerTitle: true,
        title: Text('Categories', style: AppStyles.appBarText),
        actions: [
          SizedBox(
            width: 28.w,
            height: 28.h,
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: AppColors.iconBg,
                iconSize: 28,
                padding: EdgeInsets.zero,
              ),
              icon: SvgPicture.asset(AppIcons.notification),
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          SizedBox(
            height: 28.h,
            width: 28.w,
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: AppColors.iconBg,
                padding: EdgeInsets.zero,
              ),
              icon: SvgPicture.asset(AppIcons.search),
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 38.w,
          mainAxisSpacing: 8.h,
        ),
        itemCount: forGrid.length,

        itemBuilder: (context, index) {
          return SizedBox(
            width: 158.54.w,
            height: 171.55.h,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.asset(
                    forGrid[index]['rasm'],
                    width: 158.54.w,
                    height: 144.53.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(forGrid[index]['text'], style: AppStyles.gridText),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 74, vertical: 34),
        child: Container(
          height: 56.h,

          decoration: BoxDecoration(
            color: AppColors.bottom,
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
      ),
    );
  }
}
