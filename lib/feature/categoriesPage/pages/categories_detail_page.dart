
import 'package:day_29_vazifa/core/client.dart';
import 'package:day_29_vazifa/core/utils/colors.dart';
import 'package:day_29_vazifa/feature/categoriesPage/managers/categories_view_model.dart';
import 'package:day_29_vazifa/feature/categoriesPage/pages/for_contaner.dart';
import 'package:day_29_vazifa/feature/common/app_bar/RecipeAppBarMain.dart';
import 'package:day_29_vazifa/feature/common/button_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../common/app_bar/recipe_app_bar_bottom.dart';



class CategoriesDetailPage extends StatelessWidget {
  const CategoriesDetailPage({
    super.key,
    required this.categoryId,
    required this.title,
  });

  final int categoryId;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context) => CategoriesViewModel() ,
      builder: (context, child) => Scaffold(
        backgroundColor: AppColors.beige,
        extendBody: true,
        appBar: AppBarWithBottomMain(
          title: title,
          toolBarHeight: 75.h,
          bottom: RecipeAppBarBottom(selectedIndex: categoryId),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 19),
          child: Consumer<CategoriesViewModel>(
            builder: (context, vm, child) =>GridView.builder(
              itemCount: vm.categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 30,
              ),
              itemBuilder: (context, index) {
                return Center(
                  child: ForContainer(
                    recipe: vm.categories[index],
                  ),
                );
              },
            ),
          ),
        ),
        bottomNavigationBar: ButtonNavigationBar(),
      ),
    );
  }
}
