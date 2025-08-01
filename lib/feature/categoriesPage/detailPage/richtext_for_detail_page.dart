import 'package:day_29_vazifa/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class RichTextForDetailPage extends StatelessWidget {
  const RichTextForDetailPage({
    super.key,
    this.son,
    required this.ingredient,
  });

  final num? son;
  final String ingredient;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '• ${son != null ? '$son ' : ""}',
        style: AppStyles.subtextRedPink,
        children: [
          TextSpan(text: ingredient, style: AppStyles.subtextOq),
        ],
      ),
    );
  }
}
