import 'package:flutter/material.dart';
import 'package:kabengo/constants/images.dart';
import 'package:kabengo/constants/text.dart';
import 'package:kabengo/widgets/customScrollBar.dart';
import 'package:kabengo/widgets/headingOne.dart';
import 'package:kabengo/widgets/headingTwo.dart';
import 'package:kabengo/widgets/paragraph.dart';

import 'widgets/popularSafari.dart';
class HomeContents extends StatelessWidget {
  const HomeContents({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollControllerOne = ScrollController();
    ScrollController _scrollControllerTwo = ScrollController();
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        HeadingOne(headingOne: homeHeading1),
        Paragraph(paragraph: homeParagraph1),
        HeadingTwo(headingTwo: homeHeading2),
        Paragraph(paragraph: homeParagraph2),
        Container(
          height: 210,
          child: CustomScrollBar(
            scrollController: _scrollControllerOne,
            child: ListView(
              physics: BouncingScrollPhysics(),
              controller: _scrollControllerOne,
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
        ),
        HeadingTwo(headingTwo: homeHeading3),
        Paragraph(paragraph: homeParagraph3),
        Paragraph(paragraph: homeParagraph4),
        Container(
          height: 210,
          child: CustomScrollBar(
            scrollController: _scrollControllerTwo,
            child: ListView(
              physics: BouncingScrollPhysics(),
              controller: _scrollControllerTwo,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                PopularSafari(title: popularPark1, locations: "", imageLocation: AssetImage(popular7), buttonTitle: "More!"),
                PopularSafari(title: popularPark2, locations: "", imageLocation: AssetImage(popular8), buttonTitle: "More!"),
                PopularSafari(title: popularPark3, locations: "", imageLocation: AssetImage(popular9), buttonTitle: "More!"),
                PopularSafari(title: popularPark4, locations: "", imageLocation: AssetImage(popular10), buttonTitle: "More!"),
                PopularSafari(title: popularPark5, locations: "", imageLocation: AssetImage(popular11), buttonTitle: "More!"),
                PopularSafari(title: popularPark6, locations: "", imageLocation: AssetImage(popular12), buttonTitle: "More!"),
              ],
            ),
          ),
        )
      ],
    );
  }
}
