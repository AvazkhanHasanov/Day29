import 'package:day_29_vazifa/utils/Colors.dart';
import 'package:day_29_vazifa/utils/Icons.dart';
import 'package:day_29_vazifa/utils/Images.dart';
import 'package:day_29_vazifa/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ForContainer extends StatefulWidget {
  const ForContainer({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.star,
    required this.minute,
  });

  final String image, text1, text2;
  final int star, minute;

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
            color: AppColors.whiteBeige,
            borderRadius: BorderRadius.circular(14.r),
            border: BoxBorder.all(color: AppColors.pinkSubC, width: 1.w),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.text1,
                  style: AppStyles.miniText1,
                  maxLines: 1,
                  textAlign: TextAlign.start,
                ),
                Text(
                  widget.text2,
                  style: AppStyles.miniText2,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                ),
                Row(
                  spacing: 5,
                  children: [
                    Text('${widget.star}', style: AppStyles.subtextPink),
                    SvgPicture.asset(AppIcons.star),
                    Spacer(),
                    SvgPicture.asset(AppIcons.clock),
                    Text(
                      '${widget.minute}min',
                      style: AppStyles.subtextPink,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(14),
          child: Image.asset(
            widget.image,
            width: 169.w,
            height: 153.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right:  7.w,
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
                  : AppColors.iconBg,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap
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
