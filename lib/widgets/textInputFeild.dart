import 'package:flutter/material.dart';
import 'package:kabengo/constants/colors.dart';

class TextInputField extends StatelessWidget {
  final String? placeholder;
  final TextInputType? keyboardType;
  final IconData prefixIcon;
  const TextInputField({
    super.key, 
    this.placeholder, 
    required this.prefixIcon, 
    this.keyboardType
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        cursorColor: foregroundThemeColor,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: foregroundThemeColor),
            borderRadius: BorderRadius.circular(21)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: foregroundThemeColor),
            borderRadius: BorderRadius.circular(21),
          ),
          hintText: placeholder,
          contentPadding: const EdgeInsets.only(left: 600.0),
          border: const OutlineInputBorder(),
          prefixIcon: Container(
            margin: const EdgeInsets.only(right: 14),
            height: 54,
            width: 60,
            decoration: BoxDecoration(
              color: foregroundThemeColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(21),
                topLeft: Radius.circular(21)),
            ),
            child: Icon(
              prefixIcon,
              color: backgroundThemeColor,
            ),
          )
        ),
      ),
    );
  }
}
