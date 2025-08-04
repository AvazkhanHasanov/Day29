import 'package:day_29_vazifa/core/utils/styles.dart';
import 'package:day_29_vazifa/feature/categoriesPage/pages/categories_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.id,required this.image, required this.title});

  final int id;
  final String title, image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoriesDetailPage(
              categoryId: id,
              title: title,
            ),
          ),
        );
      },
      child: SizedBox(
        width: 158.54.w,
        height: 171.55.h,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.network(
                image,
                width: 158.54.w,
                height: 144.53.h,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              title,
              style: AppStyles.gridText,
            ),
          ],
        ),
      ),
    );
  }
}
