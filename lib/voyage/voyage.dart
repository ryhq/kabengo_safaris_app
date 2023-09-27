import 'package:flutter/material.dart';
import 'package:kabengo/constants/images.dart';
import 'package:kabengo/constants/text.dart';
import 'package:kabengo/home/widgets/popularSafari.dart';
import 'package:kabengo/voyage/create_my_own/create_my_own.dart';
import 'package:kabengo/widgets/button.dart';
import 'package:kabengo/widgets/headingOne.dart';
import 'package:kabengo/widgets/headingTwo.dart';
import 'package:kabengo/widgets/paragraph.dart';
class Voyage extends StatelessWidget {
  const Voyage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        HeadingOne(headingOne: voyageHeading1),
        Paragraph(paragraph: voyageParagraph1),
        Button(buttonLabel: "Create My Reservation", toward: CreateReservation(),),
        HeadingTwo(headingTwo: voyageHeading2),
        Paragraph(paragraph: voyageParagraph2),
        Container(
          height: 210,
          child: ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              PopularSafari(title: popularH1, locations: popularH1Locations, imageLocation: AssetImage(popular1), buttonTitle: "View"),
              PopularSafari(title: popularH2, locations: popularH2Locations, imageLocation: AssetImage(popular2), buttonTitle: "View"),
              PopularSafari(title: popularH3, locations: popularH3Locations, imageLocation: AssetImage(popular3), buttonTitle: "View"),
              PopularSafari(title: popularH4, locations: popularH4Locations, imageLocation: AssetImage(popular4), buttonTitle: "View"),
              PopularSafari(title: popularH5, locations: popularH5Locations, imageLocation: AssetImage(popular5), buttonTitle: "View"),
              PopularSafari(title: popularH6, locations: popularH6Locations, imageLocation: AssetImage(popular6), buttonTitle: "View"),
            ],
          ),
        ),
        HeadingTwo(headingTwo: voyageHeading3),
        Paragraph(paragraph: voyageParagraph3),
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