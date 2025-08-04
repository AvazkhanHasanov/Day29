import 'package:day_29_vazifa/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cooking_level_container.dart';

class CookingLevelPage extends StatefulWidget {
  const CookingLevelPage({
    super.key,
  });

  @override
  State<CookingLevelPage> createState() => _CookingLevelPageState();
}

List<Map<String, dynamic>> levelList = [{
  'title': 'Novice',
  'subtitle': 'Lorem ipsum dolor sit amet consectetur. Auctor pretium cras id dui pellentesque ornare. Quisque malesuada netus pulvinar diam.',
}, {
  'title': 'Intermediate',
  'subtitle': 'Lorem ipsum dolor sit amet consectetur. Auctor pretium cras id dui pellentesque ornare. Quisque malesuada netus pulvinar diam.',
}, {
  'title': 'Advance',
  'subtitle': 'Lorem ipsum dolor sit amet consectetur. Auctor pretium cras id dui pellentesque ornare. Quisque malesuada netus pulvinar diam.',
}, {
  'title': 'Professional',
  'subtitle': 'Lorem ipsum dolor sit amet consectetur. Auctor pretium cras id dui pellentesque ornare. Quisque malesuada netus pulvinar diam.',
},
];

class _CookingLevelPageState extends State<CookingLevelPage> {
  int selectIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 37.w),
        child: Column(
          spacing: 20.h,
          children: [
            Text(
              '¿What is your cooking level?',
              style: AppStyles.oBText1,
            ),
            Text(
              'Please select you cooking level for a better recommendations.',
              style: AppStyles.oBText2,
            ),
            Column(
              spacing: 32.h,
              children: [
                ...List.generate(levelList.length, (index) {
                  return CookingLevelContainer(title: levelList[index]['title'],
                      subtitle: levelList[index]['subtitle'],
                      onTap: (){
                    selectIndex = index;
                    setState(() {

                    });
                      },
                      isSelected: selectIndex == index);
                },)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
