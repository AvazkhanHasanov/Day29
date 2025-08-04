import 'package:day_29_vazifa/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../managers/allergic_view_model.dart';

class allergic_page extends StatelessWidget {
  const allergic_page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AllergicViewModel(),
      builder: (context, child) {
        return SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '¿You have any allergic?',
                style: AppStyles.oBText1,
              ),
              Text(
                'Lorem ipsum dolor sit amet consectetur. Leo ornare ullamcorper viverra ultrices in.',
                style: AppStyles.oBText2,
              ),
              Consumer<AllergicViewModel>(
                builder: (context, vm, child) {
                  return switch (vm.isLoading) {
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
