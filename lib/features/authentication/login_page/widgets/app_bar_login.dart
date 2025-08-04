import 'package:day_29_vazifa/core/utils/colors.dart';
import 'package:flutter/material.dart';

class AppBarLogin extends StatelessWidget implements PreferredSizeWidget {
  const AppBarLogin({
    super.key, required this.title,
  });
 final String title;
  @override
  Size get preferredSize => Size(double.infinity, 56);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.beige,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
          fontFamily: 'Poppins',
          color: AppColors.redPinkMain,
        ),
      ),
      centerTitle: true,
    );
  }


}
