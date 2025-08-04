import 'package:day_29_vazifa/feature/authentication/login_page/Pages/Login.dart';
import 'package:day_29_vazifa/feature/categoriesPage/pages/categories_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'feature/on_boarding/pages/preference/on_boarding_v2.dart';

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
          home:
          OnBoardingV2(),
            // PreferencePage(),
          // LoginPage(),
          // BreakfastDetailPage(),
          // Breakfast(),
          // CategoriesPage(),
        );
      },
    );
  }
}
