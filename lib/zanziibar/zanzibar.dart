import 'package:flutter/material.dart';
import 'package:kabengo/constants/text.dart';
import 'package:kabengo/widgets/headingOne.dart';
import 'package:kabengo/widgets/paragraph.dart';
class Zanzibar extends StatelessWidget {
  const Zanzibar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        HeadingOne(headingOne: zanzibarHeading1),
        Paragraph(paragraph: zanzibarParagraph1),
        Paragraph(paragraph: zanzibarParagraph2),
        Paragraph(paragraph: zanzibarParagraph3),
      ],
    );
  }
}