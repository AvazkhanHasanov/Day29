import 'package:day_29_vazifa/features/common/app_bar/bottom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../categories_page/managers/categories_view_model.dart';

class RecipeAppBarBottom extends StatelessWidget
    implements PreferredSizeWidget {
  const RecipeAppBarBottom({super.key, required this.selectedIndex});

  @override
  Size get preferredSize => Size(double.infinity, 25.h);

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CategoriesViewModel(),
      builder: (context, child) => Consumer<CategoriesViewModel>(
        builder: (context, vm, child) => switch (vm.isLoading) {
          true => Center(
            child: CircularProgressIndicator(),
          ),
          false => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 39.w, vertical: 7.h),
              child: Row(
                spacing: 19.w,
                children: List.generate(
                  vm.categories.length,
                  (index) => BottomItem(
                    id: vm.categories[index]['id'],
                    title: vm.categories[index]['title'],
                    isSelected: vm.categories[index]['id'] == selectedIndex,
                  ),
                ),
              ),
            ),
          ),
        },
      ),
    );
  }
}
