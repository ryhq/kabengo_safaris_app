import 'package:flutter/material.dart';
import 'package:kabengo/constants/colors.dart';
class PopUpButton extends StatelessWidget {
  final String buttonLabel;
  const PopUpButton({
    super.key,
    required this.buttonLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 7,
            minimumSize: const Size.fromHeight(35),
            backgroundColor: foregroundThemeColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(21))
        ),
        onPressed: () {
          
        }, 
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            buttonLabel,
            style: TextStyle(
              color: backgroundThemeColor,
              fontSize: 21,
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ),
    );
  }
}
