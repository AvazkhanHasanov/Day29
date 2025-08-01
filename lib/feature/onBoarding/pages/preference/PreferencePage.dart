import 'package:day_29_vazifa/core/utils/Colors.dart';
import 'package:day_29_vazifa/core/utils/Styles.dart';
import 'package:day_29_vazifa/feature/onBoarding/managers/cuisines_view_model.dart';
import 'package:day_29_vazifa/feature/onBoarding/widgets/preference_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class PreferencePage extends StatelessWidget {
  const PreferencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CuisinesViewModel(),
      builder: (context, child) => Scaffold(
        backgroundColor: AppColors.beige,
        extendBodyBehindAppBar: true,
        appBar: PreferenceAppBar(),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Select your cuisines preferences',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.brownF9,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                'Please select your cuisines preferences for a better recommendations or you can skip it.',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: AppColors.brownF9,
                ),
              ),
              Consumer<CuisinesViewModel>(
                builder: (context, vm, child){
                 return switch(vm.isCategoriesLoading){
                    true =>Center(child: CircularProgressIndicator(),),
                 false=> Expanded(
                   child: GridView.builder(
                     itemCount: vm.categories.length,
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       mainAxisExtent: 129.h,
                       mainAxisSpacing: 10.h,
                       crossAxisSpacing: 10.w,
                       crossAxisCount: 3,
                     ),
                     itemBuilder: (context, index) {
                       return Column(
                         children: [
                           ClipRRect(
                             borderRadius: BorderRadiusGeometry.circular(12.r),
                             child: Image.network(
                               vm.categories[index]['image'],width: 98.w,height: 98.h,fit: BoxFit.cover,
                             ),
                           ),
                           Text(
                             vm.categories[index]['title'],
                             style: AppStyles.subtextRedPink,
                           ),
                         ],
                       );
                     },
                   ),
                 )
                  };
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
