import 'package:day_29_vazifa/core/utils/Colors.dart';
import 'package:day_29_vazifa/core/utils/Icons.dart';
import 'package:day_29_vazifa/feature/categoriesPage/widgets/recipe_item_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ForContainer extends StatefulWidget {
  const ForContainer({
    super.key, required this.recipe,
  });
  final Map<String, dynamic> recipe;

  @override
  State<ForContainer> createState() => _ForContainerState();
}

bool isSelected = false;

class _ForContainerState extends State<ForContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          height: 226.h,
          width: 158.w,
          decoration: BoxDecoration(
            color: AppColors.brownF9,
            borderRadius: BorderRadius.circular(14.r),
            border: BoxBorder.all(color: AppColors.pinkSubC, width: 1.w),
          ),
          child: RecipeItemButton(   title: widget.recipe['title'],
            description: widget.recipe['description'],
            rating: widget.recipe['rating'],
            time: widget.recipe['timeRequired'], ),
        ),
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(14),
          child: Image.network(
            widget.recipe['photo'],
            width: 169.w,
            height: 153.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 7.w,
          top: 8.h,
          child: IconButton(
            constraints: BoxConstraints.loose(Size(28, 28)),
            onPressed: () {
              isSelected = !isSelected;
              setState(() {});
            },
            style: IconButton.styleFrom(
              backgroundColor: isSelected
                  ? AppColors.redPinkMain
                  : AppColors.pinkC9,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            icon: SvgPicture.asset(
              AppIcons.heart,
              colorFilter: ColorFilter.mode(
                isSelected ? AppColors.oq : AppColors.pinkSubC,
                BlendMode.modulate,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
