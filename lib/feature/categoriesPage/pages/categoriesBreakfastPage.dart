import 'package:day_29_vazifa/feature/categoriesPage/pages/for_contaner.dart';
import 'package:day_29_vazifa/feature/common/recipe_app_bar_with_bottom.dart';
import 'package:day_29_vazifa/utils/Colors.dart';
import 'package:day_29_vazifa/utils/Images.dart';
import 'package:flutter/material.dart';

class Breakfast extends StatefulWidget {
  const Breakfast({super.key});

  @override
  State<Breakfast> createState() => _BreakfastState();
}

final List<Map> breakfastList = [
  {
    'Image': AppImage.eggs,
    'text1': 'Eggs Benedict',
    'text2': "Muffin with Canadian bacon",
    'star': 5,
    'minute': 15,
  },
  {
    'Image': AppImage.french,
    'text1': 'French Toast',
    'text2': "Delicious slices of bread",
    'star': 5,
    'minute': 20,
  },
  {
    'Image': AppImage.oatmeal,
    'text1': 'Oatmeal and Nut ',
    'text2': "Wholesome blend for breakfast",
    'star': 4,
    'minute': 35,
  },
  {
    'Image': AppImage.oatmealGranola,
    'text1': 'Oatmeal Granola',
    'text2': "Strawberries and Blueberries",
    'star': 4,
    'minute': 30,
  },
  {
    'Image': AppImage.eggs,
    'text1': 'Eggs Benedict',
    'text2': "Muffin with Canadian bacon",
    'star': 5,
    'minute': 15,
  },
  {
    'Image': AppImage.french,
    'text1': 'French Toast',
    'text2': "Delicious slices of bread",
    'star': 5,
    'minute': 20,
  },
  {
    'Image': AppImage.oatmeal,
    'text1': 'Oatmeal and Nut ',
    'text2': "Wholesome blend for breakfast",
    'star': 4,
    'minute': 35,
  },
  {
    'Image': AppImage.oatmealGranola,
    'text1': 'Oatmeal Granola',
    'text2': "Strawberries and Blueberries",
    'star': 4,
    'minute': 30,
  },
];

class _BreakfastState extends State<Breakfast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithBottom(),
      body: GridView.builder(
        itemCount: breakfastList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30,
        ),
        itemBuilder: (context, index) {
          return Center(
            child: ForContainer(
              image: breakfastList[index]['Image'],
              text1: breakfastList[index]['text1'],
              text2: breakfastList[index]['text2'],
              star: breakfastList[index]['star'],
              minute: breakfastList[index]['minute'],
            ),
          );
        },
      ),
    );
  }
}
