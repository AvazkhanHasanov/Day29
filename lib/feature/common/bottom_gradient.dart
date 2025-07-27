import 'package:day_29_vazifa/utils/Colors.dart';
import 'package:flutter/material.dart';

class bottomGradient extends StatelessWidget {
  const bottomGradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.beige,
            Colors.transparent,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
    );
  }
}
