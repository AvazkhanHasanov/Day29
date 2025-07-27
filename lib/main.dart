import 'package:day_29_vazifa/feature/categoriesPage/pages/categoriesBreakfastPage.dart';
import 'package:day_29_vazifa/feature/categoriesPage/pages/categories_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(Day29App());
}

class Day29App extends StatelessWidget {
  const Day29App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(

            debugShowCheckedModeBanner: false,
            home: Breakfast()
        );
      },
    );
  }
}
