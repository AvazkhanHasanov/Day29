import 'package:day_29_vazifa/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';
import '../../managers/cuisines_view_model.dart';

class PreferencesPage extends StatelessWidget {
  const PreferencesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CuisinesViewModel(),
      builder: (context, child) {
        return SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Select your cuisines preferences',
                style: AppStyles.oBText1,
              ),
              Text(
                'Please select your cuisines preferences for a better recommendations or you can skip it.',
                style: AppStyles.oBText2,
              ),
              Consumer<CuisinesViewModel>(
                builder: (context, vm, child) {
                  return switch (vm.isCategoriesLoading) {
                    true => Center(
                      child: CircularProgressIndicator(),
                    ),
                    false => Expanded(
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
                                borderRadius: BorderRadiusGeometry.circular(
                                  12.r,
                                ),
                                child: Image.network(
                                  vm.categories[index]['image'],
                                  width: 98.w,
                                  height: 98.h,
                                  fit: BoxFit.cover,
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
                    ),
                  };
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
