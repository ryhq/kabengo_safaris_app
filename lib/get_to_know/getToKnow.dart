import 'package:flutter/material.dart';
import 'package:kabengo/constants/images.dart';
import 'package:kabengo/constants/text.dart';
import 'package:kabengo/home/widgets/popularSafari.dart';
import 'package:kabengo/widgets/headingOne.dart';
import 'package:kabengo/widgets/headingTwo.dart';
import 'package:kabengo/widgets/paragraph.dart';

class GetToKnow extends StatelessWidget {
  const GetToKnow({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        HeadingOne(headingOne: getHeading1),
        HeadingTwo(headingTwo: getHeading2),
        Paragraph(paragraph: getParagraph1),
        Container(
          height: 210,
          child: ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              PopularSafari(title: park1, locations: '', imageLocation: AssetImage(popular7), buttonTitle: "Read More!"),
              PopularSafari(title: park2, locations: '', imageLocation: AssetImage(popular11), buttonTitle: "Read More!"),
              PopularSafari(title: park3, locations: '', imageLocation: AssetImage(popular12), buttonTitle: "Read More!"),
              PopularSafari(title: park4, locations: '', imageLocation: AssetImage(popular10), buttonTitle: "Read More!"),
              PopularSafari(title: park5, locations: '', imageLocation: AssetImage(popular8), buttonTitle: "Read More!"),
              PopularSafari(title: park6, locations: '', imageLocation: AssetImage(popular9), buttonTitle: "Read More!"),
            ],
          ),
        ),
        HeadingTwo(headingTwo: getHeading3),
        Paragraph(paragraph: getParagraph2),
        Container(
          height: 210,
          child: ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              PopularSafari(title: reserve1, locations: '', imageLocation: AssetImage(get01), buttonTitle: "Read More!"),
              PopularSafari(title: reserve2, locations: '', imageLocation: AssetImage(get02), buttonTitle: "Read More!"),
            ],
          ),
        ),
      ],
    );
  }
}