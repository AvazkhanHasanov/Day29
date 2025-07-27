import 'package:day_29_vazifa/feature/common/bottom_gradient.dart';
import 'package:day_29_vazifa/feature/common/bottom_navigatior_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonNavigationBar extends StatelessWidget {
  const ButtonNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 126.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          bottomGradient(),
          bottomNavigatiorMain(),
        ],
      ),
    );
  }
}
