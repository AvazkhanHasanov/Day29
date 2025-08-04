import 'package:day_29_vazifa/core/utils/colors.dart';
import 'package:day_29_vazifa/feature/categoriesPage/managers/categories_view_model.dart';
import 'package:day_29_vazifa/feature/categoriesPage/widgets/categories_Item.dart';
import 'package:day_29_vazifa/feature/common/recipe_app_bar.dart';
import 'package:day_29_vazifa/feature/common/button_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> CategoriesViewModel(),
      child: Consumer<CategoriesViewModel>(
        builder: (context, vm, child) =>Scaffold(
          extendBody: true,
          backgroundColor: AppColors.Bg,
          appBar: RecipeAppBar(text: "Categories"),
          body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
            ),
            itemCount: vm.categories.length,
            itemBuilder: (context, index) {
              return CategoryItem(
                id: vm.categories[index]['id'],
                image: vm.categories[index]['image'],
                title: vm.categories[index]['title'],
              );
            },
          ),
          bottomNavigationBar: ButtonNavigationBar(),
        ),
      ),
    );
  }
}
