import 'package:flutter/material.dart';
import 'package:kabengo/constants/colors.dart';
class HeadingTwo extends StatelessWidget {
  final String headingTwo;
  const HeadingTwo({
    required this.headingTwo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        headingTwo,
        style: TextStyle(
          color: foregroundThemeColor,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}