import 'package:day_29_vazifa/core/utils/Colors.dart';
import 'package:day_29_vazifa/feature/categoriesPage/widgets/categories_Item.dart';
import 'package:day_29_vazifa/feature/common/recipe_app_bar.dart';
import 'package:day_29_vazifa/feature/common/button_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:day_29_vazifa/core/client.dart';

Future<List> fetchCategories() async {
  var response = await dio.get('/categories/list');
  if (response.statusCode != 200) {
    throw Exception('Failed to load categories: ${response.statusCode}');
  }
  return response.data;
}

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchCategories(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text('Error: ${snapshot.error}'),
            ),
          );
        } else if (snapshot.hasData) {
          return Scaffold(
            extendBody: true,
            backgroundColor: AppColors.Bg,
            appBar: RecipeAppBar(text: "Categories"),
            body: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return CategoryItem(
                  id: snapshot.data![index]['id'],
                  image: snapshot.data![index]['image'],
                  title: snapshot.data![index]['title'],
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
