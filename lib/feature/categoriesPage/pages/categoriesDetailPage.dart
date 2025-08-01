import 'package:day_29_vazifa/core/client.dart';
import 'package:day_29_vazifa/feature/categoriesPage/pages/for_contaner.dart';
import 'package:day_29_vazifa/feature/common/AppBar/RecipeAppBarMain.dart';
import 'package:day_29_vazifa/feature/common/AppBar/recipe_app_bar_bottom.dart';
import 'package:day_29_vazifa/feature/common/button_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<List> fetchCategories({required int categoryId}) async {
  var response = await dio.get('/recipes/list?Category=$categoryId');
  if (response.statusCode != 200) {
    throw Exception(response.data);
  }
  return response.data;
}

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
    return FutureBuilder(
      future: fetchCategories(categoryId: categoryId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Center(child: Text('Error: ${snapshot.error}')),
          );
        } else if (snapshot.hasData) {
          return Scaffold(
            extendBody: true,
            appBar: AppBarWithBottomMain(
              title: title,
              toolBarHeight: 75.h,
              bottom: RecipeAppBarBottom(selectedIndex: categoryId),
            ),
            body: GridView.builder(
              itemCount: snapshot.data!.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 30,
              ),
              itemBuilder: (context, index) {
                return Center(
                  child: ForContainer(
                    recipe: snapshot.data![index],
                  ),
                );
              },
            ),
            bottomNavigationBar: ButtonNavigationBar(),
          );
        } else {
          return Scaffold(
            body: Center(
              child: Text('Error !!!${snapshot.error} '),
            ),
          );
        }
      },
    );
  }
}
