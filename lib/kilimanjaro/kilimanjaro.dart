import 'package:flutter/material.dart';
import 'package:kabengo/constants/images.dart';
import 'package:kabengo/constants/text.dart';
import 'package:kabengo/home/widgets/popularSafari.dart';
import 'package:kabengo/widgets/headingOne.dart';
import 'package:kabengo/widgets/headingTwo.dart';
import 'package:kabengo/widgets/paragraph.dart';
class Kilimanjaro extends StatelessWidget {
  const Kilimanjaro({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        HeadingOne(headingOne: kilimanjaroHeading1),
        Paragraph(paragraph: kilimanjaroParagraph1),
        Paragraph(paragraph: kilimanjaroParagraph2),
        HeadingTwo(headingTwo: kilimanjaroHeading2),
        Paragraph(paragraph: kilimanjaroParagraph3),
        Container(
          height: 210,
          child: ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              PopularSafari(title: popularH7, locations: popularH7Route, imageLocation: AssetImage(popular7), buttonTitle: "View"),
              PopularSafari(title: popularH8, locations: popularH8Route, imageLocation: AssetImage(popular8), buttonTitle: "View"),
              PopularSafari(title: popularH9, locations: popularH9Route, imageLocation: AssetImage(popular9), buttonTitle: "View"),
              PopularSafari(title: popularH10, locations: popularH10Route, imageLocation: AssetImage(popular10), buttonTitle: "View"),
            ],
          ),
        )
      ],
    );
  }
}