import 'package:flutter/material.dart';
import 'package:kabengo/constants/colors.dart';
class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
    required this.imageLocation,
    required this.title,
  });

  final AssetImage imageLocation;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 21,
        borderRadius: BorderRadius.circular(21),
        child: Container(
          height: 210,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(21),
            image: DecorationImage(
              opacity: 0.7,
              image: imageLocation,
              fit: BoxFit.cover
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: backgroundThemeColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 21
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}