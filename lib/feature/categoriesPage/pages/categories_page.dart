import 'package:day_29_vazifa/feature/common/recipe_app_bar.dart';
import 'package:day_29_vazifa/feature/common/button_navigation_bar.dart';
import 'package:day_29_vazifa/utils/Colors.dart';
import 'package:day_29_vazifa/utils/Styles.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'http://192.168.190.88:8888/api/v1',
    validateStatus: (status) => true,
  ),
);

Future<List> fetchCategories() async {
  var response = await dio.get('/categories/list');
  if (response.statusCode != 200) {
    throw Exception(response.data);
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
                return SizedBox(
                  width: 158.54.w,
                  height: 171.55.h,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image.network(
                          snapshot.data![index]['image'],
                          width: 158.54.w,
                          height: 144.53.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        snapshot.data![index]['title'],
                        style: AppStyles.gridText,
                      ),
                    ],
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
