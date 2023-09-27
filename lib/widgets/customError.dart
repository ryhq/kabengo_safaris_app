import 'package:flutter/material.dart';
import 'package:kabengo/constants/colors.dart';
class CustomError extends StatelessWidget {
  final String error;
  const CustomError({
    required this.error,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        error,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: foregroundThemeColor,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}