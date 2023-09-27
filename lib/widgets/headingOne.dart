import 'package:flutter/material.dart';
import 'package:kabengo/constants/colors.dart';
class HeadingOne extends StatelessWidget {
  final String headingOne;
  const HeadingOne({
    required this.headingOne,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        headingOne.toUpperCase(),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: foregroundThemeColor,
          fontSize: 21,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}