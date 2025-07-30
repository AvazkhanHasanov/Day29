import 'package:day_29_vazifa/feature/categoriesPage/pages/for_contaner.dart';
import 'package:day_29_vazifa/feature/common/button_navigation_bar.dart';
import 'package:day_29_vazifa/feature/common/recipe_app_bar_with_bottom.dart';
import 'package:day_29_vazifa/utils/Images.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'http://192.168.190.88:8888/api/v1',
    validateStatus: (status) => true,
  ),
);

Future<List> fetchCategories() async {
  var response = await dio.get('/recipes/list?Category=2');
  if (response.statusCode != 200) {
    throw Exception(response.data);
  }
  return response.data;
}

class Breakfast extends StatefulWidget {
  const Breakfast({super.key});

  @override
  State<Breakfast> createState() => _BreakfastState();
}

class _BreakfastState extends State<Breakfast> {
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
            appBar: AppBarWithBottom(
              title: 'aaaaaa',
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
                    image: snapshot.data![index]['photo'],
                    text1: snapshot.data![index]['title'],
                    text2: snapshot.data![index]['description'],
                    star: snapshot.data![index]['rating'],
                    minute: snapshot.data![index]['timeRequired'],
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
