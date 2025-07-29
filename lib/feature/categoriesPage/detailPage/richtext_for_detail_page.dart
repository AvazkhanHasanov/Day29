import 'package:flutter/material.dart';

class RichtextForDetailPage extends StatelessWidget {
  const RichtextForDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '• 1',
        children: [TextSpan(text: 'cup all-purpose flour')],
      ),
    );
  }
}
