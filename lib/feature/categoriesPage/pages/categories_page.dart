import 'package:day_29_vazifa/feature/common/recipe_app_bar.dart';
import 'package:day_29_vazifa/feature/common/button_navigation_bar.dart';
import 'package:day_29_vazifa/utils/Colors.dart';
import 'package:day_29_vazifa/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({
    super.key,
  });

  final List<Map> forGrid = [
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
    {
      'rasm': 'assets/images/Categories/drinks.png',
      'text': 'Drinks',
    },
    {
      'rasm': 'assets/images/Categories/drinks.png',
      'text': 'Drinks',
    },
    {
      'rasm': 'assets/images/Categories/drinks.png',
      'text': 'Drinks',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.Bg,
      appBar: RecipeAppBar(text: "Categories"),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
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
      bottomNavigationBar: ButtonNavigationBar(),
    );
  }
}
