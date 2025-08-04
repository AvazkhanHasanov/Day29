import 'package:day_29_vazifa/core/utils/colors.dart';
import 'package:day_29_vazifa/core/utils/styles.dart';
import 'package:day_29_vazifa/features/common/bottom_gradient.dart';
import 'package:day_29_vazifa/features/on_boarding/pages/preference/preferences_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../widgets/preference_app_bar.dart';
import 'allergic_page.dart';
import 'cooking_level_page.dart';

class OnBoardingV2 extends StatefulWidget {
  const OnBoardingV2({super.key});

  @override
  State<OnBoardingV2> createState() => _OnBoardingV2State();
}

class _OnBoardingV2State extends State<OnBoardingV2> {
  final controller=PageController();
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beige,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: PreferenceAppBar(),
      body: PageView(
        controller: controller,
        children: [
          CookingLevelPage(),
          PreferencesPage(),
          allergic_page(),
        ],
      ),
      // PageView(children: [PreferencesPage()] ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 126.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            bottomGradient(),
            Padding(
              padding: EdgeInsets.only(bottom: 59.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 162.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusGeometry.circular(30),
                      color: AppColors.pinkC9,
                    ),
                    child: Text(
                      'Skip',
                      style: AppStyles.titlle,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 162.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusGeometry.circular(30),
                      color: AppColors.redPinkMain,
                    ),
                    child: Text(
                      'Continue',
                      style: AppStyles.oBText1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
