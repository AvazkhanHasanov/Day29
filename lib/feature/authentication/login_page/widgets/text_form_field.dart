import 'package:day_29_vazifa/core/utils/colors.dart';
import 'package:day_29_vazifa/core/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipeTextFormField extends StatefulWidget {
  const RecipeTextFormField({
    super.key,
    required this.label,
    required this.hintText,
    required this.validator,
    this.isPassword = false,
    required this.controller,
  });

  final String label;
  final String hintText;
  final String? Function(String?) validator;
  final bool isPassword;
  final TextEditingController controller;

  @override
  State<RecipeTextFormField> createState() => _RecipeTextFormFieldState();
}

bool isSelected = false;

class _RecipeTextFormFieldState extends State<RecipeTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(9.0.r),
          child: Text(
            textAlign: TextAlign.start,
            widget.label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              color: AppColors.brownF9,
            ),
          ),
        ),
        SizedBox(
          width: 357.w,

          child: TextFormField(
            controller: widget.controller,
            validator: widget.validator,
            onTap: () {},
            obscureText: isSelected ? true : false,
            obscuringCharacter: '●',
            decoration: InputDecoration(
              suffixIcon: widget.isPassword
                  ? IconButton(
                      onPressed: () {
                        isSelected = !isSelected;
                        setState(() {});
                      },
                      icon: SvgPicture.asset(AppIcons.password),
                    )
                  : null,
              contentPadding: EdgeInsets.symmetric(horizontal: 36.w),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: AppColors.pinkC9,
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: AppColors.beige.withAlpha((255 * 0.45).toInt()),
              ),
              hintText: widget.hintText,
            ),
          ),
        ),
      ],
    );
  }
}
