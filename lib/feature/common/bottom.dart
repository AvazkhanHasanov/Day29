import 'package:day_29_vazifa/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarRow extends StatefulWidget {
  const AppBarRow({
    super.key,
    required this.text,
    required this.activeInt,
    required this.onTap,

  });

  final VoidCallback onTap;
  final String text;
  final bool activeInt;

  @override
  State<AppBarRow> createState() => _AppBarRowState();
}

class _AppBarRowState extends State<AppBarRow> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      borderRadius: BorderRadius.circular(18.r),
      child: Container(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: 9.w,
          vertical: 5.h,
        ),
        alignment: Alignment.center,

        decoration: BoxDecoration(
          color: widget.activeInt ? AppColors.redPinkMain : Colors.transparent,
          borderRadius: BorderRadius.circular(18.r),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: widget.activeInt ? AppColors.oq : AppColors.redPinkMain,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            fontFamily: 'League',
          ),
        ),
      ),
    );
  }
}
