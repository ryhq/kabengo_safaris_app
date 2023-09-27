import 'package:flutter/material.dart';
import 'package:kabengo/constants/colors.dart';
import 'package:kabengo/viewer/itemViewer.dart';
import 'package:kabengo/widgets/button.dart';

class PopularSafari extends StatelessWidget {
  final String title;
  final String locations;
  final AssetImage imageLocation;
  final String buttonTitle;
  const PopularSafari({
    super.key,
    required this.title,
    required this.locations,
    required this.imageLocation,
    required this.buttonTitle
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 21,
        borderRadius: BorderRadius.circular(21),
        child: Container(
          height: 210,
          width: 400,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  locations,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: backgroundThemeColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
              ),
              Button(
                buttonLabel: buttonTitle, 
                toward: ItemViewer(
                  title: title, 
                  imageLocation: imageLocation
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}